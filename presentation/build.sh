#!/usr/bin/env bash
set -euo pipefail

# Navega para o diretório do script (presentation/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

clean() {
    echo "Removendo artefatos de compilação..."
    rm -f main.aux main.bbl main.blg main.log main.nav main.out \
          main.snm main.toc main.vrb main.synctex.gz
    echo "Limpeza concluída."
}

build() {
    echo "=== Compilando main.tex (Beamer) ==="
    echo "[1/3] pdflatex (primeira passada)..."
    pdflatex -interaction=nonstopmode main.tex

    echo "[2/3] pdflatex (segunda passada)..."
    pdflatex -interaction=nonstopmode main.tex

    echo "[3/3] pdflatex (terceira passada)..."
    pdflatex -interaction=nonstopmode main.tex

    echo "=== Compilação concluída: main.pdf ==="
}

fullbuild() {
    echo "=== Compilação completa (com bibtex) ==="
    echo "[1/4] pdflatex (primeira passada)..."
    pdflatex -interaction=nonstopmode main.tex

    echo "[2/4] bibtex..."
    bibtex main

    echo "[3/4] pdflatex (segunda passada)..."
    pdflatex -interaction=nonstopmode main.tex

    echo "[4/4] pdflatex (terceira passada)..."
    pdflatex -interaction=nonstopmode main.tex

    echo "=== Compilação completa concluída: main.pdf ==="
}

case "${1:-build}" in
    clean)
        clean
        ;;
    build)
        build
        ;;
    fullbuild)
        fullbuild
        ;;
    rebuild)
        clean
        build
        ;;
    *)
        echo "Uso: $0 {build|clean|fullbuild|rebuild}"
        exit 1
        ;;
esac

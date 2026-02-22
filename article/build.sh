#!/usr/bin/env bash
set -euo pipefail

# Navega para o diretório do script (article/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

clean() {
    echo "Removendo artefatos de compilação..."
    rm -f main.aux main.bbl main.blg main.log main.out main.toc main.synctex.gz
    echo "Limpeza concluída."
}

build() {
    echo "=== Compilando main.tex ==="
    echo "[1/4] pdflatex (primeira passada)..."
    pdflatex -interaction=nonstopmode main.tex

    echo "[2/4] bibtex..."
    bibtex main

    echo "[3/4] pdflatex (segunda passada)..."
    pdflatex -interaction=nonstopmode main.tex

    echo "[4/4] pdflatex (terceira passada)..."
    pdflatex -interaction=nonstopmode main.tex

    echo "=== Compilação concluída: main.pdf ==="
}

case "${1:-build}" in
    clean)
        clean
        ;;
    build)
        build
        ;;
    rebuild)
        clean
        build
        ;;
    *)
        echo "Uso: $0 {build|clean|rebuild}"
        exit 1
        ;;
esac

# Trabalho: Sistemas Multi-Agentes (SMA)

## Descrição

Trabalho acadêmico para a disciplina de Sistemas Multi-Agentes na Universidade Federal de Pelotas (UFPel). O artigo analisa criticamente o paper de referência e propõe melhorias para a arquitetura apresentada.

## Paper de Referência

**"LLM-Powered Conversational Multi-Agent Cognitive System for Collaborative Task Solving"**
- Autores: Eryck Silva, Frances A. Santos, Pedro Thompson, Julio C. dos Reis
- Publicação: 19th Workshop-School on Agents, Environments, and Applications (WESAAC 2025)
- Arquivo: [`../source/financeiro.pdf`](../source/financeiro.pdf)

## Formato

O artigo segue o formato SBC (Sociedade Brasileira de Computação):
- 3 a 4 páginas
- Fonte Times 12pt
- Margens: superior 3.5cm, inferior 2.5cm, laterais 3cm
- Papel A4, coluna única

## Estrutura do Artigo

1. **Resumo / Abstract** — Resumo em português e inglês
2. **Introdução** — Contexto, problema e objetivo
3. **Referencial Teórico** — Agentes, SMA, arquiteturas cognitivas, LLMs
4. **Metodologia** — Descrição da arquitetura do paper de referência
5. **Resultados e Discussões** — Análise crítica e melhorias propostas
6. **Conclusões** — Síntese e trabalhos futuros

## Como Compilar

### Pré-requisitos

- Distribuição LaTeX (TeX Live ou MacTeX)
- Pacotes: `texlive-fonts-recommended`, `texlive-latex-extra`

### Compilação

```bash
# Compilar o PDF
./build.sh

# Limpar artefatos de compilação
./build.sh clean

# Limpar e recompilar
./build.sh rebuild
```

O PDF gerado estará em `article/main.pdf`.

## Arquivos

| Arquivo | Descrição |
|---|---|
| `main.tex` | Documento LaTeX principal |
| `sbc-template.sty` | Estilo SBC (não modificar) |
| `sbc.bst` | Estilo bibliográfico SBC |
| `references.bib` | Referências bibliográficas |
| `build.sh` | Script de compilação |

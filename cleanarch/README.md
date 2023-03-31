# cleanarch

A new Flutter project.

## Getting Started

flutter pub run build_runner build --delete-conflicting-outputs

## Commands

Pre--commit
## Entra na pasta git hooks 
cd .git/hooks 

## Cria um atalho
ln -s ../../legale_app/pre-commit .

## Git Flow

Regra para commits:

1. Nomear os commits com prefixo relativo ao trabalho executado: Ex:

FEAT: .. descrição (Nova Feature ou alterações)

FIX: ... descrição (Correções de Bug)

DOCS: .. descrição (Mudanças na documentação)

TEST: .. descrição (Mudanças nos testes)

BUILD: ..descrição (Alterações em dependencias)

REFACTOR: .. descrição (refatorações)

2. Branches: (gitflow e criação de branches)

## BRANCHES

MAIN
   |-- HOT FIX
   |-- DEV
      |-- NEW FEATURE (sempre criar uma new feature para novas aplicações e correções)
      |-- BUG FIX ( para correções de bugs mais longos )



{ pkgs ? import <nixpkgs> {} }:

let
  # Сохраняем путь к папке с проектом (где лежит этот default.nix)
  projectPath = ./.;
in
pkgs.writeShellScriptBin "nixpkgs" ''
  # Путь к скрипту относительно папки проекта
  SCRIPT="${projectPath}/nixpkgs"
  
  # Проверяем, существует ли скрипт
  if [ ! -f "$SCRIPT" ]; then
    echo "Error: nixpkgs.py not found at $SCRIPT" >&2
    echo "Please check your installation" >&2
    exit 1
  fi
  
  # Запускаем скрипт
  exec ${pkgs.python3}/bin/python3 "$SCRIPT" "$@"
''
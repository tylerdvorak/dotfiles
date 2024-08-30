{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    userSettings = {
      "editor.fontSize" = 16;
      "editor.fontLigatures" = true;
      "editor.fontFamily" = Iosevka Term";
      "editor.tabSize" = 2;
      "editor.lineNumbers" = "relative";
      "editor.formatOnSave" = true;
      "editor.formatOnPaste" = true;
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
      "editor.suggestSelection" = "first";
      "emmet.showExpandedAbbreviation" = "never";
      "explorer.confirmDelete" = false;
      "javascript.updateImportsOnFileMove.enabled" = "always";
      "workbench.settings.useSplitJSON" = true;
      "workbench.settings.editor" = "json";
      "vim.leader" = "<space>";
      "vim.easymotion" = true;
      "vim.sneak" = true;
      "vim.incsearch" = true;
      "vim.useSystemClipboard" = true;
      "vim.useCtrlKeys" = true;
      "vim.hlsearch" = true;
      "vim.insertModeKeyBindings" = [
        {
          "before" = [ "j" "k" ];
          "after" = [ "<Esc>" ];
        }
      ];
      "eslint.autoFixOnSave" = true;
      "eslint.validate" = [
        "javascript"
        "javascriptreact"
        {
          "language" = "typescript";
          "autoFix" = true;
        }
        {
          "language" = "typescriptreact";
          "autoFix" = true;
        }
      ];
      "search.showLineNumbers" = true;
      "stylelint.autoFixOnSave" = true;
      "telemetry.enableTelemetry" = false;
      "typescript.updateImportsOnFileMove.enabled" = "always";
      "update.mode" = "none";
      "workbench.colorTheme" = "Default Light+";
      "workbench.iconTheme" = "vscode-icons";
      "workbench.statusBar.feedback.visible" = false;
    };
    extensions = [
      # bbenoist.Nix
      # jdinhlife.gruvbox
      # github.vscode-pull-request-github
      # github.remotehub
      # ms-vscode-remote.remote-ssh 
      # ms-vscode.remote-explorer
      # ms-vscode.remote-repositories
    ];
  };
}

{ config, pkgs, ... }: {
    programs.vscode.extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            name = "theme-karyfoundation-themes";
            publisher = "karyfoundation";
            version = "27.2.3";
            sha256 = "sha256-g5VaXwmFofpsHJo2PR+gPuiggsfKvmlK8cO+j+zPwcM=";
        }
    ];
}
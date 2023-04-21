{ pkgs, ... }: {
  programs.starship = {
    package = pkgs.starship.overrideAttrs (prev: {
      /*
      src = pkgs.fetchFromGitHub {
        owner = "yjpark";
        repo = "starship";
        rev = "d6d70ca0edb34919f0144bed4b25425d9db1651f";
        sha256 = "sha256-DEoUKMGasork6BQViPj4DvGqGmBZncMDNFOu5r+u9wo=";
      };
      cargoSha256 = "";
       */
      patches = (prev.patches or [ ]) ++ [ ../../patches/starship/v1.11.0.patch ];
    });
  };
}

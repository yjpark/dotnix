{ pkgs, ... }: {
  programs.fish.plugins = [
    {
      name = "replay";
      src = pkgs.fetchFromGitHub {
        owner = "jorgebucaran";
        repo = "replay.fish";
        rev = "bd8e5b89ec78313538e747f0292fcaf631e87bd2";
        sha256 = "sha256-bM6+oAd/HXaVgpJMut8bwqO54Le33hwO9qet9paK1kY=";
      };
    }
    {
      name = "z";
      src = pkgs.fetchFromGitHub {
        owner = "jethrokuan";
        repo = "z";
        rev = "85f863f20f24faf675827fb00f3a4e15c7838d76";
        sha256 = "sha256-+FUBM7CodtZrYKqU542fQD+ZDGrd2438trKM0tIESs0=";
      };
    }
    {
      name = "fishmarks";
      src = pkgs.fetchFromGitHub {
        owner = "yjpark";
        repo = "fishmarks";
        rev = "c40c83bfe9394f4c51f95f0fec7a3d801ac670f4";
        sha256 = "sha256-Czis1UrjS60sIq4CG1RHWoyqKqc7d1aaerGD1iFugpE=";
      };
    }
  ];
}

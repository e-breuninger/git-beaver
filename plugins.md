
# Git-Beaver Plugins #

The table below specifies which plugins will be integrated into the docker image:

| GitUrl                   | RepoName      | Tag  | SourcePath    | MainClass                           |
|:-------------------------|:--------------|:-----|---------------|:------------------------------------|
| https://github.com/g-bvr | security      | main | src/main/java | org.jkube.gitbeaver.SecurityPlugin  |
| https://github.com/g-bvr | file-resolver | main | src/main/java | org.jkube.gitbeaver.ResolverPlugin  |
| https://github.com/g-bvr | html-logger   | main | src/main/java | org.jkube.gitbeaver.HtmlLogPlugin   |
| https://github.com/g-bvr | web-server    | main | src/main/java | org.jkube.gitbeaver.WebserverPlugin |
| https://github.com/g-bvr | beaver-gcloud | main | src/main/java | org.jkube.gitbeaver.GcloudPlugin    |

Note: The plugins "git-beaver-base" and "git-beaver-markdown" should not be included into the table,
because they will be loaded by default (in order to become able to parse and process this markdown file).

Explanation of columns:

* GitUrl: the URL prefix of the git repository (not including the repo name)
* RepoName: the name of the repository (the last element of the repo URL, not including the extension ".git")
* SourcePath: the file path of the folder containing the java source files (using "/" as separator, not including leading or trailing "/")
* MainClass: the class name of the main class (using "." as separator, not including the extension ".java")




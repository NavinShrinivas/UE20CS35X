## Lab-1 
Detect the actors and their relationship for UID system and depict it with use case diagram.
[document](./LAB-1/document.pdf)

## Java for Linux 

If you are a terminal nerd like me, IDE is a bigg turnoff. But we still want to automate the folder structure creation and build system. Hence maven. Following are the steps to use maven on Arch Linux.

Step 1 : Install jdk and jre (any version will do), look into pacman with -Ss 
Step 2 : Install maven - `sudo pacman -S maven`
Step 3 : Go to any directory and do execute the following - 
```bash
mvn archetype:generate -DgroupId=<TopLevelName> -DartifactId=<NameOfFirstPackageInTheProject> -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```

> Note : This process takes quite a while for the first time. It downloads a lot of build tools and if I get right it also installes a runtime. 

- Maven allows you to select a run time to build the porject with, it has to be the same as the jdk and jre version you installed.
- After the project is created, you should see a `pom.xml`. This file is what contains all your project configuration. Now its time to mention what java version maven should use to build.
Add these following lines inside the `<project>` tag.
```
<properties>
   <maven.compiler.source>19</maven.compiler.source>
   <maven.compiler.target>19</maven.compiler.target>
</properties>
```

> Note : change the 19 to the version of java you have in your system.

- Now to the root of the project and do `nvm clean package`. 
- You have now compiled the project! To run it go to the root of the project and do `java --class-path target/classes <NameOfFirstPackageInTheProject>.App`
- From here on out, your on your own. Have fun with java and maven.


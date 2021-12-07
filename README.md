# Yolks

A custom image of Java 17 with webp package that can be used with Pterodactyl's Egg system. 

### Contributing

When adding a new version to an existing image, such as `java v42`, you'd add it within a child folder of `java`, so
`java/42/Dockerfile` for example. Please also update the correct `.github/workflows` file to ensure that this new version
is tagged correctly.

## Available Images

* [`java`](https://github.com/pterodactyl/yolks/tree/master/java)
  * [`java17`](https://github.com/latchee/yolks/tree/master/java/17)
    * `ghcr.io/pterodactyl/yolks:java_17`

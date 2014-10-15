# CMSDeployment

Capifony script(s) to deploy a Kunstmaan-based website to staging/production URLs.

## Setup

- Clone this repository to your project (or add as a submodule).
- Copy personalization.rb.dist to personalization.rb, and fill it out with your values.

## Assumptions (or is that Requirements?)

The following assumptions are made:

1. You're using the Kunstmaan Bundles Standard Edition
2. You're using a Grunt/Bower frontend workflow
3. You've installed and have configured the SPBowerBundle (https://github.com/Spea/SpBowerBundle)
4. Your .bowerrc, bower.json, Gruntfile.js, and package.json are found in app/Resources
5. Your .bowerrc specifies the web/vendor folder as the vendor directory
5. You have 2 servers to deploy to - staging and production
6. You're using Git as your SCM

## What it doesn't do

- It doesn't run doctrine migrations, or alter your database in any way.
- It doesn't sync any uploaded files (use cap deploy:upload FILES=/path/to/files)

## Deployment flow

### Your first deployment

You'll want to run 

```bash
cap {stagename} deploy:setup
```

Where {stagename} is either 'staging' or 'deployment'. This will ensure the proper directories being created, and a parameters.yml (shared) uploaded.

### Deployments thereafter

```bash
cap {stagename} deploy [-v]
```

#### Great, so what happens then?

Easy poindexter. Here's the deal:

1. Capifony does its usual things (clones repo, creates new release directory, etc.)
2. Composer vendor directory is copied to new release
4. npm install is run on the shared node modules folder (app/Resources/node_modules) 
5. Shared node_modules (app/Resources/node_modules) is symlinked to new release
6. Composer install is run (not update), which will trigger the scripts in composer.json
7. Scripts in composer.json trigger cache:clear (and warmup), and calls sp:bower:install
8. assetic:dump is called (Kunstmaan Admin area requires this)
9. Assets version is updated (in config.yml) via the Capifony task 'symfony:assets:update_version'
10. Directory permissions are set according to Symfony documentation 






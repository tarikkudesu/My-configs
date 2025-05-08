#!/bin/bash

#Author Tarik AMEHRI
#42login : tamehri

echo -n "Enter project name: "
read project
echo -n "Enter the GitHub repository (leave empty for a local project): "
read repo

echo "Repository: $repo"
echo "Project Name: $project"

# Clone the 'devenv' repository into the project directory
if [ -z "$project" ]; then
    echo "Cloning 'devenv' repository into the current directory..."
    git clone https://github.com/tarikkudesu/devenv.git
    cd devenv
else
    echo "Cloning 'devenv' repository into project directory: $project"
    git clone https://github.com/tarikkudesu/devenv.git "$project"
    cd "$project"
fi

# If a GitHub repository URL is provided, clone it into 'data' directory
if [ -n "$repo" ]; then
    echo "Cloning $repo into the 'data' directory..."
    git clone "$repo" data
else
    echo "Creating 'data' directory as no repository URL was provided..."
    mkdir -p data
fi

touch buildTools/.env
echo "NAME=$project" > buildTools/.env

rm -rf .git
rm -rf .gitignore
rm -rf README.md

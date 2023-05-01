## Motivition
-  Use shortcut keys to improve efficiency
-  Use shortcut keys to complete the automation workflow


## use
- download this project
- raycast script add _enable-commands folder.



# how to custom your scirpt

## Install Script Commands from this repository

To install new commands, follow these steps:

1. Choose a script from the [community repo](https://github.com/raycast/script-commands/tree/master/commands#apps) and save it into a new directory.
   
   Scripts containing the word `.template.` in the filename require some values to be set (check [the troubleshooting section](#troubleshooting-and-faqs) for more information).
   
   Alternatively, instead of creating a new directory you can reuse the repo's [`_enable-commands` folder](https://github.com/raycast/script-commands/tree/master/_enabled-commands).
3. Open the Extensions tab in the Raycast preferences
4. Click the plus button
5. Click `Add Script Directory`
6. Select directories containing your Script Commands

**💡 Hint:** We recommend that you don't directly load the community script directories into Raycast to avoid potential restructuring and new script commands suddenly appearing in Raycast.



## Create your own Script Commands

To write your own custom Script Commands, go over the following steps:

1. Use the `Create Script Command` functionality in Raycast
2. Write and edit your script using your favourite code editor
3. Run your Script Command from the Raycast root search

**💡 Hint:** If you choose to write your script in `Bash`, we highly recommend using the [Shellcheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck) linter as this will ensure smooth running of your script. All  scripts uploaded to GitHub will need to have been run through ShellCheck.


### Metadata

These parameters are available for you to customize your Script Command in Raycast. For practical examples of how these should be used, as well as best practices and supported languages, please browse our templates and community-built scripts.

| Name                 | Description                                                                                                                                                                                                                                                                          | Required | App Version         |
|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|---------------------|
|schemaVersion        | Schema version to prepare for future changes in the API. Currently there is only version 1 available.                                                                                                                                                                                | Yes      | 0.29+               |
| title                | Display name of the Script Command that is shown as title in the root search.                                                                                                                                                                                                        | Yes      | 0.29+               |
| mode                 | Specifies how the script is executed and how the output is presented. [Details of the options for this parameter can be viewed here](https://github.com/raycast/script-commands/blob/master/documentation/OUTPUTMODES.md) | Yes      | 0.29+               |
| packageName          | Display name of the package that is shown as subtitle in the root search. When not provided, the name will be inferred from the script directory name.                                                                                                                               | No       | 0.29+               |
| icon                 | Icon that is displayed in the root search. Can be an emoji, a file path (relative or full) or a remote URL (only https). Supported formats for images are PNG and JPEG. Please make sure to use small icons, recommended size - 64px.                                                | No       | 0.29+               |
| iconDark             | Same as `icon`, but for dark theme. If not specified, then `icon` will be used in both themes.                                                                                                                             | No       | 1.3.0+              |
| currentDirectoryPath | Path from which the script is executed. Default is the path of the script.                                                                                                                                                                                                           | No       | 0.29+               |
| needsConfirmation    | Specify `true` if you would like to show confirmation alert dialog before running the script. Can be helpful with destructive scripts like "Quit All Apps" or "Empty Trash". Default value is `false`.                                                                               | No       | 0.30+               |
| refreshTime          | Specify a refresh interval for inline mode scripts in seconds, minutes, hours or days. Examples: 10s, 1m, 12h, 1d. Note that the actual times can vary depending on how the OS prioritises scheduled work. The minimum refresh interval is 10 seconds. If you have more than 10 inline commands, only the first 10 will be refreshed automatically; the rest have to be manually refreshed by navigating to them and pressing `return`.| No       | 0.31+ |
| argument[1...3]      | [Custom arguments, see Passing Arguments page](https://github.com/raycast/script-commands/blob/master/documentation/ARGUMENTS.md) for detail of how to use this field | No | 1.2.0+ |
| author               | Define an author name to be part of the script commands documentation | No | |
| authorURL            | Author social media, website, email or anything to help the users to get in touch | No | |
| description          | A brief description about the script command to be presented in the documentation | No | |

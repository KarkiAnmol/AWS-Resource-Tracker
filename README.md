# AWS Resource Tracker

## Overview
The AWS Resource Tracker script reports usage statistics for specified AWS resources including AWS S3, EC2, Lambda, and IAM Users. This script is useful for administrators and users who need to track resource utilization within their AWS environment.

## Prerequisites
- AWS CLI must be installed and configured with necessary access rights.
- `jq` for processing JSON data, if you wish to parse the output further.

## Getting Started

### Installation
1. Clone the repository to your local machine:
      ```bash
      git clone https://github.com/KarkiAnmol/AWS-Resource-Tracker.git
      ```
2. Navigate to the cloned directory:

      ```bash
      cd  AWS-Resource-Tracker
      ```

### Editing the Script

You can edit aws_resource_tracker.sh using any text editor of your choice. For instance, to edit the script in Vim:

Open the script in Vim:
      ```bash
      vim aws_resource_tracker.sh
      ```
    Make your changes. If you're unfamiliar with Vim:
        Press i to enter insert mode.
        After making changes, press Esc to exit insert mode.
        To save and exit, type :wq and press Enter.

Alternatively, you can use any GUI text editor by opening the file through your file explorer.
Usage

To execute the script, ensure it's executable:

  ```bash
  chmod 777 aws_resource_tracker.sh
  ```
Run the script:

  ```bash
  ./aws_resource_tracker.sh
  ```
Parsing Output with jq

jq is a lightweight and flexible command-line JSON processor. It allows you to slice, filter, map, and transform structured data with the same ease that sed, awk, grep, and friends let you play with text.

To extract specific details, such as AWS IAM User IDs from the script's JSON output:

  ```bash
  ./aws_resource_tracker.sh | jq '.Users[].UserId'
  ```
This command pipes the JSON output of aws_resource_tracker.sh to jq, which then filters and prints the UserId for each user in the Users array.

### Contributing

Contributions to improve the script or documentation are welcome. Please feel free to fork the repository and submit a pull request with your enhancements.
### License

Specify your license or leave a note stating that the project is licensed under the MIT License, Apache 2.0, etc.


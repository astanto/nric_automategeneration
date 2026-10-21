# NRIC Generator Automation

A Robot Framework automation script that uses SeleniumLibrary to interact with the NRIC generator webpage and save generated values to a text file.

## Overview

The `nric.robot` test suite:

1. Creates an empty `nric_list.txt` output file.
2. Opens the generator page in Google Chrome.
3. Clicks the **Generate** button 500 times by default.
4. Reads the `alt` attribute from the element with ID `barcode`.
5. Appends each extracted value to `nric_list.txt`.
6. Closes the browser when the loop finishes.

## Requirements

- Python 3
- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- Google Chrome
- A compatible Selenium WebDriver setup

## Installation

Install Robot Framework and SeleniumLibrary:

```bash
python -m pip install robotframework robotframework-seleniumlibrary
```

Make sure Google Chrome is installed and your Selenium/WebDriver setup is compatible with your installed versions. Depending on your Selenium version, driver management may be handled automatically.

## Run the Automation

Run the test from the directory containing `nric.robot`:

```bash
robot nric.robot
```

The script uses `${loop_count} = 500` by default. To change the number of iterations, edit that variable in `nric.robot`.

## Output

The script writes the extracted values to:

```text
nric_list.txt
```

Robot Framework also produces execution reports and logs, typically including:

- `output.xml`
- `log.html`
- `report.html`

These are generated when the test runs.

## Project Structure

```text
.
├── nric.robot
├── README.md
└── nric_list.txt    # Generated at runtime
```

## Notes

- The target page is configured in the script as `https://samliew.com/nric-generator`.
- The script expects the page to contain a button with ID `gen` and an element with ID `barcode`.
- The current loop count is 500.
- The script recreates `nric_list.txt` at the start of each run, so output from a previous run will be overwritten.
- Website markup, availability, and behavior may change and could cause the automation to fail.

## Responsible Use

Use this project only for authorized testing, learning, or other legitimate purposes. Do not use generated identifiers to impersonate real people, bypass identity checks, or access services without authorization. Follow the target website's terms and applicable laws and privacy requirements.

## License

No license is currently specified. Add a `LICENSE` file if you want to define how others may use, modify, and distribute this project.

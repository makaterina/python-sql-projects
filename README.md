# Medical Symptom Diagnostic System

#### [Video Demo](https://youtu.be/uDMVwyOjXV4)

#### Description:
The Medical Symptom Diagnostic System is a Python-based command-line application designed to provide users with preliminary health information based on their reported symptoms. The core purpose of the project is to simplify the process of mapping specific physical symptoms to potential diagnoses using a structured database.

This project was developed as the final assignment for CS50P. It demonstrates the use of file handling, CSV data processing, input validation, and user interaction through a menu-driven interface.

#### Project Structure:
- **project.py**: The main script containing the program logic. It handles the user menu, reads the symptom database, and manages the history log.
- **symptoms.csv**: A Comma-Separated Values file that serves as the database. It maps symptoms to their corresponding diagnoses.
- **history.txt**: A generated log file that records the user's past queries, including a timestamp for each entry.
- **test_project.py**: A testing file using `pytest` to ensure the core diagnostic and file-handling functions work as expected.
- **requirements.txt**: Lists the necessary dependencies for running the project.

#### Design Choices:
I chose a menu-driven design to make the program interactive and user-friendly. I used the `csv` module because it provides a reliable way to manage structured data. `datetime` was integrated into the history function to provide a chronological log, which adds a professional touch to the data tracking. The error handling with `try-except` blocks ensures that the program does not crash if files are missing or inaccessible.

#### How to Run:
1. Ensure you have Python installed.
2. Install the necessary dependencies: `pip install -r requirements.txt`
3. Run the application: `python project.py`
4. to run tests: `pytest test_project.py`

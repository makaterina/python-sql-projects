
import csv
import sys
from datetime import datetime


def main():
    print("--- Medical Symptom Diagnostic System ---")
    while True:
        print("\n1. Diagnose Symptom")
        print("2. View History")
        print("3. Exit")
        choice = input("Select an option (1-3): ")

        if choice == "1":
            symptom = input("Please enter symptom: ").strip().lower()
            diagnosis = get_diagnosis(symptom)
            print (f"Diagnosis: {diagnosis}")
            save_history(symptom, diagnosis)
        elif choice == "2":
            show_history()
        elif choice == "3":
            print("Thank you, goodbye. ")
            sys.exit()
        else:
            print("Invalid choice, please try again. ")

def get_diagnosis(symptom):
    try:
        with open("symptoms.csv", "r") as file:
            reader = csv.DictReader(file)
            for row in reader:
                if row["symptom"].lower() == symptom:
                    return row["diagnosis"]
        return "Unknown symptom"
    except FileNotFoundError:
        return "Database Not Found! "

def save_history(symptom, diagnosis):
    with open("history.txt", "a") as file:
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        file.write(f"{timestamp} | Symptom: {symptom} | Diagnosis: {diagnosis}\n")

def show_history():
    try:
        with open("history.txt", "r") as file:
            print("---History---")
            print(file.read())
    except FileNotFoundError:
        print("History Is Empty.")

if __name__ =="__main__":
    main()


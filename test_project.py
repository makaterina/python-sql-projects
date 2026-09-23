from project import get_diagnosis, save_history, show_history
import os

def test_get_diagnosis():
    assert get_diagnosis("cough") == "common cold"
    assert get_diagnosis("unknown_symptom") == "Unknown symptom"

def test_save_history():
    save_history("test", "test_result")
    assert os.path.exists("history.txt")

def test_show_history():
    assert show_history() is None


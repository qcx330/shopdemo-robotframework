# Robot Framework UI and API Test Starter

An automation starter using Robot Framework, RequestsLibrary, and Browser Library.

## Setup

Create and activate a virtual environment, then install the project dependencies:

```powershell
py -m venv .venv
.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
rfbrowser install
```

## Run tests

Set `BASE_URL` to the application under test. Run the blank-credentials login UI test with:

```powershell
robotcode robot -i ui
```

The test submits the login form with both fields empty and checks the validation alert. Run the API health check with:

```powershell
robotcode robot -v BASE_URL:http://localhost:8000
```

Run only smoke tests:

```powershell
robotcode robot -i smoke -v BASE_URL:http://localhost:8000
```

Test results are written to `results/` (ignored by Git). Update the suites under `tests/` and reusable keywords under `resources/` as the application changes.
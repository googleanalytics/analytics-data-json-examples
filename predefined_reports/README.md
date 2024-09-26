# Google Analytics Predefined Reports

## Overview

This folder contains examples of the Data API queries equivalent to [predefined
reports](https://support.google.com/analytics/answer/9212670)
available in the Google Analytics API. See the [predefined
reports guide](https://developers.google.com/analytics/devguides/reporting/data/v1/predefined-reports)
for a detailed description of each report.

## Run a query

### Using the API Explorer

To run a query in your browser, open the [API Explorer](https://developers.google.com/analytics/devguides/reporting/data/v1/rest/v1beta/properties/runReport?apix=true)
in your browser, populate the **property** field with your [property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id)
and copy the request body to the corresponding field in the API Explorer dialog, click **Execute**.

### Using the command line

Follow instructions provided in the [Data API command line quickstart](https://developers.google.com/analytics/devguides/reporting/data/v1/quickstart-cli)
guide. When running the `curl` command, specify the filename containing the
predefined report you want to run, for example:

```
  curl -X POST \
  -H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
  -H "Content-Type: application/json; charset=utf-8" \
  https://analyticsdata.googleapis.com/v1beta/properties/$GA_PROPERTY_ID:runReport -d @traffic-acquisition-session-primary-channel-group.json
```


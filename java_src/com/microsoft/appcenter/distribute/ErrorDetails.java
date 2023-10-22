package com.microsoft.appcenter.distribute;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
class ErrorDetails {
    private String code;

    ErrorDetails() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ErrorDetails parse(String json) throws JSONException {
        JSONObject jSONObject = new JSONObject(json);
        ErrorDetails errorDetails = new ErrorDetails();
        errorDetails.code = jSONObject.getString("code");
        return errorDetails;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCode() {
        return this.code;
    }
}

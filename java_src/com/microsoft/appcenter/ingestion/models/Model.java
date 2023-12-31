package com.microsoft.appcenter.ingestion.models;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public interface Model {
    void read(JSONObject object) throws JSONException;

    void write(JSONStringer writer) throws JSONException;
}

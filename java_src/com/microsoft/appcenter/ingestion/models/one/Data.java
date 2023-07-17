package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class Data implements Model {
    private final JSONObject mProperties = new JSONObject();

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        JSONArray names = object.names();
        if (names != null) {
            for (int i = 0; i < names.length(); i++) {
                String string = names.getString(i);
                this.mProperties.put(string, object.get(string));
            }
        }
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, "baseType", this.mProperties.optString("baseType", null));
        JSONUtils.write(writer, "baseData", this.mProperties.optJSONObject("baseData"));
        JSONArray names = this.mProperties.names();
        if (names != null) {
            for (int i = 0; i < names.length(); i++) {
                String string = names.getString(i);
                if (!string.equals("baseType") && !string.equals("baseData")) {
                    writer.key(string).value(this.mProperties.get(string));
                }
            }
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || Data.class != o.getClass()) {
            return false;
        }
        return this.mProperties.toString().equals(((Data) o).mProperties.toString());
    }

    public int hashCode() {
        return this.mProperties.toString().hashCode();
    }
}

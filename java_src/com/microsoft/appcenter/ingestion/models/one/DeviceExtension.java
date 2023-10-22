package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class DeviceExtension implements Model {
    private String localId;

    public String getLocalId() {
        return this.localId;
    }

    public void setLocalId(String localId) {
        this.localId = localId;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) {
        setLocalId(object.optString("localId", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, "localId", getLocalId());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || DeviceExtension.class != o.getClass()) {
            return false;
        }
        String str = this.localId;
        String str2 = ((DeviceExtension) o).localId;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        String str = this.localId;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }
}

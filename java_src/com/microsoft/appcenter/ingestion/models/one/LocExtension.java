package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class LocExtension implements Model {

    /* renamed from: tz */
    private String f466tz;

    public String getTz() {
        return this.f466tz;
    }

    public void setTz(String tz) {
        this.f466tz = tz;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) {
        setTz(object.optString("tz", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, "tz", getTz());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || LocExtension.class != o.getClass()) {
            return false;
        }
        String str = this.f466tz;
        String str2 = ((LocExtension) o).f466tz;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        String str = this.f466tz;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }
}

package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class UserExtension implements Model {
    private String localId;
    private String locale;

    public String getLocalId() {
        return this.localId;
    }

    public void setLocalId(String localId) {
        this.localId = localId;
    }

    public String getLocale() {
        return this.locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) {
        setLocalId(object.optString("localId", null));
        setLocale(object.optString("locale", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, "localId", getLocalId());
        JSONUtils.write(writer, "locale", getLocale());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || UserExtension.class != o.getClass()) {
            return false;
        }
        UserExtension userExtension = (UserExtension) o;
        String str = this.localId;
        if (str == null ? userExtension.localId == null : str.equals(userExtension.localId)) {
            String str2 = this.locale;
            String str3 = userExtension.locale;
            return str2 != null ? str2.equals(str3) : str3 == null;
        }
        return false;
    }

    public int hashCode() {
        String str = this.localId;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.locale;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }
}

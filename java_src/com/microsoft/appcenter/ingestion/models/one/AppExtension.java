package com.microsoft.appcenter.ingestion.models.one;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class AppExtension implements Model {

    /* renamed from: id */
    private String f406id;
    private String locale;
    private String name;
    private String userId;
    private String ver;

    public String getId() {
        return this.f406id;
    }

    public void setId(String id) {
        this.f406id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVer() {
        return this.ver;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public String getLocale() {
        return this.locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) {
        setId(object.optString(TtmlNode.ATTR_ID, null));
        setVer(object.optString("ver", null));
        setName(object.optString(AppMeasurementSdk.ConditionalUserProperty.NAME, null));
        setLocale(object.optString("locale", null));
        setUserId(object.optString("userId", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, TtmlNode.ATTR_ID, getId());
        JSONUtils.write(writer, "ver", getVer());
        JSONUtils.write(writer, AppMeasurementSdk.ConditionalUserProperty.NAME, getName());
        JSONUtils.write(writer, "locale", getLocale());
        JSONUtils.write(writer, "userId", getUserId());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || AppExtension.class != o.getClass()) {
            return false;
        }
        AppExtension appExtension = (AppExtension) o;
        String str = this.f406id;
        if (str == null ? appExtension.f406id == null : str.equals(appExtension.f406id)) {
            String str2 = this.ver;
            if (str2 == null ? appExtension.ver == null : str2.equals(appExtension.ver)) {
                String str3 = this.name;
                if (str3 == null ? appExtension.name == null : str3.equals(appExtension.name)) {
                    String str4 = this.locale;
                    if (str4 == null ? appExtension.locale == null : str4.equals(appExtension.locale)) {
                        String str5 = this.userId;
                        String str6 = appExtension.userId;
                        return str5 != null ? str5.equals(str6) : str6 == null;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f406id;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.ver;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.name;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.locale;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.userId;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}

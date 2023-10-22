package com.microsoft.appcenter.ingestion.models;

import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class WrapperSdk implements Model {
    private String liveUpdateDeploymentKey;
    private String liveUpdatePackageHash;
    private String liveUpdateReleaseLabel;
    private String wrapperRuntimeVersion;
    private String wrapperSdkName;
    private String wrapperSdkVersion;

    public String getWrapperSdkVersion() {
        return this.wrapperSdkVersion;
    }

    public void setWrapperSdkVersion(String wrapperSdkVersion) {
        this.wrapperSdkVersion = wrapperSdkVersion;
    }

    public String getWrapperSdkName() {
        return this.wrapperSdkName;
    }

    public void setWrapperSdkName(String wrapperSdkName) {
        this.wrapperSdkName = wrapperSdkName;
    }

    public String getWrapperRuntimeVersion() {
        return this.wrapperRuntimeVersion;
    }

    public void setWrapperRuntimeVersion(String wrapperRuntimeVersion) {
        this.wrapperRuntimeVersion = wrapperRuntimeVersion;
    }

    public String getLiveUpdateReleaseLabel() {
        return this.liveUpdateReleaseLabel;
    }

    public void setLiveUpdateReleaseLabel(String liveUpdateReleaseLabel) {
        this.liveUpdateReleaseLabel = liveUpdateReleaseLabel;
    }

    public String getLiveUpdateDeploymentKey() {
        return this.liveUpdateDeploymentKey;
    }

    public void setLiveUpdateDeploymentKey(String liveUpdateDeploymentKey) {
        this.liveUpdateDeploymentKey = liveUpdateDeploymentKey;
    }

    public String getLiveUpdatePackageHash() {
        return this.liveUpdatePackageHash;
    }

    public void setLiveUpdatePackageHash(String liveUpdatePackageHash) {
        this.liveUpdatePackageHash = liveUpdatePackageHash;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        setWrapperSdkVersion(object.optString("wrapperSdkVersion", null));
        setWrapperSdkName(object.optString("wrapperSdkName", null));
        setWrapperRuntimeVersion(object.optString("wrapperRuntimeVersion", null));
        setLiveUpdateReleaseLabel(object.optString("liveUpdateReleaseLabel", null));
        setLiveUpdateDeploymentKey(object.optString("liveUpdateDeploymentKey", null));
        setLiveUpdatePackageHash(object.optString("liveUpdatePackageHash", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        JSONUtils.write(writer, "wrapperSdkVersion", getWrapperSdkVersion());
        JSONUtils.write(writer, "wrapperSdkName", getWrapperSdkName());
        JSONUtils.write(writer, "wrapperRuntimeVersion", getWrapperRuntimeVersion());
        JSONUtils.write(writer, "liveUpdateReleaseLabel", getLiveUpdateReleaseLabel());
        JSONUtils.write(writer, "liveUpdateDeploymentKey", getLiveUpdateDeploymentKey());
        JSONUtils.write(writer, "liveUpdatePackageHash", getLiveUpdatePackageHash());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        WrapperSdk wrapperSdk = (WrapperSdk) o;
        String str = this.wrapperSdkVersion;
        if (str == null ? wrapperSdk.wrapperSdkVersion == null : str.equals(wrapperSdk.wrapperSdkVersion)) {
            String str2 = this.wrapperSdkName;
            if (str2 == null ? wrapperSdk.wrapperSdkName == null : str2.equals(wrapperSdk.wrapperSdkName)) {
                String str3 = this.wrapperRuntimeVersion;
                if (str3 == null ? wrapperSdk.wrapperRuntimeVersion == null : str3.equals(wrapperSdk.wrapperRuntimeVersion)) {
                    String str4 = this.liveUpdateReleaseLabel;
                    if (str4 == null ? wrapperSdk.liveUpdateReleaseLabel == null : str4.equals(wrapperSdk.liveUpdateReleaseLabel)) {
                        String str5 = this.liveUpdateDeploymentKey;
                        if (str5 == null ? wrapperSdk.liveUpdateDeploymentKey == null : str5.equals(wrapperSdk.liveUpdateDeploymentKey)) {
                            String str6 = this.liveUpdatePackageHash;
                            String str7 = wrapperSdk.liveUpdatePackageHash;
                            return str6 != null ? str6.equals(str7) : str7 == null;
                        }
                        return false;
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
        String str = this.wrapperSdkVersion;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.wrapperSdkName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.wrapperRuntimeVersion;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.liveUpdateReleaseLabel;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.liveUpdateDeploymentKey;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.liveUpdatePackageHash;
        return hashCode5 + (str6 != null ? str6.hashCode() : 0);
    }
}

package com.microsoft.appcenter.ingestion.models;

import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class Device extends WrapperSdk {
    private String appBuild;
    private String appNamespace;
    private String appVersion;
    private String carrierCountry;
    private String carrierName;
    private String locale;
    private String model;
    private String oemName;
    private Integer osApiLevel;
    private String osBuild;
    private String osName;
    private String osVersion;
    private String screenSize;
    private String sdkName;
    private String sdkVersion;
    private Integer timeZoneOffset;

    public String getSdkName() {
        return this.sdkName;
    }

    public void setSdkName(String sdkName) {
        this.sdkName = sdkName;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public void setSdkVersion(String sdkVersion) {
        this.sdkVersion = sdkVersion;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getOemName() {
        return this.oemName;
    }

    public void setOemName(String oemName) {
        this.oemName = oemName;
    }

    public String getOsName() {
        return this.osName;
    }

    public void setOsName(String osName) {
        this.osName = osName;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public void setOsVersion(String osVersion) {
        this.osVersion = osVersion;
    }

    public String getOsBuild() {
        return this.osBuild;
    }

    public void setOsBuild(String osBuild) {
        this.osBuild = osBuild;
    }

    public Integer getOsApiLevel() {
        return this.osApiLevel;
    }

    public void setOsApiLevel(Integer osApiLevel) {
        this.osApiLevel = osApiLevel;
    }

    public String getLocale() {
        return this.locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public Integer getTimeZoneOffset() {
        return this.timeZoneOffset;
    }

    public void setTimeZoneOffset(Integer timeZoneOffset) {
        this.timeZoneOffset = timeZoneOffset;
    }

    public String getScreenSize() {
        return this.screenSize;
    }

    public void setScreenSize(String screenSize) {
        this.screenSize = screenSize;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public void setAppVersion(String appVersion) {
        this.appVersion = appVersion;
    }

    public String getCarrierName() {
        return this.carrierName;
    }

    public void setCarrierName(String carrierName) {
        this.carrierName = carrierName;
    }

    public String getCarrierCountry() {
        return this.carrierCountry;
    }

    public void setCarrierCountry(String carrierCountry) {
        this.carrierCountry = carrierCountry;
    }

    public String getAppBuild() {
        return this.appBuild;
    }

    public void setAppBuild(String appBuild) {
        this.appBuild = appBuild;
    }

    public String getAppNamespace() {
        return this.appNamespace;
    }

    public void setAppNamespace(String appNamespace) {
        this.appNamespace = appNamespace;
    }

    @Override // com.microsoft.appcenter.ingestion.models.WrapperSdk, com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        super.read(object);
        setSdkName(object.getString("sdkName"));
        setSdkVersion(object.getString("sdkVersion"));
        setModel(object.getString("model"));
        setOemName(object.getString("oemName"));
        setOsName(object.getString("osName"));
        setOsVersion(object.getString("osVersion"));
        setOsBuild(object.optString("osBuild", null));
        setOsApiLevel(JSONUtils.readInteger(object, "osApiLevel"));
        setLocale(object.getString("locale"));
        setTimeZoneOffset(Integer.valueOf(object.getInt("timeZoneOffset")));
        setScreenSize(object.getString("screenSize"));
        setAppVersion(object.getString("appVersion"));
        setCarrierName(object.optString("carrierName", null));
        setCarrierCountry(object.optString("carrierCountry", null));
        setAppBuild(object.getString("appBuild"));
        setAppNamespace(object.optString("appNamespace", null));
    }

    @Override // com.microsoft.appcenter.ingestion.models.WrapperSdk, com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        super.write(writer);
        writer.key("sdkName").value(getSdkName());
        writer.key("sdkVersion").value(getSdkVersion());
        writer.key("model").value(getModel());
        writer.key("oemName").value(getOemName());
        writer.key("osName").value(getOsName());
        writer.key("osVersion").value(getOsVersion());
        JSONUtils.write(writer, "osBuild", getOsBuild());
        JSONUtils.write(writer, "osApiLevel", getOsApiLevel());
        writer.key("locale").value(getLocale());
        writer.key("timeZoneOffset").value(getTimeZoneOffset());
        writer.key("screenSize").value(getScreenSize());
        writer.key("appVersion").value(getAppVersion());
        JSONUtils.write(writer, "carrierName", getCarrierName());
        JSONUtils.write(writer, "carrierCountry", getCarrierCountry());
        writer.key("appBuild").value(getAppBuild());
        JSONUtils.write(writer, "appNamespace", getAppNamespace());
    }

    @Override // com.microsoft.appcenter.ingestion.models.WrapperSdk
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o != null && Device.class == o.getClass() && super.equals(o)) {
            Device device = (Device) o;
            String str = this.sdkName;
            if (str == null ? device.sdkName == null : str.equals(device.sdkName)) {
                String str2 = this.sdkVersion;
                if (str2 == null ? device.sdkVersion == null : str2.equals(device.sdkVersion)) {
                    String str3 = this.model;
                    if (str3 == null ? device.model == null : str3.equals(device.model)) {
                        String str4 = this.oemName;
                        if (str4 == null ? device.oemName == null : str4.equals(device.oemName)) {
                            String str5 = this.osName;
                            if (str5 == null ? device.osName == null : str5.equals(device.osName)) {
                                String str6 = this.osVersion;
                                if (str6 == null ? device.osVersion == null : str6.equals(device.osVersion)) {
                                    String str7 = this.osBuild;
                                    if (str7 == null ? device.osBuild == null : str7.equals(device.osBuild)) {
                                        Integer num = this.osApiLevel;
                                        if (num == null ? device.osApiLevel == null : num.equals(device.osApiLevel)) {
                                            String str8 = this.locale;
                                            if (str8 == null ? device.locale == null : str8.equals(device.locale)) {
                                                Integer num2 = this.timeZoneOffset;
                                                if (num2 == null ? device.timeZoneOffset == null : num2.equals(device.timeZoneOffset)) {
                                                    String str9 = this.screenSize;
                                                    if (str9 == null ? device.screenSize == null : str9.equals(device.screenSize)) {
                                                        String str10 = this.appVersion;
                                                        if (str10 == null ? device.appVersion == null : str10.equals(device.appVersion)) {
                                                            String str11 = this.carrierName;
                                                            if (str11 == null ? device.carrierName == null : str11.equals(device.carrierName)) {
                                                                String str12 = this.carrierCountry;
                                                                if (str12 == null ? device.carrierCountry == null : str12.equals(device.carrierCountry)) {
                                                                    String str13 = this.appBuild;
                                                                    if (str13 == null ? device.appBuild == null : str13.equals(device.appBuild)) {
                                                                        String str14 = this.appNamespace;
                                                                        String str15 = device.appNamespace;
                                                                        return str14 != null ? str14.equals(str15) : str15 == null;
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
        return false;
    }

    @Override // com.microsoft.appcenter.ingestion.models.WrapperSdk
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.sdkName;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.sdkVersion;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.model;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.oemName;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.osName;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.osVersion;
        int hashCode7 = (hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.osBuild;
        int hashCode8 = (hashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31;
        Integer num = this.osApiLevel;
        int hashCode9 = (hashCode8 + (num != null ? num.hashCode() : 0)) * 31;
        String str8 = this.locale;
        int hashCode10 = (hashCode9 + (str8 != null ? str8.hashCode() : 0)) * 31;
        Integer num2 = this.timeZoneOffset;
        int hashCode11 = (hashCode10 + (num2 != null ? num2.hashCode() : 0)) * 31;
        String str9 = this.screenSize;
        int hashCode12 = (hashCode11 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.appVersion;
        int hashCode13 = (hashCode12 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.carrierName;
        int hashCode14 = (hashCode13 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.carrierCountry;
        int hashCode15 = (hashCode14 + (str12 != null ? str12.hashCode() : 0)) * 31;
        String str13 = this.appBuild;
        int hashCode16 = (hashCode15 + (str13 != null ? str13.hashCode() : 0)) * 31;
        String str14 = this.appNamespace;
        return hashCode16 + (str14 != null ? str14.hashCode() : 0);
    }
}

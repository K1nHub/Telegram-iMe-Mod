package com.google.firebase.crashlytics.internal.settings.network;

import android.text.TextUtils;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.network.HttpGetRequest;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.network.HttpResponse;
import com.google.firebase.crashlytics.internal.settings.model.SettingsRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class DefaultSettingsSpiCall implements SettingsSpiCall {
    private final Logger logger;
    private final HttpRequestFactory requestFactory;
    private final String url;

    boolean requestWasSuccessful(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }

    public DefaultSettingsSpiCall(String str, HttpRequestFactory httpRequestFactory) {
        this(str, httpRequestFactory, Logger.getLogger());
    }

    DefaultSettingsSpiCall(String str, HttpRequestFactory httpRequestFactory, Logger logger) {
        if (str == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        this.logger = logger;
        this.requestFactory = httpRequestFactory;
        this.url = str;
    }

    protected HttpGetRequest createHttpGetRequest(Map<String, String> map) {
        HttpGetRequest buildHttpGetRequest = this.requestFactory.buildHttpGetRequest(this.url, map);
        return buildHttpGetRequest.header(RtspHeaders.USER_AGENT, "Crashlytics Android SDK/" + CrashlyticsCore.getVersion()).header("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    @Override // com.google.firebase.crashlytics.internal.settings.network.SettingsSpiCall
    public JSONObject invoke(SettingsRequest settingsRequest, boolean z) {
        if (!z) {
            throw new RuntimeException("An invalid data collection token was used.");
        }
        try {
            Map<String, String> queryParamsFor = getQueryParamsFor(settingsRequest);
            HttpGetRequest applyHeadersTo = applyHeadersTo(createHttpGetRequest(queryParamsFor), settingsRequest);
            Logger logger = this.logger;
            logger.m1041d("Requesting settings from " + this.url);
            Logger logger2 = this.logger;
            logger2.m1035v("Settings query params were: " + queryParamsFor);
            return handleResponse(applyHeadersTo.execute());
        } catch (IOException e) {
            this.logger.m1038e("Settings request failed.", e);
            return null;
        }
    }

    JSONObject handleResponse(HttpResponse httpResponse) {
        int code = httpResponse.code();
        Logger logger = this.logger;
        logger.m1035v("Settings response code was: " + code);
        if (requestWasSuccessful(code)) {
            return getJsonObjectFrom(httpResponse.body());
        }
        Logger logger2 = this.logger;
        logger2.m1039e("Settings request failed; (status: " + code + ") from " + this.url);
        return null;
    }

    private JSONObject getJsonObjectFrom(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            Logger logger = this.logger;
            logger.m1032w("Failed to parse settings JSON from " + this.url, e);
            Logger logger2 = this.logger;
            logger2.m1033w("Settings response " + str);
            return null;
        }
    }

    private Map<String, String> getQueryParamsFor(SettingsRequest settingsRequest) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", settingsRequest.buildVersion);
        hashMap.put("display_version", settingsRequest.displayVersion);
        hashMap.put("source", Integer.toString(settingsRequest.source));
        String str = settingsRequest.instanceId;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    private HttpGetRequest applyHeadersTo(HttpGetRequest httpGetRequest, SettingsRequest settingsRequest) {
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-GOOGLE-APP-ID", settingsRequest.googleAppId);
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-API-CLIENT-VERSION", CrashlyticsCore.getVersion());
        applyNonNullHeader(httpGetRequest, RtspHeaders.ACCEPT, "application/json");
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-DEVICE-MODEL", settingsRequest.deviceModel);
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-OS-BUILD-VERSION", settingsRequest.osBuildVersion);
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-OS-DISPLAY-VERSION", settingsRequest.osDisplayVersion);
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-INSTALLATION-ID", settingsRequest.installIdProvider.getCrashlyticsInstallId());
        return httpGetRequest;
    }

    private void applyNonNullHeader(HttpGetRequest httpGetRequest, String str, String str2) {
        if (str2 != null) {
            httpGetRequest.header(str, str2);
        }
    }
}

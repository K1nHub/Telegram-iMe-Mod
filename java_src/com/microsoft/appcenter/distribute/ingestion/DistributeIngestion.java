package com.microsoft.appcenter.distribute.ingestion;

import android.content.Context;
import com.microsoft.appcenter.DependencyConfiguration;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.http.HttpUtils;
import com.microsoft.appcenter.http.ServiceCall;
import com.microsoft.appcenter.http.ServiceCallback;
import com.microsoft.appcenter.ingestion.AbstractAppCenterIngestion;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class DistributeIngestion extends AbstractAppCenterIngestion {
    public DistributeIngestion(Context context) {
        HttpClient httpClient = DependencyConfiguration.getHttpClient();
        setHttpClient(httpClient == null ? HttpUtils.createHttpClient(context) : httpClient);
    }

    public ServiceCall checkReleaseAsync(final String appSecret, String url, Map<String, String> headers, ServiceCallback serviceCallback) {
        return getServiceCall(url, "GET", headers, new HttpClient.CallTemplate(this) { // from class: com.microsoft.appcenter.distribute.ingestion.DistributeIngestion.1
            @Override // com.microsoft.appcenter.http.HttpClient.CallTemplate
            public String buildRequestBody() {
                return null;
            }

            @Override // com.microsoft.appcenter.http.HttpClient.CallTemplate
            public void onBeforeCalling(URL url2, Map<String, String> headers2) {
                if (AppCenterLog.getLogLevel() <= 2) {
                    String url3 = url2.toString();
                    String str = appSecret;
                    String replaceAll = url3.replaceAll(str, HttpUtils.hideSecret(str));
                    AppCenterLog.verbose("AppCenterDistribute", "Calling " + replaceAll + "...");
                    HashMap hashMap = new HashMap(headers2);
                    String str2 = (String) hashMap.get("x-api-token");
                    if (str2 != null) {
                        hashMap.put("x-api-token", HttpUtils.hideSecret(str2));
                    }
                    AppCenterLog.verbose("AppCenterDistribute", "Headers: " + hashMap);
                }
            }
        }, serviceCallback);
    }
}

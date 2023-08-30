package com.microsoft.appcenter.ingestion;

import com.microsoft.appcenter.http.AbstractAppCallTemplate;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.http.ServiceCall;
import com.microsoft.appcenter.http.ServiceCallback;
import com.microsoft.appcenter.ingestion.models.LogContainer;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import java.util.HashMap;
import java.util.UUID;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class AppCenterIngestion extends AbstractAppCenterIngestion {
    private final LogSerializer mLogSerializer;

    public AppCenterIngestion(HttpClient httpClient, LogSerializer logSerializer) {
        super(httpClient, "https://in.appcenter.ms");
        this.mLogSerializer = logSerializer;
    }

    @Override // com.microsoft.appcenter.ingestion.AbstractAppCenterIngestion, com.microsoft.appcenter.ingestion.Ingestion
    public ServiceCall sendAsync(String appSecret, UUID installId, LogContainer logContainer, final ServiceCallback serviceCallback) throws IllegalArgumentException {
        super.sendAsync(appSecret, installId, logContainer, serviceCallback);
        HashMap hashMap = new HashMap();
        hashMap.put("Install-ID", installId.toString());
        hashMap.put("App-Secret", appSecret);
        IngestionCallTemplate ingestionCallTemplate = new IngestionCallTemplate(this.mLogSerializer, logContainer);
        return getServiceCall(getLogUrl() + "/logs?api-version=1.0.0", "POST", hashMap, ingestionCallTemplate, serviceCallback);
    }

    /* loaded from: classes4.dex */
    private static class IngestionCallTemplate extends AbstractAppCallTemplate {
        private final LogContainer mLogContainer;
        private final LogSerializer mLogSerializer;

        IngestionCallTemplate(LogSerializer logSerializer, LogContainer logContainer) {
            this.mLogSerializer = logSerializer;
            this.mLogContainer = logContainer;
        }

        @Override // com.microsoft.appcenter.http.HttpClient.CallTemplate
        public String buildRequestBody() throws JSONException {
            return this.mLogSerializer.serializeContainer(this.mLogContainer);
        }
    }
}

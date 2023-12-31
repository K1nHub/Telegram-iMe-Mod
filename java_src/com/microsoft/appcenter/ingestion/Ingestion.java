package com.microsoft.appcenter.ingestion;

import com.microsoft.appcenter.http.ServiceCall;
import com.microsoft.appcenter.http.ServiceCallback;
import com.microsoft.appcenter.ingestion.models.LogContainer;
import java.io.Closeable;
import java.util.UUID;
/* loaded from: classes4.dex */
public interface Ingestion extends Closeable {
    boolean isEnabled();

    void reopen();

    ServiceCall sendAsync(String appSecret, UUID installId, LogContainer logContainer, ServiceCallback serviceCallback) throws IllegalArgumentException;

    void setLogUrl(String logUrl);
}

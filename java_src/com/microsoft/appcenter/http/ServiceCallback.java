package com.microsoft.appcenter.http;
/* loaded from: classes4.dex */
public interface ServiceCallback {
    void onCallFailed(Exception e);

    void onCallSucceeded(HttpResponse httpResponse);
}

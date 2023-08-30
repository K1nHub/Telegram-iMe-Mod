package com.microsoft.appcenter.http;

import android.text.TextUtils;
import java.io.IOException;
/* loaded from: classes4.dex */
public class HttpException extends IOException {
    private final HttpResponse mHttpResponse;

    public HttpException(HttpResponse httpResponse) {
        super(getDetailMessage(httpResponse.getStatusCode(), httpResponse.getPayload()));
        this.mHttpResponse = httpResponse;
    }

    private static String getDetailMessage(int status, String payload) {
        if (TextUtils.isEmpty(payload)) {
            return String.valueOf(status);
        }
        return status + " - " + payload;
    }

    public HttpResponse getHttpResponse() {
        return this.mHttpResponse;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || HttpException.class != o.getClass()) {
            return false;
        }
        return this.mHttpResponse.equals(((HttpException) o).mHttpResponse);
    }

    public int hashCode() {
        return this.mHttpResponse.hashCode();
    }
}

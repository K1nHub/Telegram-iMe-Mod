package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
/* loaded from: classes.dex */
final class zzga extends zzfs {
    private final HttpURLConnection zzvq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzga(HttpURLConnection httpURLConnection) {
        this.zzvq = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfs
    public final void addHeader(String str, String str2) {
        this.zzvq.addRequestProperty(str, str2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfs
    public final void zzb(int i, int i2) {
        this.zzvq.setReadTimeout(i2);
        this.zzvq.setConnectTimeout(i);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfs
    public final zzfv zzfg() throws IOException {
        HttpURLConnection httpURLConnection = this.zzvq;
        if (zzff() != null) {
            String contentType = getContentType();
            if (contentType != null) {
                addHeader(RtspHeaders.CONTENT_TYPE, contentType);
            }
            String contentEncoding = getContentEncoding();
            if (contentEncoding != null) {
                addHeader(RtspHeaders.CONTENT_ENCODING, contentEncoding);
            }
            long contentLength = getContentLength();
            int i = (contentLength > 0L ? 1 : (contentLength == 0L ? 0 : -1));
            if (i >= 0) {
                httpURLConnection.setRequestProperty(RtspHeaders.CONTENT_LENGTH, Long.toString(contentLength));
            }
            String requestMethod = httpURLConnection.getRequestMethod();
            if ("POST".equals(requestMethod) || "PUT".equals(requestMethod)) {
                httpURLConnection.setDoOutput(true);
                if (i >= 0 && contentLength <= 2147483647L) {
                    httpURLConnection.setFixedLengthStreamingMode((int) contentLength);
                } else {
                    httpURLConnection.setChunkedStreamingMode(0);
                }
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    zzff().writeTo(outputStream);
                    try {
                    } catch (IOException e) {
                        throw e;
                    }
                } finally {
                    try {
                        outputStream.close();
                    } catch (IOException unused) {
                    }
                }
            } else {
                Object[] objArr = {requestMethod};
                if (!(i == 0)) {
                    throw new IllegalArgumentException(zzld.zzb("%s with non-zero content length is not supported", objArr));
                }
            }
        }
        try {
            httpURLConnection.connect();
            return new zzgd(httpURLConnection);
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
    }
}

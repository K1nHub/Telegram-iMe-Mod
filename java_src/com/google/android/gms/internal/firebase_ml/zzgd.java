package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgd extends zzfv {
    private final int responseCode;
    private final String responseMessage;
    private final HttpURLConnection zzvq;
    private final ArrayList<String> zzvu;
    private final ArrayList<String> zzvv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgd(HttpURLConnection httpURLConnection) throws IOException {
        ArrayList<String> arrayList = new ArrayList<>();
        this.zzvu = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.zzvv = arrayList2;
        this.zzvq = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        this.responseCode = responseCode == -1 ? 0 : responseCode;
        this.responseMessage = httpURLConnection.getResponseMessage();
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                for (String str : entry.getValue()) {
                    if (str != null) {
                        arrayList.add(key);
                        arrayList2.add(str);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final int getStatusCode() {
        return this.responseCode;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final InputStream getContent() throws IOException {
        InputStream errorStream;
        try {
            errorStream = this.zzvq.getInputStream();
        } catch (IOException unused) {
            errorStream = this.zzvq.getErrorStream();
        }
        if (errorStream == null) {
            return null;
        }
        return new zzgc(this, errorStream);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final String getContentEncoding() {
        return this.zzvq.getContentEncoding();
    }

    public final long getContentLength() {
        String headerField = this.zzvq.getHeaderField(RtspHeaders.CONTENT_LENGTH);
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final String getContentType() {
        return this.zzvq.getHeaderField(RtspHeaders.CONTENT_TYPE);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final String getReasonPhrase() {
        return this.responseMessage;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final String zzfh() {
        String headerField = this.zzvq.getHeaderField(0);
        if (headerField == null || !headerField.startsWith("HTTP/1.")) {
            return null;
        }
        return headerField;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final int zzfi() {
        return this.zzvu.size();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final String zzy(int i) {
        return this.zzvu.get(i);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final String zzz(int i) {
        return this.zzvv.get(i);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfv
    public final void disconnect() {
        this.zzvq.disconnect();
    }
}

package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public abstract class zzfv {
    public void disconnect() throws IOException {
    }

    public abstract InputStream getContent() throws IOException;

    public abstract String getContentEncoding() throws IOException;

    public abstract String getContentType() throws IOException;

    public abstract String getReasonPhrase() throws IOException;

    public abstract int getStatusCode() throws IOException;

    public abstract String zzfh() throws IOException;

    public abstract int zzfi() throws IOException;

    public abstract String zzy(int i) throws IOException;

    public abstract String zzz(int i) throws IOException;
}

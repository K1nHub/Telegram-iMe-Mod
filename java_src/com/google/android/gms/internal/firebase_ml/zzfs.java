package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public abstract class zzfs {
    private String zzus;
    private String zzut;
    private long zzux = -1;
    private zzic zzuy;

    public abstract void addHeader(String str, String str2) throws IOException;

    public void zzb(int i, int i2) throws IOException {
    }

    public abstract zzfv zzfg() throws IOException;

    public final void setContentLength(long j) throws IOException {
        this.zzux = j;
    }

    public final long getContentLength() {
        return this.zzux;
    }

    public final void setContentEncoding(String str) throws IOException {
        this.zzus = str;
    }

    public final String getContentEncoding() {
        return this.zzus;
    }

    public final void setContentType(String str) throws IOException {
        this.zzut = str;
    }

    public final String getContentType() {
        return this.zzut;
    }

    public final void zza(zzic zzicVar) throws IOException {
        this.zzuy = zzicVar;
    }

    public final zzic zzff() {
        return this.zzuy;
    }
}

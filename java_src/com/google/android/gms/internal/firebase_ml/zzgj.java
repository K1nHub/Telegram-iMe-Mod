package com.google.android.gms.internal.firebase_ml;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public abstract class zzgj {
    public abstract zzgi zza(OutputStream outputStream, Charset charset) throws IOException;

    public abstract zzgn zza(InputStream inputStream) throws IOException;

    public abstract zzgn zza(InputStream inputStream, Charset charset) throws IOException;

    public abstract zzgn zzak(String str) throws IOException;

    public final String toString(Object obj) throws IOException {
        return zza(obj, false);
    }

    public final String zzd(Object obj) throws IOException {
        return zza(obj, true);
    }

    private final String zza(Object obj, boolean z) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        zzgi zza = zza(byteArrayOutputStream, zzhe.UTF_8);
        if (z) {
            zza.zzfv();
        }
        zza.zzc(obj);
        zza.flush();
        return byteArrayOutputStream.toString("UTF-8");
    }
}

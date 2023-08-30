package com.google.android.gms.internal.firebase_ml;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class zzgs extends zzgj {
    public static zzgs zzgp() {
        return zzgr.zzws;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgj
    public final zzgn zza(InputStream inputStream) {
        return zza(new InputStreamReader(inputStream, zzhe.UTF_8));
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgj
    public final zzgn zza(InputStream inputStream, Charset charset) {
        if (charset == null) {
            return zza(inputStream);
        }
        return zza(new InputStreamReader(inputStream, charset));
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgj
    public final zzgn zzak(String str) {
        return zza(new StringReader(str));
    }

    private final zzgn zza(Reader reader) {
        return new zzgt(this, new zzre(reader));
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgj
    public final zzgi zza(OutputStream outputStream, Charset charset) {
        return new zzgu(this, new zzrj(new OutputStreamWriter(outputStream, charset)));
    }
}

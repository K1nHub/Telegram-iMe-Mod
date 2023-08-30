package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes.dex */
public final class zzfa implements zzfe {
    @Override // com.google.android.gms.internal.firebase_ml.zzfe
    public final String getName() {
        return "gzip";
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfe
    public final void zza(zzic zzicVar, OutputStream outputStream) throws IOException {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new zzfd(this, outputStream));
        zzicVar.writeTo(gZIPOutputStream);
        gZIPOutputStream.close();
    }
}

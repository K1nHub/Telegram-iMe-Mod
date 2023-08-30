package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public final class zzfb implements zzff {
    @Override // com.google.android.gms.internal.firebase_ml.zzff
    public final long getLength() throws IOException {
        return 0L;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzff
    public final String getType() {
        return null;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzff
    public final boolean zzeo() {
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzic
    public final void writeTo(OutputStream outputStream) throws IOException {
        outputStream.flush();
    }
}

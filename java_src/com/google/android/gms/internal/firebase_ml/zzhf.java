package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
final class zzhf extends OutputStream {
    long zzyc;

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.zzyc += i2;
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.zzyc++;
    }
}

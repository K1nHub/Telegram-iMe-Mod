package com.google.android.gms.internal.firebase_ml;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
final class zzfd extends BufferedOutputStream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfd(zzfa zzfaVar, OutputStream outputStream) {
        super(outputStream);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            flush();
        } catch (IOException unused) {
        }
    }
}

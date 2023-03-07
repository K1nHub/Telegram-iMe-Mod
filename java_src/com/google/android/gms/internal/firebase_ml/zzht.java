package com.google.android.gms.internal.firebase_ml;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class zzht extends FilterOutputStream {
    private final zzhr zzzv;

    public zzht(OutputStream outputStream, Logger logger, Level level, int i) {
        super(outputStream);
        this.zzzv = new zzhr(logger, level, i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i);
        this.zzzv.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        this.zzzv.write(bArr, i, i2);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zzzv.close();
        super.close();
    }

    public final zzhr zzhb() {
        return this.zzzv;
    }
}

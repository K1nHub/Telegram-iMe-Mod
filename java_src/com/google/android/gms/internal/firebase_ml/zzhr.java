package com.google.android.gms.internal.firebase_ml;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class zzhr extends ByteArrayOutputStream {
    private boolean closed;
    private final Logger logger;
    private int zzzs;
    private final int zzzt;
    private final Level zzzu;

    public zzhr(Logger logger, Level level, int i) {
        this.logger = (Logger) zzkv.checkNotNull(logger);
        this.zzzu = (Level) zzkv.checkNotNull(level);
        zzkv.checkArgument(i >= 0);
        this.zzzt = i;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i) {
        zzkv.checkArgument(!this.closed);
        this.zzzs++;
        if (((ByteArrayOutputStream) this).count < this.zzzt) {
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        zzkv.checkArgument(!this.closed);
        this.zzzs += i2;
        int i3 = ((ByteArrayOutputStream) this).count;
        int i4 = this.zzzt;
        if (i3 < i4) {
            int i5 = i3 + i2;
            if (i5 > i4) {
                i2 += i4 - i5;
            }
            super.write(bArr, i, i2);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (!this.closed) {
            if (this.zzzs != 0) {
                StringBuilder sb = new StringBuilder("Total: ");
                zza(sb, this.zzzs);
                int i = ((ByteArrayOutputStream) this).count;
                if (i != 0 && i < this.zzzs) {
                    sb.append(" (logging first ");
                    zza(sb, ((ByteArrayOutputStream) this).count);
                    sb.append(")");
                }
                this.logger.logp(Level.CONFIG, "com.google.api.client.util.LoggingByteArrayOutputStream", "close", sb.toString());
                if (((ByteArrayOutputStream) this).count != 0) {
                    this.logger.logp(this.zzzu, "com.google.api.client.util.LoggingByteArrayOutputStream", "close", toString("UTF-8").replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", " "));
                }
            }
            this.closed = true;
        }
    }

    private static void zza(StringBuilder sb, int i) {
        if (i == 1) {
            sb.append("1 byte");
            return;
        }
        sb.append(NumberFormat.getInstance().format(i));
        sb.append(" bytes");
    }
}

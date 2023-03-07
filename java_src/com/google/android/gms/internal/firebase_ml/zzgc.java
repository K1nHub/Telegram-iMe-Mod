package com.google.android.gms.internal.firebase_ml;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
final class zzgc extends FilterInputStream {
    private long zzvs;
    private final /* synthetic */ zzgd zzvt;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgc(zzgd zzgdVar, InputStream inputStream) {
        super(inputStream);
        this.zzvt = zzgdVar;
        this.zzvs = 0L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read == -1) {
            zzfo();
        } else {
            this.zzvs += read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read == -1) {
            zzfo();
        } else {
            this.zzvs++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long skip = ((FilterInputStream) this).in.skip(j);
        this.zzvs += skip;
        return skip;
    }

    private final void zzfo() throws IOException {
        long contentLength = this.zzvt.getContentLength();
        if (contentLength == -1) {
            return;
        }
        long j = this.zzvs;
        if (j == 0 || j >= contentLength) {
            return;
        }
        long j2 = this.zzvs;
        StringBuilder sb = new StringBuilder(102);
        sb.append("Connection closed prematurely: bytesRead = ");
        sb.append(j2);
        sb.append(", Content-Length = ");
        sb.append(contentLength);
        throw new IOException(sb.toString());
    }
}

package com.google.android.gms.wearable.internal;

import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.ChannelIOException;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzbv extends OutputStream {
    private final OutputStream zza;
    private volatile zzbe zzb;

    public zzbv(OutputStream outputStream) {
        this.zza = (OutputStream) Preconditions.checkNotNull(outputStream);
    }

    private final IOException zzb(IOException iOException) {
        zzbe zzbeVar = this.zzb;
        if (zzbeVar != null) {
            if (Log.isLoggable("ChannelOutputStream", 2)) {
                Log.v("ChannelOutputStream", "Caught IOException, but channel has been closed. Translating to ChannelIOException.", iOException);
            }
            return new ChannelIOException("Channel closed unexpectedly before stream was finished", zzbeVar.zza, zzbeVar.zzb);
        }
        return iOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzbe zzbeVar) {
        this.zzb = zzbeVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            this.zza.close();
        } catch (IOException e) {
            throw zzb(e);
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        try {
            this.zza.flush();
        } catch (IOException e) {
            throw zzb(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        try {
            this.zza.write(i);
        } catch (IOException e) {
            throw zzb(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        try {
            this.zza.write(bArr);
        } catch (IOException e) {
            throw zzb(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.zza.write(bArr, i, i2);
        } catch (IOException e) {
            throw zzb(e);
        }
    }
}

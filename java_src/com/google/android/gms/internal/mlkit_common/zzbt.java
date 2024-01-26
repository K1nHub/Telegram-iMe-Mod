package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ValueEncoderContext;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zzbt implements ValueEncoderContext {
    private boolean zza = false;
    private boolean zzb = false;
    private FieldDescriptor zzc;
    private final zzbp zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbt(zzbp zzbpVar) {
        this.zzd = zzbpVar;
    }

    private final void zzb() {
        if (this.zza) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.zza = true;
    }

    public final ValueEncoderContext add(double d) throws IOException {
        zzb();
        this.zzd.zza(this.zzc, d, this.zzb);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(FieldDescriptor fieldDescriptor, boolean z) {
        this.zza = false;
        this.zzc = fieldDescriptor;
        this.zzb = z;
    }

    public final ValueEncoderContext add(float f) throws IOException {
        zzb();
        this.zzd.zzb(this.zzc, f, this.zzb);
        return this;
    }

    public final ValueEncoderContext add(int i) throws IOException {
        zzb();
        this.zzd.zzd(this.zzc, i, this.zzb);
        return this;
    }

    public final ValueEncoderContext add(long j) throws IOException {
        zzb();
        this.zzd.zze(this.zzc, j, this.zzb);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext add(String str) throws IOException {
        zzb();
        this.zzd.zzc(this.zzc, str, this.zzb);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext add(boolean z) throws IOException {
        zzb();
        this.zzd.zzd(this.zzc, z ? 1 : 0, this.zzb);
        return this;
    }

    public final ValueEncoderContext add(byte[] bArr) throws IOException {
        zzb();
        this.zzd.zzc(this.zzc, bArr, this.zzb);
        return this;
    }
}

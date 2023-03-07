package com.google.android.gms.internal.measurement;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzis extends zziv {
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzis(byte[] bArr, int i, int i2) {
        super(bArr);
        zziy.zzj(0, i2, bArr.length);
        this.zzc = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zziv, com.google.android.gms.internal.measurement.zziy
    public final byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    protected final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zziv, com.google.android.gms.internal.measurement.zziy
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zziv, com.google.android.gms.internal.measurement.zziy
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return this.zza[i];
    }
}

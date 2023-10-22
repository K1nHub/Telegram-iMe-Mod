package com.google.android.gms.internal.wearable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzaq extends zzat {
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(byte[] bArr, int i, int i2) {
        super(bArr);
        zzaw.zzk(0, i2, bArr.length);
        this.zzc = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzat, com.google.android.gms.internal.wearable.zzaw
    public final byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.wearable.zzat
    protected final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.wearable.zzat, com.google.android.gms.internal.wearable.zzaw
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.wearable.zzat, com.google.android.gms.internal.wearable.zzaw
    protected final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, 0, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.wearable.zzat, com.google.android.gms.internal.wearable.zzaw
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
        }
        return this.zza[i];
    }
}

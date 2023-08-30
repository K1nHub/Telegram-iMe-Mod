package com.google.android.gms.internal.wearable;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public class zzat extends zzas {
    protected final byte[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzat(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzaw) && zzd() == ((zzaw) obj).zzd()) {
            if (zzd() == 0) {
                return true;
            }
            if (obj instanceof zzat) {
                zzat zzatVar = (zzat) obj;
                int zzl = zzl();
                int zzl2 = zzatVar.zzl();
                if (zzl == 0 || zzl2 == 0 || zzl == zzl2) {
                    int zzd = zzd();
                    if (zzd > zzatVar.zzd()) {
                        throw new IllegalArgumentException("Length too large: " + zzd + zzd());
                    } else if (zzd > zzatVar.zzd()) {
                        throw new IllegalArgumentException("Ran off end of other: 0, " + zzd + ", " + zzatVar.zzd());
                    } else {
                        byte[] bArr = this.zza;
                        byte[] bArr2 = zzatVar.zza;
                        zzatVar.zzc();
                        int i = 0;
                        int i2 = 0;
                        while (i < zzd) {
                            if (bArr[i] != bArr2[i2]) {
                                return false;
                            }
                            i++;
                            i2++;
                        }
                        return true;
                    }
                }
                return false;
            }
            return obj.equals(this);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public byte zza(int i) {
        return this.zza[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzaw
    public byte zzb(int i) {
        return this.zza[i];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    protected void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, 0, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    protected final int zzf(int i, int i2, int i3) {
        return zzcd.zzd(i, this.zza, 0, i3);
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public final zzaw zzg(int i, int i2) {
        int zzk = zzaw.zzk(0, i2, zzd());
        return zzk == 0 ? zzaw.zzb : new zzaq(this.zza, 0, zzk);
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    protected final String zzh(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzaw
    public final void zzi(zzam zzamVar) throws IOException {
        ((zzbb) zzamVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public final boolean zzj() {
        return zzet.zzf(this.zza, 0, zzd());
    }
}

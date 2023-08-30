package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public class zziv extends zziu {
    protected final byte[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziv(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zziy) && zzd() == ((zziy) obj).zzd()) {
            if (zzd() == 0) {
                return true;
            }
            if (obj instanceof zziv) {
                zziv zzivVar = (zziv) obj;
                int zzk = zzk();
                int zzk2 = zzivVar.zzk();
                if (zzk == 0 || zzk2 == 0 || zzk == zzk2) {
                    int zzd = zzd();
                    if (zzd > zzivVar.zzd()) {
                        int zzd2 = zzd();
                        StringBuilder sb = new StringBuilder(40);
                        sb.append("Length too large: ");
                        sb.append(zzd);
                        sb.append(zzd2);
                        throw new IllegalArgumentException(sb.toString());
                    } else if (zzd > zzivVar.zzd()) {
                        int zzd3 = zzivVar.zzd();
                        StringBuilder sb2 = new StringBuilder(59);
                        sb2.append("Ran off end of other: 0, ");
                        sb2.append(zzd);
                        sb2.append(", ");
                        sb2.append(zzd3);
                        throw new IllegalArgumentException(sb2.toString());
                    } else {
                        byte[] bArr = this.zza;
                        byte[] bArr2 = zzivVar.zza;
                        zzivVar.zzc();
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

    @Override // com.google.android.gms.internal.measurement.zziy
    public byte zza(int i) {
        return this.zza[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zziy
    public byte zzb(int i) {
        return this.zza[i];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    protected final int zze(int i, int i2, int i3) {
        return zzkh.zzd(i, this.zza, 0, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final zziy zzf(int i, int i2) {
        int zzj = zziy.zzj(0, i2, zzd());
        return zzj == 0 ? zziy.zzb : new zzis(this.zza, 0, zzj);
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    protected final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zziy
    public final void zzh(zzin zzinVar) throws IOException {
        ((zzjd) zzinVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final boolean zzi() {
        return zzmx.zzf(this.zza, 0, zzd());
    }
}

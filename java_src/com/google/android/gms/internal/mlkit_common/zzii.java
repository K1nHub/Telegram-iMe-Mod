package com.google.android.gms.internal.mlkit_common;

import java.io.IOException;
import java.util.Arrays;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public final class zzii {
    private static final zzii zza = new zzii(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    public static zzii zza() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzii zza(zzii zziiVar, zzii zziiVar2) {
        int i = zziiVar.zzb + zziiVar2.zzb;
        int[] copyOf = Arrays.copyOf(zziiVar.zzc, i);
        System.arraycopy(zziiVar2.zzc, 0, copyOf, zziiVar.zzb, zziiVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zziiVar.zzd, i);
        System.arraycopy(zziiVar2.zzd, 0, copyOf2, zziiVar.zzb, zziiVar2.zzb);
        return new zzii(i, copyOf, copyOf2, true);
    }

    private zzii() {
        this(0, new int[8], new Object[8], true);
    }

    private zzii(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public final void zzb() {
        this.zzf = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzjd zzjdVar) throws IOException {
        if (zzjdVar.zza() == zzjc.zzb) {
            for (int i = this.zzb - 1; i >= 0; i--) {
                zzjdVar.zza(this.zzc[i] >>> 3, this.zzd[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzjdVar.zza(this.zzc[i2] >>> 3, this.zzd[i2]);
        }
    }

    public final void zzb(zzjd zzjdVar) throws IOException {
        if (this.zzb == 0) {
            return;
        }
        if (zzjdVar.zza() == zzjc.zza) {
            for (int i = 0; i < this.zzb; i++) {
                zza(this.zzc[i], this.zzd[i], zzjdVar);
            }
            return;
        }
        for (int i2 = this.zzb - 1; i2 >= 0; i2--) {
            zza(this.zzc[i2], this.zzd[i2], zzjdVar);
        }
    }

    private static void zza(int i, Object obj, zzjd zzjdVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzjdVar.zza(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzjdVar.zzd(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzjdVar.zza(i2, (zzep) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                zzjdVar.zzd(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzgb.zza());
        } else if (zzjdVar.zza() == zzjc.zza) {
            zzjdVar.zza(i2);
            ((zzii) obj).zzb(zzjdVar);
            zzjdVar.zzb(i2);
        } else {
            zzjdVar.zzb(i2);
            ((zzii) obj).zzb(zzjdVar);
            zzjdVar.zza(i2);
        }
    }

    public final int zzc() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            i2 += zzfc.zzd(this.zzc[i3] >>> 3, (zzep) this.zzd[i3]);
        }
        this.zze = i2;
        return i2;
    }

    public final int zzd() {
        int zze;
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                zze = zzfc.zze(i5, ((Long) this.zzd[i3]).longValue());
            } else if (i6 == 1) {
                zze = zzfc.zzg(i5, ((Long) this.zzd[i3]).longValue());
            } else if (i6 == 2) {
                zze = zzfc.zzc(i5, (zzep) this.zzd[i3]);
            } else if (i6 == 3) {
                zze = (zzfc.zze(i5) << 1) + ((zzii) this.zzd[i3]).zzd();
            } else if (i6 == 5) {
                zze = zzfc.zzi(i5, ((Integer) this.zzd[i3]).intValue());
            } else {
                throw new IllegalStateException(zzgb.zza());
            }
            i2 += zze;
        }
        this.zze = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof zzii)) {
            zzii zziiVar = (zzii) obj;
            int i = this.zzb;
            if (i == zziiVar.zzb) {
                int[] iArr = this.zzc;
                int[] iArr2 = zziiVar.zzc;
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        z = true;
                        break;
                    } else if (iArr[i2] != iArr2[i2]) {
                        z = false;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z) {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zziiVar.zzd;
                    int i3 = this.zzb;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= i3) {
                            z2 = true;
                            break;
                        } else if (!objArr[i4].equals(objArr2[i4])) {
                            z2 = false;
                            break;
                        } else {
                            i4++;
                        }
                    }
                    if (z2) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = (i + 527) * 31;
        int[] iArr = this.zzc;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzhc.zza(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }
}

package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzmj {
    private static final zzmj zza = new zzmj(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzmj() {
        this(0, new int[8], new Object[8], true);
    }

    private zzmj(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzmj zzc() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzmj zzd(zzmj zzmjVar, zzmj zzmjVar2) {
        int i = zzmjVar.zzb + zzmjVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzmjVar.zzc, i);
        System.arraycopy(zzmjVar2.zzc, 0, copyOf, zzmjVar.zzb, zzmjVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzmjVar.zzd, i);
        System.arraycopy(zzmjVar2.zzd, 0, copyOf2, zzmjVar.zzb, zzmjVar2.zzb);
        return new zzmj(i, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzmj zze() {
        return new zzmj(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof zzmj)) {
            zzmj zzmjVar = (zzmj) obj;
            int i = this.zzb;
            if (i == zzmjVar.zzb) {
                int[] iArr = this.zzc;
                int[] iArr2 = zzmjVar.zzc;
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        Object[] objArr = this.zzd;
                        Object[] objArr2 = zzmjVar.zzd;
                        int i3 = this.zzb;
                        for (int i4 = 0; i4 < i3; i4++) {
                            if (objArr[i4].equals(objArr2[i4])) {
                            }
                        }
                        return true;
                    } else if (iArr[i2] != iArr2[i2]) {
                        break;
                    } else {
                        i2++;
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

    public final int zza() {
        int zzA;
        int zzB;
        int i;
        int i2 = this.zze;
        if (i2 == -1) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzb; i4++) {
                int i5 = this.zzc[i4];
                int i6 = i5 >>> 3;
                int i7 = i5 & 7;
                if (i7 != 0) {
                    if (i7 == 1) {
                        ((Long) this.zzd[i4]).longValue();
                        i = zzjg.zzA(i6 << 3) + 8;
                    } else if (i7 == 2) {
                        int zzA2 = zzjg.zzA(i6 << 3);
                        int zzd = ((zziy) this.zzd[i4]).zzd();
                        i3 += zzA2 + zzjg.zzA(zzd) + zzd;
                    } else if (i7 == 3) {
                        int zzz = zzjg.zzz(i6);
                        zzA = zzz + zzz;
                        zzB = ((zzmj) this.zzd[i4]).zza();
                    } else if (i7 == 5) {
                        ((Integer) this.zzd[i4]).intValue();
                        i = zzjg.zzA(i6 << 3) + 4;
                    } else {
                        throw new IllegalStateException(zzkj.zza());
                    }
                    i3 += i;
                } else {
                    long longValue = ((Long) this.zzd[i4]).longValue();
                    zzA = zzjg.zzA(i6 << 3);
                    zzB = zzjg.zzB(longValue);
                }
                i = zzA + zzB;
                i3 += i;
            }
            this.zze = i3;
            return i3;
        }
        return i2;
    }

    public final int zzb() {
        int i = this.zze;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzb; i3++) {
                int i4 = this.zzc[i3];
                int zzA = zzjg.zzA(8);
                int zzd = ((zziy) this.zzd[i3]).zzd();
                i2 += zzA + zzA + zzjg.zzA(16) + zzjg.zzA(i4 >>> 3) + zzjg.zzA(24) + zzjg.zzA(zzd) + zzd;
            }
            this.zze = i2;
            return i2;
        }
        return i;
    }

    public final void zzf() {
        this.zzf = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzg(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzli.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzh(int i, Object obj) {
        if (this.zzf) {
            int i2 = this.zzb;
            int[] iArr = this.zzc;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.zzc = Arrays.copyOf(iArr, i3);
                this.zzd = Arrays.copyOf(this.zzd, i3);
            }
            int[] iArr2 = this.zzc;
            int i4 = this.zzb;
            iArr2[i4] = i;
            this.zzd[i4] = obj;
            this.zzb = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void zzi(zzjh zzjhVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    zzjhVar.zzt(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzjhVar.zzm(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzjhVar.zzd(i3, (zziy) obj);
                } else if (i4 == 3) {
                    zzjhVar.zzE(i3);
                    ((zzmj) obj).zzi(zzjhVar);
                    zzjhVar.zzh(i3);
                } else if (i4 == 5) {
                    zzjhVar.zzk(i3, ((Integer) obj).intValue());
                } else {
                    throw new RuntimeException(zzkj.zza());
                }
            }
        }
    }
}

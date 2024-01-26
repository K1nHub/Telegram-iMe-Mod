package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzuu;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzxp {
    private static final zzxp zzbwu = new zzxp(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzboj;
    private int zzbsp;
    private Object[] zzbvg;
    private int[] zzbwv;

    public static zzxp zztn() {
        return zzbwu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzxp zzto() {
        return new zzxp();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzxp zza(zzxp zzxpVar, zzxp zzxpVar2) {
        int i = zzxpVar.count + zzxpVar2.count;
        int[] copyOf = Arrays.copyOf(zzxpVar.zzbwv, i);
        System.arraycopy(zzxpVar2.zzbwv, 0, copyOf, zzxpVar.count, zzxpVar2.count);
        Object[] copyOf2 = Arrays.copyOf(zzxpVar.zzbvg, i);
        System.arraycopy(zzxpVar2.zzbvg, 0, copyOf2, zzxpVar.count, zzxpVar2.count);
        return new zzxp(i, copyOf, copyOf2, true);
    }

    private zzxp() {
        this(0, new int[8], new Object[8], true);
    }

    private zzxp(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzbsp = -1;
        this.count = i;
        this.zzbwv = iArr;
        this.zzbvg = objArr;
        this.zzboj = z;
    }

    public final void zzqa() {
        this.zzboj = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzyj zzyjVar) throws IOException {
        if (zzyjVar.zzqo() == zzuu.zze.zzbti) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzyjVar.zza(this.zzbwv[i] >>> 3, this.zzbvg[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzyjVar.zza(this.zzbwv[i2] >>> 3, this.zzbvg[i2]);
        }
    }

    public final void zzb(zzyj zzyjVar) throws IOException {
        if (this.count == 0) {
            return;
        }
        if (zzyjVar.zzqo() == zzuu.zze.zzbth) {
            for (int i = 0; i < this.count; i++) {
                zzb(this.zzbwv[i], this.zzbvg[i], zzyjVar);
            }
            return;
        }
        for (int i2 = this.count - 1; i2 >= 0; i2--) {
            zzb(this.zzbwv[i2], this.zzbvg[i2], zzyjVar);
        }
    }

    private static void zzb(int i, Object obj, zzyj zzyjVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzyjVar.zzi(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzyjVar.zzc(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzyjVar.zza(i2, (zztn) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                zzyjVar.zzl(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzve.zzrw());
        } else if (zzyjVar.zzqo() == zzuu.zze.zzbth) {
            zzyjVar.zzdf(i2);
            ((zzxp) obj).zzb(zzyjVar);
            zzyjVar.zzdg(i2);
        } else {
            zzyjVar.zzdg(i2);
            ((zzxp) obj).zzb(zzyjVar);
            zzyjVar.zzdf(i2);
        }
    }

    public final int zztp() {
        int i = this.zzbsp;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            i2 += zzue.zzd(this.zzbwv[i3] >>> 3, (zztn) this.zzbvg[i3]);
        }
        this.zzbsp = i2;
        return i2;
    }

    public final int zzre() {
        int zze;
        int i = this.zzbsp;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            int i4 = this.zzbwv[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                zze = zzue.zze(i5, ((Long) this.zzbvg[i3]).longValue());
            } else if (i6 == 1) {
                zze = zzue.zzg(i5, ((Long) this.zzbvg[i3]).longValue());
            } else if (i6 == 2) {
                zze = zzue.zzc(i5, (zztn) this.zzbvg[i3]);
            } else if (i6 == 3) {
                zze = (zzue.zzcv(i5) << 1) + ((zzxp) this.zzbvg[i3]).zzre();
            } else if (i6 == 5) {
                zze = zzue.zzp(i5, ((Integer) this.zzbvg[i3]).intValue());
            } else {
                throw new IllegalStateException(zzve.zzrw());
            }
            i2 += zze;
        }
        this.zzbsp = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof zzxp)) {
            zzxp zzxpVar = (zzxp) obj;
            int i = this.count;
            if (i == zzxpVar.count) {
                int[] iArr = this.zzbwv;
                int[] iArr2 = zzxpVar.zzbwv;
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
                    Object[] objArr = this.zzbvg;
                    Object[] objArr2 = zzxpVar.zzbvg;
                    int i3 = this.count;
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
        int i = this.count;
        int i2 = (i + 527) * 31;
        int[] iArr = this.zzbwv;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.zzbvg;
        int i7 = this.count;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzwj.zza(sb, i, String.valueOf(this.zzbwv[i2] >>> 3), this.zzbvg[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(int i, Object obj) {
        if (!this.zzboj) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.count;
        int[] iArr = this.zzbwv;
        if (i2 == iArr.length) {
            int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
            this.zzbwv = Arrays.copyOf(iArr, i3);
            this.zzbvg = Arrays.copyOf(this.zzbvg, i3);
        }
        int[] iArr2 = this.zzbwv;
        int i4 = this.count;
        iArr2[i4] = i;
        this.zzbvg[i4] = obj;
        this.count = i4 + 1;
    }
}

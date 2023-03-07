package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public final class zzgy extends zzgx {
    private static final byte[] zzxg = {13, 10};
    private static final byte[] zzxh = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] zzxi = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    private static final byte[] zzxj = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};
    private final byte[] zzxk;
    private final byte[] zzxl;
    private final byte[] zzxm;
    private final int zzxn;
    private final int zzxo;

    public zzgy() {
        this(0);
    }

    private zzgy(int i) {
        this(0, zzxg);
    }

    private zzgy(int i, byte[] bArr) {
        this(0, bArr, false);
    }

    private zzgy(int i, byte[] bArr, boolean z) {
        super(3, 4, i, bArr == null ? 0 : bArr.length);
        boolean z2;
        this.zzxl = zzxj;
        if (bArr != null) {
            for (byte b : bArr) {
                if (this.zzxb == b || zza(b)) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
            if (z2) {
                throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + zzgz.zzd(bArr) + "]");
            } else if (i > 0) {
                this.zzxo = bArr.length + 4;
                byte[] bArr2 = new byte[bArr.length];
                this.zzxm = bArr2;
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            } else {
                this.zzxo = 4;
                this.zzxm = null;
            }
        } else {
            this.zzxo = 4;
            this.zzxm = null;
        }
        this.zzxn = this.zzxo - 1;
        this.zzxk = z ? zzxi : zzxh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzgx
    public final void zza(byte[] bArr, int i, int i2, zzha zzhaVar) {
        if (zzhaVar.eof) {
            return;
        }
        if (i2 >= 0) {
            int i3 = 0;
            while (i3 < i2) {
                byte[] zza = zza(this.zzxo, zzhaVar);
                int i4 = (zzhaVar.zzxs + 1) % 3;
                zzhaVar.zzxs = i4;
                int i5 = i + 1;
                int i6 = bArr[i];
                if (i6 < 0) {
                    i6 += 256;
                }
                int i7 = (zzhaVar.zzxp << 8) + i6;
                zzhaVar.zzxp = i7;
                if (i4 == 0) {
                    int i8 = zzhaVar.pos;
                    int i9 = i8 + 1;
                    zzhaVar.pos = i9;
                    byte[] bArr2 = this.zzxk;
                    zza[i8] = bArr2[(i7 >> 18) & 63];
                    int i10 = i9 + 1;
                    zzhaVar.pos = i10;
                    zza[i9] = bArr2[(i7 >> 12) & 63];
                    int i11 = i10 + 1;
                    zzhaVar.pos = i11;
                    zza[i10] = bArr2[(i7 >> 6) & 63];
                    int i12 = i11 + 1;
                    zzhaVar.pos = i12;
                    zza[i11] = bArr2[i7 & 63];
                    int i13 = zzhaVar.zzxr + 4;
                    zzhaVar.zzxr = i13;
                    int i14 = this.zzxe;
                    if (i14 > 0 && i14 <= i13) {
                        byte[] bArr3 = this.zzxm;
                        System.arraycopy(bArr3, 0, zza, i12, bArr3.length);
                        zzhaVar.pos += this.zzxm.length;
                        zzhaVar.zzxr = 0;
                    }
                }
                i3++;
                i = i5;
            }
            return;
        }
        zzhaVar.eof = true;
        if (zzhaVar.zzxs == 0 && this.zzxe == 0) {
            return;
        }
        byte[] zza2 = zza(this.zzxo, zzhaVar);
        int i15 = zzhaVar.pos;
        int i16 = zzhaVar.zzxs;
        if (i16 != 0) {
            if (i16 == 1) {
                int i17 = i15 + 1;
                zzhaVar.pos = i17;
                byte[] bArr4 = this.zzxk;
                int i18 = zzhaVar.zzxp;
                zza2[i15] = bArr4[(i18 >> 2) & 63];
                int i19 = i17 + 1;
                zzhaVar.pos = i19;
                zza2[i17] = bArr4[(i18 << 4) & 63];
                if (bArr4 == zzxh) {
                    int i20 = i19 + 1;
                    zzhaVar.pos = i20;
                    byte b = this.zzxb;
                    zza2[i19] = b;
                    zzhaVar.pos = i20 + 1;
                    zza2[i20] = b;
                }
            } else if (i16 == 2) {
                int i21 = i15 + 1;
                zzhaVar.pos = i21;
                byte[] bArr5 = this.zzxk;
                int i22 = zzhaVar.zzxp;
                zza2[i15] = bArr5[(i22 >> 10) & 63];
                int i23 = i21 + 1;
                zzhaVar.pos = i23;
                zza2[i21] = bArr5[(i22 >> 4) & 63];
                int i24 = i23 + 1;
                zzhaVar.pos = i24;
                zza2[i23] = bArr5[(i22 << 2) & 63];
                if (bArr5 == zzxh) {
                    zzhaVar.pos = i24 + 1;
                    zza2[i24] = this.zzxb;
                }
            } else {
                throw new IllegalStateException("Impossible modulus " + zzhaVar.zzxs);
            }
        }
        int i25 = zzhaVar.zzxr;
        int i26 = zzhaVar.pos;
        int i27 = i25 + (i26 - i15);
        zzhaVar.zzxr = i27;
        if (this.zzxe <= 0 || i27 <= 0) {
            return;
        }
        byte[] bArr6 = this.zzxm;
        System.arraycopy(bArr6, 0, zza2, i26, bArr6.length);
        zzhaVar.pos += this.zzxm.length;
    }

    public static String zzc(byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            zzgy zzgyVar = new zzgy(0, zzxg, true);
            long zzb = zzgyVar.zzb(bArr);
            if (zzb > 2147483647L) {
                throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + zzb + ") than the specified maximum size of 2147483647");
            } else if (bArr.length != 0) {
                zzha zzhaVar = new zzha();
                zzgyVar.zza(bArr, 0, bArr.length, zzhaVar);
                zzgyVar.zza(bArr, 0, -1, zzhaVar);
                int i = zzhaVar.pos;
                int i2 = zzhaVar.zzxq;
                int i3 = i - i2;
                byte[] bArr2 = new byte[i3];
                byte[] bArr3 = zzhaVar.buffer;
                if (bArr3 != null) {
                    int min = Math.min(bArr3 != null ? i - i2 : 0, i3);
                    System.arraycopy(zzhaVar.buffer, zzhaVar.zzxq, bArr2, 0, min);
                    int i4 = zzhaVar.zzxq + min;
                    zzhaVar.zzxq = i4;
                    if (i4 >= zzhaVar.pos) {
                        zzhaVar.buffer = null;
                    }
                }
                bArr = bArr2;
            }
        }
        return zzgz.zzd(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.firebase_ml.zzgx
    public final boolean zza(byte b) {
        if (b >= 0) {
            byte[] bArr = this.zzxl;
            return b < bArr.length && bArr[b] != -1;
        }
        return false;
    }
}

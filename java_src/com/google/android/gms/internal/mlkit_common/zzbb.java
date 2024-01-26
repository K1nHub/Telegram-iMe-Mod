package com.google.android.gms.internal.mlkit_common;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zzbb extends zzat {
    static final zzat zza = new zzbb(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient Object zzc;
    private final transient int zzd;

    private zzbb(Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object[]] */
    public static zzbb zzg(int i, Object[] objArr, zzas zzasVar) {
        short[] sArr;
        char c;
        char c2;
        byte[] bArr;
        byte[] bArr2;
        int i2 = i;
        Object[] objArr2 = objArr;
        if (i2 == 0) {
            return (zzbb) zza;
        }
        Object obj = null;
        int i3 = 1;
        if (i2 == 1) {
            Object obj2 = objArr2[0];
            obj2.getClass();
            Object obj3 = objArr2[1];
            obj3.getClass();
            zzah.zza(obj2, obj3);
            return new zzbb(null, objArr2, 1);
        }
        zzae.zzb(i2, objArr2.length >> 1, "index");
        int max = Math.max(i2, 2);
        int i4 = 1073741824;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            i4 = highestOneBit + highestOneBit;
            while (i4 * 0.7d < max) {
                i4 += i4;
            }
        } else if (max >= 1073741824) {
            throw new IllegalArgumentException("collection too large");
        }
        if (i2 == 1) {
            Object obj4 = objArr2[0];
            obj4.getClass();
            Object obj5 = objArr2[1];
            obj5.getClass();
            zzah.zza(obj4, obj5);
            i2 = 1;
            c = 1;
            c2 = 2;
        } else {
            int i5 = i4 - 1;
            char c3 = 65535;
            if (i4 <= 128) {
                byte[] bArr3 = new byte[i4];
                Arrays.fill(bArr3, (byte) -1);
                int i6 = 0;
                int i7 = 0;
                while (i6 < i2) {
                    int i8 = i7 + i7;
                    int i9 = i6 + i6;
                    Object obj6 = objArr2[i9];
                    obj6.getClass();
                    Object obj7 = objArr2[i9 ^ i3];
                    obj7.getClass();
                    zzah.zza(obj6, obj7);
                    int zza2 = zzaj.zza(obj6.hashCode());
                    while (true) {
                        int i10 = zza2 & i5;
                        int i11 = bArr3[i10] & 255;
                        if (i11 != 255) {
                            if (obj6.equals(objArr2[i11])) {
                                int i12 = i11 ^ 1;
                                Object obj8 = objArr2[i12];
                                obj8.getClass();
                                zzar zzarVar = new zzar(obj6, obj7, obj8);
                                objArr2[i12] = obj7;
                                obj = zzarVar;
                                break;
                            }
                            zza2 = i10 + 1;
                        } else {
                            bArr3[i10] = (byte) i8;
                            if (i7 < i6) {
                                objArr2[i8] = obj6;
                                objArr2[i8 ^ 1] = obj7;
                            }
                            i7++;
                        }
                    }
                    i6++;
                    i3 = 1;
                }
                if (i7 == i2) {
                    bArr = bArr3;
                } else {
                    bArr2 = new Object[]{bArr3, Integer.valueOf(i7), obj};
                    c2 = 2;
                    c = 1;
                    obj = bArr2;
                }
            } else if (i4 <= 32768) {
                sArr = new short[i4];
                Arrays.fill(sArr, (short) -1);
                int i13 = 0;
                for (int i14 = 0; i14 < i2; i14++) {
                    int i15 = i13 + i13;
                    int i16 = i14 + i14;
                    Object obj9 = objArr2[i16];
                    obj9.getClass();
                    Object obj10 = objArr2[i16 ^ 1];
                    obj10.getClass();
                    zzah.zza(obj9, obj10);
                    int zza3 = zzaj.zza(obj9.hashCode());
                    while (true) {
                        int i17 = zza3 & i5;
                        char c4 = (char) sArr[i17];
                        if (c4 != 65535) {
                            if (obj9.equals(objArr2[c4])) {
                                int i18 = c4 ^ 1;
                                Object obj11 = objArr2[i18];
                                obj11.getClass();
                                zzar zzarVar2 = new zzar(obj9, obj10, obj11);
                                objArr2[i18] = obj10;
                                obj = zzarVar2;
                                break;
                            }
                            zza3 = i17 + 1;
                        } else {
                            sArr[i17] = (short) i15;
                            if (i13 < i14) {
                                objArr2[i15] = obj9;
                                objArr2[i15 ^ 1] = obj10;
                            }
                            i13++;
                        }
                    }
                }
                if (i13 != i2) {
                    c2 = 2;
                    obj = new Object[]{sArr, Integer.valueOf(i13), obj};
                    c = 1;
                }
                bArr = sArr;
            } else {
                int i19 = 1;
                sArr = new int[i4];
                Arrays.fill((int[]) sArr, -1);
                int i20 = 0;
                int i21 = 0;
                while (i20 < i2) {
                    int i22 = i21 + i21;
                    int i23 = i20 + i20;
                    Object obj12 = objArr2[i23];
                    obj12.getClass();
                    Object obj13 = objArr2[i23 ^ i19];
                    obj13.getClass();
                    zzah.zza(obj12, obj13);
                    int zza4 = zzaj.zza(obj12.hashCode());
                    while (true) {
                        int i24 = zza4 & i5;
                        ?? r15 = sArr[i24];
                        if (r15 != c3) {
                            if (obj12.equals(objArr2[r15])) {
                                int i25 = r15 ^ 1;
                                Object obj14 = objArr2[i25];
                                obj14.getClass();
                                zzar zzarVar3 = new zzar(obj12, obj13, obj14);
                                objArr2[i25] = obj13;
                                obj = zzarVar3;
                                break;
                            }
                            zza4 = i24 + 1;
                            c3 = 65535;
                        } else {
                            sArr[i24] = i22;
                            if (i21 < i20) {
                                objArr2[i22] = obj12;
                                objArr2[i22 ^ 1] = obj13;
                            }
                            i21++;
                        }
                    }
                    i20++;
                    i19 = 1;
                    c3 = 65535;
                }
                if (i21 != i2) {
                    c = 1;
                    c2 = 2;
                    obj = new Object[]{sArr, Integer.valueOf(i21), obj};
                }
                bArr = sArr;
            }
            c2 = 2;
            bArr2 = bArr;
            c = 1;
            obj = bArr2;
        }
        if (obj instanceof Object[]) {
            Object[] objArr3 = (Object[]) obj;
            zzar zzarVar4 = (zzar) objArr3[c2];
            if (zzasVar != null) {
                zzasVar.zzc = zzarVar4;
                Object obj15 = objArr3[0];
                int intValue = ((Integer) objArr3[c]).intValue();
                objArr2 = Arrays.copyOf(objArr2, intValue + intValue);
                obj = obj15;
                i2 = intValue;
            } else {
                throw zzarVar4.zza();
            }
        }
        return new zzbb(obj, objArr2, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f A[RETURN] */
    @Override // com.google.android.gms.internal.mlkit_common.zzat, java.util.Map, p033j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L6
        L3:
            r10 = r0
            goto L9c
        L6:
            int r1 = r9.zzd
            java.lang.Object[] r2 = r9.zzb
            r3 = 1
            if (r1 != r3) goto L20
            r1 = 0
            r1 = r2[r1]
            r1.getClass()
            boolean r10 = r1.equals(r10)
            if (r10 == 0) goto L3
            r10 = r2[r3]
            r10.getClass()
            goto L9c
        L20:
            java.lang.Object r1 = r9.zzc
            if (r1 != 0) goto L25
            goto L3
        L25:
            boolean r4 = r1 instanceof byte[]
            r5 = -1
            if (r4 == 0) goto L51
            r4 = r1
            byte[] r4 = (byte[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.mlkit_common.zzaj.zza(r1)
        L38:
            r1 = r1 & r6
            r5 = r4[r1]
            r7 = 255(0xff, float:3.57E-43)
            r5 = r5 & r7
            if (r5 != r7) goto L41
            goto L3
        L41:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L4e
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L4e:
            int r1 = r1 + 1
            goto L38
        L51:
            boolean r4 = r1 instanceof short[]
            if (r4 == 0) goto L7d
            r4 = r1
            short[] r4 = (short[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.mlkit_common.zzaj.zza(r1)
        L63:
            r1 = r1 & r6
            short r5 = r4[r1]
            char r5 = (char) r5
            r7 = 65535(0xffff, float:9.1834E-41)
            if (r5 != r7) goto L6d
            goto L3
        L6d:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L7a
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L7a:
            int r1 = r1 + 1
            goto L63
        L7d:
            int[] r1 = (int[]) r1
            int r4 = r1.length
            int r4 = r4 + r5
            int r6 = r10.hashCode()
            int r6 = com.google.android.gms.internal.mlkit_common.zzaj.zza(r6)
        L89:
            r6 = r6 & r4
            r7 = r1[r6]
            if (r7 != r5) goto L90
            goto L3
        L90:
            r8 = r2[r7]
            boolean r8 = r10.equals(r8)
            if (r8 == 0) goto La0
            r10 = r7 ^ 1
            r10 = r2[r10]
        L9c:
            if (r10 != 0) goto L9f
            return r0
        L9f:
            return r10
        La0:
            int r6 = r6 + 1
            goto L89
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.zzbb.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, p033j$.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzat
    final zzam zza() {
        return new zzba(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzat
    final zzau zzd() {
        return new zzay(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzat
    final zzau zze() {
        return new zzaz(this, new zzba(this.zzb, 0, this.zzd));
    }
}

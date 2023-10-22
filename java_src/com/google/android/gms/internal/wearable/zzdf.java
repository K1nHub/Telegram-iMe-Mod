package com.google.android.gms.internal.wearable;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzdf<T> implements zzdn<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzeo.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzdc zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzcq zzm;
    private final zzee zzn;
    private final zzbk zzo;
    private final zzdh zzp;
    private final zzcx zzq;

    private zzdf(int[] iArr, Object[] objArr, int i, int i2, zzdc zzdcVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzdh zzdhVar, zzcq zzcqVar, zzee zzeeVar, zzbk zzbkVar, zzcx zzcxVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = z;
        boolean z3 = false;
        if (zzbkVar != null && zzbkVar.zzc(zzdcVar)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzp = zzdhVar;
        this.zzm = zzcqVar;
        this.zzn = zzeeVar;
        this.zzo = zzbkVar;
        this.zzg = zzdcVar;
        this.zzq = zzcxVar;
    }

    private static int zzA(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzB(int i) {
        return this.zzc[i + 1];
    }

    private static long zzC(Object obj, long j) {
        return ((Long) zzeo.zzf(obj, j)).longValue();
    }

    private final zzbz zzD(int i) {
        int i2 = i / 3;
        return (zzbz) this.zzd[i2 + i2 + 1];
    }

    private final zzdn zzE(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzdn zzdnVar = (zzdn) this.zzd[i3];
        if (zzdnVar != null) {
            return zzdnVar;
        }
        zzdn zzb2 = zzdk.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzF(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzG(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private final void zzH(Object obj, Object obj2, int i) {
        long zzB = zzB(i) & 1048575;
        if (zzO(obj2, i)) {
            Object zzf = zzeo.zzf(obj, zzB);
            Object zzf2 = zzeo.zzf(obj2, zzB);
            if (zzf != null && zzf2 != null) {
                zzeo.zzs(obj, zzB, zzcd.zzg(zzf, zzf2));
                zzJ(obj, i);
            } else if (zzf2 != null) {
                zzeo.zzs(obj, zzB, zzf2);
                zzJ(obj, i);
            }
        }
    }

    private final void zzI(Object obj, Object obj2, int i) {
        int zzB = zzB(i);
        int i2 = this.zzc[i];
        long j = zzB & 1048575;
        if (zzR(obj2, i2, i)) {
            Object zzf = zzR(obj, i2, i) ? zzeo.zzf(obj, j) : null;
            Object zzf2 = zzeo.zzf(obj2, j);
            if (zzf != null && zzf2 != null) {
                zzeo.zzs(obj, j, zzcd.zzg(zzf, zzf2));
                zzK(obj, i2, i);
            } else if (zzf2 != null) {
                zzeo.zzs(obj, j, zzf2);
                zzK(obj, i2, i);
            }
        }
    }

    private final void zzJ(Object obj, int i) {
        int zzy = zzy(i);
        long j = 1048575 & zzy;
        if (j == 1048575) {
            return;
        }
        zzeo.zzq(obj, j, (1 << (zzy >>> 20)) | zzeo.zzc(obj, j));
    }

    private final void zzK(Object obj, int i, int i2) {
        zzeo.zzq(obj, zzy(i2) & 1048575, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final void zzL(Object obj, zzew zzewVar) throws IOException {
        int i;
        boolean z;
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int zzB = zzB(i4);
            int[] iArr = this.zzc;
            int i6 = iArr[i4];
            int zzA = zzA(zzB);
            if (zzA <= 17) {
                int i7 = iArr[i4 + 2];
                int i8 = i7 & i2;
                if (i8 != i3) {
                    i5 = unsafe.getInt(obj, i8);
                    i3 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            long j = zzB & i2;
            switch (zzA) {
                case 0:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzf(i6, zzeo.zza(obj, j));
                        break;
                    }
                case 1:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzo(i6, zzeo.zzb(obj, j));
                        break;
                    }
                case 2:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzt(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 3:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzJ(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 4:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzr(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 5:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzm(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 6:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzk(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 7:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzb(i6, zzeo.zzw(obj, j));
                        break;
                    }
                case 8:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzT(i6, unsafe.getObject(obj, j), zzewVar);
                        break;
                    }
                case 9:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzv(i6, unsafe.getObject(obj, j), zzE(i4));
                        break;
                    }
                case 10:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzd(i6, (zzaw) unsafe.getObject(obj, j));
                        break;
                    }
                case 11:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzH(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 12:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzi(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 13:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzw(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 14:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzy(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 15:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzA(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 16:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzC(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 17:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzewVar.zzq(i6, unsafe.getObject(obj, j), zzE(i4));
                        break;
                    }
                case 18:
                    zzdp.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 19:
                    zzdp.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 20:
                    zzdp.zzQ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 21:
                    zzdp.zzY(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 22:
                    zzdp.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 23:
                    zzdp.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 24:
                    zzdp.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 25:
                    zzdp.zzH(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 26:
                    zzdp.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar);
                    break;
                case 27:
                    zzdp.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, zzE(i4));
                    break;
                case 28:
                    zzdp.zzI(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar);
                    break;
                case 29:
                    z = false;
                    zzdp.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 30:
                    z = false;
                    zzdp.zzK(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 31:
                    z = false;
                    zzdp.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 32:
                    z = false;
                    zzdp.zzT(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 33:
                    z = false;
                    zzdp.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 34:
                    z = false;
                    zzdp.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, false);
                    break;
                case 35:
                    zzdp.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 36:
                    zzdp.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 37:
                    zzdp.zzQ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 38:
                    zzdp.zzY(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 39:
                    zzdp.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 40:
                    zzdp.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 41:
                    zzdp.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 42:
                    zzdp.zzH(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 43:
                    zzdp.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 44:
                    zzdp.zzK(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 45:
                    zzdp.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 46:
                    zzdp.zzT(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 47:
                    zzdp.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 48:
                    zzdp.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, true);
                    break;
                case 49:
                    zzdp.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zzewVar, zzE(i4));
                    break;
                case 50:
                    zzM(zzewVar, i6, unsafe.getObject(obj, j), i4);
                    break;
                case 51:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzf(i6, zzn(obj, j));
                    }
                    break;
                case 52:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzo(i6, zzo(obj, j));
                    }
                    break;
                case 53:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzt(i6, zzC(obj, j));
                    }
                    break;
                case 54:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzJ(i6, zzC(obj, j));
                    }
                    break;
                case 55:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzr(i6, zzr(obj, j));
                    }
                    break;
                case 56:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzm(i6, zzC(obj, j));
                    }
                    break;
                case 57:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzk(i6, zzr(obj, j));
                    }
                    break;
                case 58:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzb(i6, zzS(obj, j));
                    }
                    break;
                case 59:
                    if (zzR(obj, i6, i4)) {
                        zzT(i6, unsafe.getObject(obj, j), zzewVar);
                    }
                    break;
                case 60:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzv(i6, unsafe.getObject(obj, j), zzE(i4));
                    }
                    break;
                case 61:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzd(i6, (zzaw) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzH(i6, zzr(obj, j));
                    }
                    break;
                case 63:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzi(i6, zzr(obj, j));
                    }
                    break;
                case 64:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzw(i6, zzr(obj, j));
                    }
                    break;
                case 65:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzy(i6, zzC(obj, j));
                    }
                    break;
                case 66:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzA(i6, zzr(obj, j));
                    }
                    break;
                case 67:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzC(i6, zzC(obj, j));
                    }
                    break;
                case 68:
                    if (zzR(obj, i6, i4)) {
                        zzewVar.zzq(i6, unsafe.getObject(obj, j), zzE(i4));
                    }
                    break;
            }
            i4 += 3;
            i2 = 1048575;
        }
        zzee zzeeVar = this.zzn;
        zzeeVar.zzi(zzeeVar.zzc(obj), zzewVar);
    }

    private final void zzM(zzew zzewVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        zzcv zzcvVar = (zzcv) zzF(i2);
        throw null;
    }

    private final boolean zzN(Object obj, Object obj2, int i) {
        return zzO(obj, i) == zzO(obj2, i);
    }

    private final boolean zzO(Object obj, int i) {
        int zzy = zzy(i);
        long j = zzy & 1048575;
        if (j != 1048575) {
            return (zzeo.zzc(obj, j) & (1 << (zzy >>> 20))) != 0;
        }
        int zzB = zzB(i);
        long j2 = zzB & 1048575;
        switch (zzA(zzB)) {
            case 0:
                return Double.doubleToRawLongBits(zzeo.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzeo.zzb(obj, j2)) != 0;
            case 2:
                return zzeo.zzd(obj, j2) != 0;
            case 3:
                return zzeo.zzd(obj, j2) != 0;
            case 4:
                return zzeo.zzc(obj, j2) != 0;
            case 5:
                return zzeo.zzd(obj, j2) != 0;
            case 6:
                return zzeo.zzc(obj, j2) != 0;
            case 7:
                return zzeo.zzw(obj, j2);
            case 8:
                Object zzf = zzeo.zzf(obj, j2);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                } else if (zzf instanceof zzaw) {
                    return !zzaw.zzb.equals(zzf);
                } else {
                    throw new IllegalArgumentException();
                }
            case 9:
                return zzeo.zzf(obj, j2) != null;
            case 10:
                return !zzaw.zzb.equals(zzeo.zzf(obj, j2));
            case 11:
                return zzeo.zzc(obj, j2) != 0;
            case 12:
                return zzeo.zzc(obj, j2) != 0;
            case 13:
                return zzeo.zzc(obj, j2) != 0;
            case 14:
                return zzeo.zzd(obj, j2) != 0;
            case 15:
                return zzeo.zzc(obj, j2) != 0;
            case 16:
                return zzeo.zzd(obj, j2) != 0;
            case 17:
                return zzeo.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzP(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzO(obj, i);
        }
        return (i3 & i4) != 0;
    }

    private static boolean zzQ(Object obj, int i, zzdn zzdnVar) {
        return zzdnVar.zzk(zzeo.zzf(obj, i & 1048575));
    }

    private final boolean zzR(Object obj, int i, int i2) {
        return zzeo.zzc(obj, (long) (zzy(i2) & 1048575)) == i;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzeo.zzf(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zzew zzewVar) throws IOException {
        if (obj instanceof String) {
            zzewVar.zzF(i, (String) obj);
        } else {
            zzewVar.zzd(i, (zzaw) obj);
        }
    }

    static zzef zzd(Object obj) {
        zzbv zzbvVar = (zzbv) obj;
        zzef zzefVar = zzbvVar.zzc;
        if (zzefVar == zzef.zzc()) {
            zzef zze = zzef.zze();
            zzbvVar.zzc = zze;
            return zze;
        }
        return zzefVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzdf zzl(Class cls, zzcz zzczVar, zzdh zzdhVar, zzcq zzcqVar, zzee zzeeVar, zzbk zzbkVar, zzcx zzcxVar) {
        if (zzczVar instanceof zzdm) {
            return zzm((zzdm) zzczVar, zzdhVar, zzcqVar, zzeeVar, zzbkVar, zzcxVar);
        }
        zzeb zzebVar = (zzeb) zzczVar;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0385  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.google.android.gms.internal.wearable.zzdf zzm(com.google.android.gms.internal.wearable.zzdm r34, com.google.android.gms.internal.wearable.zzdh r35, com.google.android.gms.internal.wearable.zzcq r36, com.google.android.gms.internal.wearable.zzee r37, com.google.android.gms.internal.wearable.zzbk r38, com.google.android.gms.internal.wearable.zzcx r39) {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.wearable.zzdf.zzm(com.google.android.gms.internal.wearable.zzdm, com.google.android.gms.internal.wearable.zzdh, com.google.android.gms.internal.wearable.zzcq, com.google.android.gms.internal.wearable.zzee, com.google.android.gms.internal.wearable.zzbk, com.google.android.gms.internal.wearable.zzcx):com.google.android.gms.internal.wearable.zzdf");
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzeo.zzf(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzeo.zzf(obj, j)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zzp(Object obj) {
        int i;
        int zzA;
        int zzA2;
        int zzA3;
        int zzB;
        int zzA4;
        int zzv;
        int zzA5;
        int zzA6;
        int zzd;
        int zzA7;
        int i2;
        int zzu;
        boolean z;
        int zzd2;
        int zzi;
        int zzz;
        int zzA8;
        int i3;
        int zzA9;
        int zzA10;
        int zzA11;
        int zzB2;
        int zzA12;
        int zzd3;
        int zzA13;
        int i4;
        Unsafe unsafe = zzb;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < this.zzc.length) {
            int zzB3 = zzB(i7);
            int[] iArr = this.zzc;
            int i10 = iArr[i7];
            int zzA14 = zzA(zzB3);
            if (zzA14 <= 17) {
                int i11 = iArr[i7 + 2];
                int i12 = i11 & i5;
                i = 1 << (i11 >>> 20);
                if (i12 != i6) {
                    i9 = unsafe.getInt(obj, i12);
                    i6 = i12;
                }
            } else {
                i = 0;
            }
            long j = zzB3 & i5;
            switch (zzA14) {
                case 0:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA = zzbe.zzA(i10 << 3);
                        zzA5 = zzA + 8;
                        i8 += zzA5;
                        break;
                    }
                case 1:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA2 = zzbe.zzA(i10 << 3);
                        zzA5 = zzA2 + 4;
                        i8 += zzA5;
                        break;
                    }
                case 2:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        long j2 = unsafe.getLong(obj, j);
                        zzA3 = zzbe.zzA(i10 << 3);
                        zzB = zzbe.zzB(j2);
                        i8 += zzA3 + zzB;
                        break;
                    }
                case 3:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        long j3 = unsafe.getLong(obj, j);
                        zzA3 = zzbe.zzA(i10 << 3);
                        zzB = zzbe.zzB(j3);
                        i8 += zzA3 + zzB;
                        break;
                    }
                case 4:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        int i13 = unsafe.getInt(obj, j);
                        zzA4 = zzbe.zzA(i10 << 3);
                        zzv = zzbe.zzv(i13);
                        i2 = zzA4 + zzv;
                        i8 += i2;
                        break;
                    }
                case 5:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA = zzbe.zzA(i10 << 3);
                        zzA5 = zzA + 8;
                        i8 += zzA5;
                        break;
                    }
                case 6:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA2 = zzbe.zzA(i10 << 3);
                        zzA5 = zzA2 + 4;
                        i8 += zzA5;
                        break;
                    }
                case 7:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA5 = zzbe.zzA(i10 << 3) + 1;
                        i8 += zzA5;
                        break;
                    }
                case 8:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzaw) {
                            zzA6 = zzbe.zzA(i10 << 3);
                            zzd = ((zzaw) object).zzd();
                            zzA7 = zzbe.zzA(zzd);
                            i2 = zzA6 + zzA7 + zzd;
                            i8 += i2;
                            break;
                        } else {
                            zzA4 = zzbe.zzA(i10 << 3);
                            zzv = zzbe.zzy((String) object);
                            i2 = zzA4 + zzv;
                            i8 += i2;
                        }
                    }
                case 9:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA5 = zzdp.zzo(i10, unsafe.getObject(obj, j), zzE(i7));
                        i8 += zzA5;
                        break;
                    }
                case 10:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA6 = zzbe.zzA(i10 << 3);
                        zzd = ((zzaw) unsafe.getObject(obj, j)).zzd();
                        zzA7 = zzbe.zzA(zzd);
                        i2 = zzA6 + zzA7 + zzd;
                        i8 += i2;
                        break;
                    }
                case 11:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        int i14 = unsafe.getInt(obj, j);
                        zzA4 = zzbe.zzA(i10 << 3);
                        zzv = zzbe.zzA(i14);
                        i2 = zzA4 + zzv;
                        i8 += i2;
                        break;
                    }
                case 12:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        int i15 = unsafe.getInt(obj, j);
                        zzA4 = zzbe.zzA(i10 << 3);
                        zzv = zzbe.zzv(i15);
                        i2 = zzA4 + zzv;
                        i8 += i2;
                        break;
                    }
                case 13:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA2 = zzbe.zzA(i10 << 3);
                        zzA5 = zzA2 + 4;
                        i8 += zzA5;
                        break;
                    }
                case 14:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA = zzbe.zzA(i10 << 3);
                        zzA5 = zzA + 8;
                        i8 += zzA5;
                        break;
                    }
                case 15:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        int i16 = unsafe.getInt(obj, j);
                        zzA4 = zzbe.zzA(i10 << 3);
                        zzv = zzbe.zzA((i16 >> 31) ^ (i16 + i16));
                        i2 = zzA4 + zzv;
                        i8 += i2;
                        break;
                    }
                case 16:
                    if ((i & i9) == 0) {
                        break;
                    } else {
                        long j4 = unsafe.getLong(obj, j);
                        i8 += zzbe.zzA(i10 << 3) + zzbe.zzB((j4 >> 63) ^ (j4 + j4));
                        break;
                    }
                case 17:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzA5 = zzbe.zzu(i10, (zzdc) unsafe.getObject(obj, j), zzE(i7));
                        i8 += zzA5;
                        break;
                    }
                case 18:
                    zzA5 = zzdp.zzh(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzA5;
                    break;
                case 19:
                    zzA5 = zzdp.zzf(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzA5;
                    break;
                case 20:
                    zzA5 = zzdp.zzm(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzA5;
                    break;
                case 21:
                    zzA5 = zzdp.zzx(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzA5;
                    break;
                case 22:
                    zzA5 = zzdp.zzk(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzA5;
                    break;
                case 23:
                    zzA5 = zzdp.zzh(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzA5;
                    break;
                case 24:
                    zzA5 = zzdp.zzf(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzA5;
                    break;
                case 25:
                    zzA5 = zzdp.zza(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzA5;
                    break;
                case 26:
                    zzu = zzdp.zzu(i10, (List) unsafe.getObject(obj, j));
                    i8 += zzu;
                    break;
                case 27:
                    zzu = zzdp.zzp(i10, (List) unsafe.getObject(obj, j), zzE(i7));
                    i8 += zzu;
                    break;
                case 28:
                    zzu = zzdp.zzc(i10, (List) unsafe.getObject(obj, j));
                    i8 += zzu;
                    break;
                case 29:
                    zzu = zzdp.zzv(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzu;
                    break;
                case 30:
                    z = false;
                    zzd2 = zzdp.zzd(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 31:
                    z = false;
                    zzd2 = zzdp.zzf(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 32:
                    z = false;
                    zzd2 = zzdp.zzh(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 33:
                    z = false;
                    zzd2 = zzdp.zzq(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 34:
                    z = false;
                    zzd2 = zzdp.zzs(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 35:
                    zzi = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 36:
                    zzi = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 37:
                    zzi = zzdp.zzn((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 38:
                    zzi = zzdp.zzy((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 39:
                    zzi = zzdp.zzl((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 40:
                    zzi = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 41:
                    zzi = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 42:
                    zzi = zzdp.zzb((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 43:
                    zzi = zzdp.zzw((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 44:
                    zzi = zzdp.zze((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 45:
                    zzi = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 46:
                    zzi = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 47:
                    zzi = zzdp.zzr((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 48:
                    zzi = zzdp.zzt((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzz = zzbe.zzz(i10);
                        zzA8 = zzbe.zzA(zzi);
                        i3 = zzz + zzA8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 49:
                    zzu = zzdp.zzj(i10, (List) unsafe.getObject(obj, j), zzE(i7));
                    i8 += zzu;
                    break;
                case 50:
                    zzcx.zza(i10, unsafe.getObject(obj, j), zzF(i7));
                    break;
                case 51:
                    if (zzR(obj, i10, i7)) {
                        zzA9 = zzbe.zzA(i10 << 3);
                        zzu = zzA9 + 8;
                        i8 += zzu;
                    }
                    break;
                case 52:
                    if (zzR(obj, i10, i7)) {
                        zzA10 = zzbe.zzA(i10 << 3);
                        zzu = zzA10 + 4;
                        i8 += zzu;
                    }
                    break;
                case 53:
                    if (zzR(obj, i10, i7)) {
                        long zzC = zzC(obj, j);
                        zzA11 = zzbe.zzA(i10 << 3);
                        zzB2 = zzbe.zzB(zzC);
                        i8 += zzA11 + zzB2;
                    }
                    break;
                case 54:
                    if (zzR(obj, i10, i7)) {
                        long zzC2 = zzC(obj, j);
                        zzA11 = zzbe.zzA(i10 << 3);
                        zzB2 = zzbe.zzB(zzC2);
                        i8 += zzA11 + zzB2;
                    }
                    break;
                case 55:
                    if (zzR(obj, i10, i7)) {
                        int zzr = zzr(obj, j);
                        i3 = zzbe.zzA(i10 << 3);
                        zzi = zzbe.zzv(zzr);
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 56:
                    if (zzR(obj, i10, i7)) {
                        zzA9 = zzbe.zzA(i10 << 3);
                        zzu = zzA9 + 8;
                        i8 += zzu;
                    }
                    break;
                case 57:
                    if (zzR(obj, i10, i7)) {
                        zzA10 = zzbe.zzA(i10 << 3);
                        zzu = zzA10 + 4;
                        i8 += zzu;
                    }
                    break;
                case 58:
                    if (zzR(obj, i10, i7)) {
                        zzu = zzbe.zzA(i10 << 3) + 1;
                        i8 += zzu;
                    }
                    break;
                case 59:
                    if (zzR(obj, i10, i7)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzaw) {
                            zzA12 = zzbe.zzA(i10 << 3);
                            zzd3 = ((zzaw) object2).zzd();
                            zzA13 = zzbe.zzA(zzd3);
                            i4 = zzA12 + zzA13 + zzd3;
                            i8 += i4;
                        } else {
                            i3 = zzbe.zzA(i10 << 3);
                            zzi = zzbe.zzy((String) object2);
                            i4 = i3 + zzi;
                            i8 += i4;
                        }
                    }
                    break;
                case 60:
                    if (zzR(obj, i10, i7)) {
                        zzu = zzdp.zzo(i10, unsafe.getObject(obj, j), zzE(i7));
                        i8 += zzu;
                    }
                    break;
                case 61:
                    if (zzR(obj, i10, i7)) {
                        zzA12 = zzbe.zzA(i10 << 3);
                        zzd3 = ((zzaw) unsafe.getObject(obj, j)).zzd();
                        zzA13 = zzbe.zzA(zzd3);
                        i4 = zzA12 + zzA13 + zzd3;
                        i8 += i4;
                    }
                    break;
                case 62:
                    if (zzR(obj, i10, i7)) {
                        int zzr2 = zzr(obj, j);
                        i3 = zzbe.zzA(i10 << 3);
                        zzi = zzbe.zzA(zzr2);
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 63:
                    if (zzR(obj, i10, i7)) {
                        int zzr3 = zzr(obj, j);
                        i3 = zzbe.zzA(i10 << 3);
                        zzi = zzbe.zzv(zzr3);
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 64:
                    if (zzR(obj, i10, i7)) {
                        zzA10 = zzbe.zzA(i10 << 3);
                        zzu = zzA10 + 4;
                        i8 += zzu;
                    }
                    break;
                case 65:
                    if (zzR(obj, i10, i7)) {
                        zzA9 = zzbe.zzA(i10 << 3);
                        zzu = zzA9 + 8;
                        i8 += zzu;
                    }
                    break;
                case 66:
                    if (zzR(obj, i10, i7)) {
                        int zzr4 = zzr(obj, j);
                        i3 = zzbe.zzA(i10 << 3);
                        zzi = zzbe.zzA((zzr4 >> 31) ^ (zzr4 + zzr4));
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 67:
                    if (zzR(obj, i10, i7)) {
                        long zzC3 = zzC(obj, j);
                        i8 += zzbe.zzA(i10 << 3) + zzbe.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                    }
                    break;
                case 68:
                    if (zzR(obj, i10, i7)) {
                        zzu = zzbe.zzu(i10, (zzdc) unsafe.getObject(obj, j), zzE(i7));
                        i8 += zzu;
                    }
                    break;
            }
            i7 += 3;
            i5 = 1048575;
        }
        zzee zzeeVar = this.zzn;
        int zza2 = i8 + zzeeVar.zza(zzeeVar.zzc(obj));
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        return zza2;
    }

    private final int zzq(Object obj) {
        int zzA;
        int zzA2;
        int zzA3;
        int zzB;
        int zzA4;
        int zzv;
        int zzA5;
        int zzA6;
        int zzd;
        int zzA7;
        int zzo;
        int zzz;
        int zzA8;
        int i;
        Unsafe unsafe = zzb;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int zzB2 = zzB(i3);
            int zzA9 = zzA(zzB2);
            int i4 = this.zzc[i3];
            long j = zzB2 & 1048575;
            if (zzA9 >= zzbp.zzJ.zza() && zzA9 <= zzbp.zzW.zza()) {
                int i5 = this.zzc[i3 + 2];
            }
            switch (zzA9) {
                case 0:
                    if (zzO(obj, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzO(obj, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzO(obj, i3)) {
                        long zzd2 = zzeo.zzd(obj, j);
                        zzA3 = zzbe.zzA(i4 << 3);
                        zzB = zzbe.zzB(zzd2);
                        i2 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzO(obj, i3)) {
                        long zzd3 = zzeo.zzd(obj, j);
                        zzA3 = zzbe.zzA(i4 << 3);
                        zzB = zzbe.zzB(zzd3);
                        i2 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzO(obj, i3)) {
                        int zzc = zzeo.zzc(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzv(zzc);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzO(obj, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzO(obj, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzO(obj, i3)) {
                        zzA5 = zzbe.zzA(i4 << 3);
                        zzo = zzA5 + 1;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzO(obj, i3)) {
                        break;
                    } else {
                        Object zzf = zzeo.zzf(obj, j);
                        if (zzf instanceof zzaw) {
                            zzA6 = zzbe.zzA(i4 << 3);
                            zzd = ((zzaw) zzf).zzd();
                            zzA7 = zzbe.zzA(zzd);
                            i = zzA6 + zzA7 + zzd;
                            i2 += i;
                            break;
                        } else {
                            zzA4 = zzbe.zzA(i4 << 3);
                            zzv = zzbe.zzy((String) zzf);
                            i = zzA4 + zzv;
                            i2 += i;
                        }
                    }
                case 9:
                    if (zzO(obj, i3)) {
                        zzo = zzdp.zzo(i4, zzeo.zzf(obj, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzO(obj, i3)) {
                        zzA6 = zzbe.zzA(i4 << 3);
                        zzd = ((zzaw) zzeo.zzf(obj, j)).zzd();
                        zzA7 = zzbe.zzA(zzd);
                        i = zzA6 + zzA7 + zzd;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzO(obj, i3)) {
                        int zzc2 = zzeo.zzc(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzA(zzc2);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzO(obj, i3)) {
                        int zzc3 = zzeo.zzc(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzv(zzc3);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzO(obj, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzO(obj, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzO(obj, i3)) {
                        int zzc4 = zzeo.zzc(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzA((zzc4 >> 31) ^ (zzc4 + zzc4));
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzO(obj, i3)) {
                        long zzd4 = zzeo.zzd(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzB((zzd4 >> 63) ^ (zzd4 + zzd4));
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzO(obj, i3)) {
                        zzo = zzbe.zzu(i4, (zzdc) zzeo.zzf(obj, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzo = zzdp.zzh(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 19:
                    zzo = zzdp.zzf(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 20:
                    zzo = zzdp.zzm(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 21:
                    zzo = zzdp.zzx(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 22:
                    zzo = zzdp.zzk(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 23:
                    zzo = zzdp.zzh(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 24:
                    zzo = zzdp.zzf(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 25:
                    zzo = zzdp.zza(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 26:
                    zzo = zzdp.zzu(i4, (List) zzeo.zzf(obj, j));
                    i2 += zzo;
                    break;
                case 27:
                    zzo = zzdp.zzp(i4, (List) zzeo.zzf(obj, j), zzE(i3));
                    i2 += zzo;
                    break;
                case 28:
                    zzo = zzdp.zzc(i4, (List) zzeo.zzf(obj, j));
                    i2 += zzo;
                    break;
                case 29:
                    zzo = zzdp.zzv(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 30:
                    zzo = zzdp.zzd(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 31:
                    zzo = zzdp.zzf(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 32:
                    zzo = zzdp.zzh(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 33:
                    zzo = zzdp.zzq(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 34:
                    zzo = zzdp.zzs(i4, (List) zzeo.zzf(obj, j), false);
                    i2 += zzo;
                    break;
                case 35:
                    zzv = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzv = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzv = zzdp.zzn((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzv = zzdp.zzy((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzv = zzdp.zzl((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzv = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzv = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    zzv = zzdp.zzb((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzv = zzdp.zzw((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzv = zzdp.zze((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzv = zzdp.zzg((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzv = zzdp.zzi((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzv = zzdp.zzr((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzv = zzdp.zzt((List) unsafe.getObject(obj, j));
                    if (zzv > 0) {
                        zzz = zzbe.zzz(i4);
                        zzA8 = zzbe.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzo = zzdp.zzj(i4, (List) zzeo.zzf(obj, j), zzE(i3));
                    i2 += zzo;
                    break;
                case 50:
                    zzcx.zza(i4, zzeo.zzf(obj, j), zzF(i3));
                    break;
                case 51:
                    if (zzR(obj, i4, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i4, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i4, i3)) {
                        long zzC = zzC(obj, j);
                        zzA3 = zzbe.zzA(i4 << 3);
                        zzB = zzbe.zzB(zzC);
                        i2 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i4, i3)) {
                        long zzC2 = zzC(obj, j);
                        zzA3 = zzbe.zzA(i4 << 3);
                        zzB = zzbe.zzB(zzC2);
                        i2 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i4, i3)) {
                        int zzr = zzr(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzv(zzr);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i4, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i4, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i4, i3)) {
                        zzA5 = zzbe.zzA(i4 << 3);
                        zzo = zzA5 + 1;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!zzR(obj, i4, i3)) {
                        break;
                    } else {
                        Object zzf2 = zzeo.zzf(obj, j);
                        if (zzf2 instanceof zzaw) {
                            zzA6 = zzbe.zzA(i4 << 3);
                            zzd = ((zzaw) zzf2).zzd();
                            zzA7 = zzbe.zzA(zzd);
                            i = zzA6 + zzA7 + zzd;
                            i2 += i;
                            break;
                        } else {
                            zzA4 = zzbe.zzA(i4 << 3);
                            zzv = zzbe.zzy((String) zzf2);
                            i = zzA4 + zzv;
                            i2 += i;
                        }
                    }
                case 60:
                    if (zzR(obj, i4, i3)) {
                        zzo = zzdp.zzo(i4, zzeo.zzf(obj, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i4, i3)) {
                        zzA6 = zzbe.zzA(i4 << 3);
                        zzd = ((zzaw) zzeo.zzf(obj, j)).zzd();
                        zzA7 = zzbe.zzA(zzd);
                        i = zzA6 + zzA7 + zzd;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i4, i3)) {
                        int zzr2 = zzr(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzA(zzr2);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i4, i3)) {
                        int zzr3 = zzr(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzv(zzr3);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i4, i3)) {
                        zzA2 = zzbe.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i4, i3)) {
                        zzA = zzbe.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i4, i3)) {
                        int zzr4 = zzr(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzA((zzr4 >> 31) ^ (zzr4 + zzr4));
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i4, i3)) {
                        long zzC3 = zzC(obj, j);
                        zzA4 = zzbe.zzA(i4 << 3);
                        zzv = zzbe.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i4, i3)) {
                        zzo = zzbe.zzu(i4, (zzdc) zzeo.zzf(obj, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzee zzeeVar = this.zzn;
        return i2 + zzeeVar.zza(zzeeVar.zzc(obj));
    }

    private static int zzr(Object obj, long j) {
        return ((Integer) zzeo.zzf(obj, j)).intValue();
    }

    private final int zzs(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzaj zzajVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzF = zzF(i3);
        Object object = unsafe.getObject(obj, j);
        if (!((zzcw) object).zze()) {
            zzcw zzb2 = zzcw.zza().zzb();
            zzcx.zzb(zzb2, object);
            unsafe.putObject(obj, j, zzb2);
        }
        zzcv zzcvVar = (zzcv) zzF;
        throw null;
    }

    private final int zzt(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzaj zzajVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzak.zzn(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzak.zzb(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzm = zzak.zzm(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzajVar.zzb));
                    unsafe.putInt(obj, j2, i4);
                    return zzm;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zzj = zzak.zzj(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzajVar.zza));
                    unsafe.putInt(obj, j2, i4);
                    return zzj;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(zzak.zzn(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(zzak.zzb(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzm2 = zzak.zzm(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Boolean.valueOf(zzajVar.zzb != 0));
                    unsafe.putInt(obj, j2, i4);
                    return zzm2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int zzj2 = zzak.zzj(bArr, i, zzajVar);
                    int i9 = zzajVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(obj, j, "");
                    } else if ((i6 & 536870912) == 0 || zzet.zzf(bArr, zzj2, zzj2 + i9)) {
                        unsafe.putObject(obj, j, new String(bArr, zzj2, i9, zzcd.zzb));
                        zzj2 += i9;
                    } else {
                        throw zzcf.zzc();
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzj2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int zzd = zzak.zzd(zzE(i8), bArr, i, i2, zzajVar);
                    Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object == null) {
                        unsafe.putObject(obj, j, zzajVar.zzc);
                    } else {
                        unsafe.putObject(obj, j, zzcd.zzg(object, zzajVar.zzc));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzd;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zza2 = zzak.zza(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, zzajVar.zzc);
                    unsafe.putInt(obj, j2, i4);
                    return zza2;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int zzj3 = zzak.zzj(bArr, i, zzajVar);
                    int i10 = zzajVar.zza;
                    zzbz zzD = zzD(i8);
                    if (zzD == null || zzD.zza(i10)) {
                        unsafe.putObject(obj, j, Integer.valueOf(i10));
                        unsafe.putInt(obj, j2, i4);
                    } else {
                        zzd(obj).zzh(i3, Long.valueOf(i10));
                    }
                    return zzj3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int zzj4 = zzak.zzj(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzba.zzb(zzajVar.zza)));
                    unsafe.putInt(obj, j2, i4);
                    return zzj4;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzm3 = zzak.zzm(bArr, i, zzajVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzba.zzc(zzajVar.zzb)));
                    unsafe.putInt(obj, j2, i4);
                    return zzm3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int zzc = zzak.zzc(zzE(i8), bArr, i, i2, (i3 & (-8)) | 4, zzajVar);
                    Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(obj, j, zzajVar.zzc);
                    } else {
                        unsafe.putObject(obj, j, zzcd.zzg(object2, zzajVar.zzc));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzc;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x02d9, code lost:
        if (r0 != r5) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02db, code lost:
        r15 = r31;
        r14 = r32;
        r12 = r33;
        r13 = r35;
        r11 = r36;
        r10 = r19;
        r1 = r20;
        r2 = r23;
        r6 = r26;
        r7 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02f1, code lost:
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0322, code lost:
        if (r0 != r15) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0345, code lost:
        if (r0 != r15) goto L135;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v9, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzu(java.lang.Object r32, byte[] r33, int r34, int r35, com.google.android.gms.internal.wearable.zzaj r36) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 944
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.wearable.zzdf.zzu(java.lang.Object, byte[], int, int, com.google.android.gms.internal.wearable.zzaj):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0152  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x021a -> B:120:0x021b). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x014f -> B:67:0x0150). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x01cc -> B:100:0x01cd). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzv(java.lang.Object r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, com.google.android.gms.internal.wearable.zzaj r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1172
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.wearable.zzdf.zzv(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.wearable.zzaj):int");
    }

    private final int zzw(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, 0);
    }

    private final int zzx(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, i2);
    }

    private final int zzy(int i) {
        return this.zzc[i + 2];
    }

    private final int zzz(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final int zza(Object obj) {
        return this.zzi ? zzq(obj) : zzp(obj);
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final int zzb(Object obj) {
        int i;
        int zzc;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int zzB = zzB(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & zzB;
            int i5 = 37;
            switch (zzA(zzB)) {
                case 0:
                    i = i2 * 53;
                    zzc = zzcd.zzc(Double.doubleToLongBits(zzeo.zza(obj, j)));
                    i2 = i + zzc;
                    break;
                case 1:
                    i = i2 * 53;
                    zzc = Float.floatToIntBits(zzeo.zzb(obj, j));
                    i2 = i + zzc;
                    break;
                case 2:
                    i = i2 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 3:
                    i = i2 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 4:
                    i = i2 * 53;
                    zzc = zzeo.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 5:
                    i = i2 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 6:
                    i = i2 * 53;
                    zzc = zzeo.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 7:
                    i = i2 * 53;
                    zzc = zzcd.zza(zzeo.zzw(obj, j));
                    i2 = i + zzc;
                    break;
                case 8:
                    i = i2 * 53;
                    zzc = ((String) zzeo.zzf(obj, j)).hashCode();
                    i2 = i + zzc;
                    break;
                case 9:
                    Object zzf = zzeo.zzf(obj, j);
                    if (zzf != null) {
                        i5 = zzf.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    zzc = zzeo.zzf(obj, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 11:
                    i = i2 * 53;
                    zzc = zzeo.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 12:
                    i = i2 * 53;
                    zzc = zzeo.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 13:
                    i = i2 * 53;
                    zzc = zzeo.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 14:
                    i = i2 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 15:
                    i = i2 * 53;
                    zzc = zzeo.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 16:
                    i = i2 * 53;
                    zzc = zzcd.zzc(zzeo.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 17:
                    Object zzf2 = zzeo.zzf(obj, j);
                    if (zzf2 != null) {
                        i5 = zzf2.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    zzc = zzeo.zzf(obj, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 50:
                    i = i2 * 53;
                    zzc = zzeo.zzf(obj, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 51:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzcd.zzc(Double.doubleToLongBits(zzn(obj, j)));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = Float.floatToIntBits(zzo(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzcd.zza(zzS(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = ((String) zzeo.zzf(obj, j)).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzeo.zzf(obj, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzeo.zzf(obj, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzcd.zzc(zzC(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzeo.zzf(obj, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.zzn.zzc(obj).hashCode();
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        return hashCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzaj zzajVar) throws IOException {
        Unsafe unsafe;
        int i4;
        Object obj2;
        zzdf<T> zzdfVar;
        byte b;
        int zzw;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        Object obj3;
        int i10;
        zzaj zzajVar2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        zzdf<T> zzdfVar2 = this;
        Object obj4 = obj;
        byte[] bArr2 = bArr;
        int i21 = i2;
        int i22 = i3;
        zzaj zzajVar3 = zzajVar;
        Unsafe unsafe2 = zzb;
        int i23 = i;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = -1;
        int i28 = 1048575;
        while (true) {
            if (i23 < i21) {
                int i29 = i23 + 1;
                byte b2 = bArr2[i23];
                if (b2 < 0) {
                    int zzk = zzak.zzk(b2, bArr2, i29, zzajVar3);
                    b = zzajVar3.zza;
                    i29 = zzk;
                } else {
                    b = b2;
                }
                int i30 = b >>> 3;
                int i31 = b & 7;
                if (i30 > i27) {
                    zzw = zzdfVar2.zzx(i30, i25 / 3);
                } else {
                    zzw = zzdfVar2.zzw(i30);
                }
                if (zzw == -1) {
                    i5 = i30;
                    i6 = i29;
                    i7 = b;
                    i8 = i26;
                    unsafe = unsafe2;
                    i4 = i22;
                    i9 = 0;
                } else {
                    int[] iArr = zzdfVar2.zzc;
                    int i32 = iArr[zzw + 1];
                    int zzA = zzA(i32);
                    int i33 = i29;
                    long j = i32 & 1048575;
                    if (zzA <= 17) {
                        int i34 = iArr[zzw + 2];
                        int i35 = 1 << (i34 >>> 20);
                        int i36 = i34 & 1048575;
                        if (i36 != i28) {
                            i11 = b;
                            if (i28 != 1048575) {
                                unsafe2.putInt(obj4, i28, i26);
                            }
                            i26 = unsafe2.getInt(obj4, i36);
                            i12 = i36;
                        } else {
                            i11 = b;
                            i12 = i28;
                        }
                        int i37 = i26;
                        switch (zzA) {
                            case 0:
                                i13 = zzw;
                                i5 = i30;
                                i14 = i33;
                                if (i31 == 1) {
                                    zzeo.zzo(obj4, j, Double.longBitsToDouble(zzak.zzn(bArr2, i14)));
                                    i23 = i14 + 8;
                                    i26 = i37 | i35;
                                    i27 = i5;
                                    i22 = i3;
                                    i25 = i13;
                                    i24 = i11;
                                    i28 = i12;
                                    i21 = i2;
                                    break;
                                } else {
                                    i33 = i14;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 1:
                                i13 = zzw;
                                i5 = i30;
                                i14 = i33;
                                if (i31 == 5) {
                                    zzeo.zzp(obj4, j, Float.intBitsToFloat(zzak.zzb(bArr2, i14)));
                                    i23 = i14 + 4;
                                    i26 = i37 | i35;
                                    i27 = i5;
                                    i22 = i3;
                                    i25 = i13;
                                    i24 = i11;
                                    i28 = i12;
                                    i21 = i2;
                                    break;
                                } else {
                                    i33 = i14;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 2:
                            case 3:
                                i13 = zzw;
                                i5 = i30;
                                i14 = i33;
                                if (i31 == 0) {
                                    int zzm = zzak.zzm(bArr2, i14, zzajVar3);
                                    unsafe2.putLong(obj, j, zzajVar3.zzb);
                                    i26 = i37 | i35;
                                    i27 = i5;
                                    i22 = i3;
                                    i23 = zzm;
                                    i25 = i13;
                                    i24 = i11;
                                    i28 = i12;
                                    i21 = i2;
                                    break;
                                } else {
                                    i33 = i14;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 4:
                            case 11:
                                i13 = zzw;
                                i5 = i30;
                                i14 = i33;
                                if (i31 == 0) {
                                    i23 = zzak.zzj(bArr2, i14, zzajVar3);
                                    unsafe2.putInt(obj4, j, zzajVar3.zza);
                                    i26 = i37 | i35;
                                    i27 = i5;
                                    i22 = i3;
                                    i25 = i13;
                                    i24 = i11;
                                    i28 = i12;
                                    i21 = i2;
                                    break;
                                } else {
                                    i33 = i14;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 5:
                            case 14:
                                int i38 = i11;
                                i5 = i30;
                                if (i31 == 1) {
                                    i13 = zzw;
                                    i11 = i38;
                                    i14 = i33;
                                    unsafe2.putLong(obj, j, zzak.zzn(bArr2, i33));
                                    i23 = i14 + 8;
                                    i26 = i37 | i35;
                                    i27 = i5;
                                    i22 = i3;
                                    i25 = i13;
                                    i24 = i11;
                                    i28 = i12;
                                    i21 = i2;
                                    break;
                                } else {
                                    i13 = zzw;
                                    i11 = i38;
                                    i33 = i33;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 6:
                            case 13:
                                i15 = i11;
                                i5 = i30;
                                i16 = i33;
                                if (i31 == 5) {
                                    unsafe2.putInt(obj4, j, zzak.zzb(bArr2, i16));
                                    i23 = i16 + 4;
                                    i26 = i37 | i35;
                                    i25 = zzw;
                                    i24 = i15;
                                    i28 = i12;
                                    i27 = i5;
                                    i22 = i3;
                                    break;
                                } else {
                                    i13 = zzw;
                                    i33 = i16;
                                    i11 = i15;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 7:
                                i15 = i11;
                                i5 = i30;
                                i16 = i33;
                                if (i31 == 0) {
                                    i23 = zzak.zzm(bArr2, i16, zzajVar3);
                                    zzeo.zzm(obj4, j, zzajVar3.zzb != 0);
                                    i26 = i37 | i35;
                                    i25 = zzw;
                                    i24 = i15;
                                    i28 = i12;
                                    i27 = i5;
                                    i22 = i3;
                                    break;
                                } else {
                                    i13 = zzw;
                                    i33 = i16;
                                    i11 = i15;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 8:
                                i15 = i11;
                                i5 = i30;
                                i16 = i33;
                                if (i31 == 2) {
                                    if ((536870912 & i32) == 0) {
                                        i23 = zzak.zzg(bArr2, i16, zzajVar3);
                                    } else {
                                        i23 = zzak.zzh(bArr2, i16, zzajVar3);
                                    }
                                    unsafe2.putObject(obj4, j, zzajVar3.zzc);
                                    i26 = i37 | i35;
                                    i25 = zzw;
                                    i24 = i15;
                                    i28 = i12;
                                    i27 = i5;
                                    i22 = i3;
                                    break;
                                } else {
                                    i13 = zzw;
                                    i33 = i16;
                                    i11 = i15;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 9:
                                i17 = zzw;
                                i15 = i11;
                                i5 = i30;
                                i18 = i33;
                                if (i31 == 2) {
                                    i23 = zzak.zzd(zzdfVar2.zzE(i17), bArr2, i18, i21, zzajVar3);
                                    if ((i37 & i35) == 0) {
                                        unsafe2.putObject(obj4, j, zzajVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj4, j, zzcd.zzg(unsafe2.getObject(obj4, j), zzajVar3.zzc));
                                    }
                                    i26 = i37 | i35;
                                    i27 = i5;
                                    i25 = i17;
                                    i24 = i15;
                                    i28 = i12;
                                    i22 = i3;
                                    break;
                                } else {
                                    i33 = i18;
                                    i13 = i17;
                                    i11 = i15;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 10:
                                i17 = zzw;
                                i15 = i11;
                                i5 = i30;
                                i18 = i33;
                                if (i31 == 2) {
                                    i23 = zzak.zza(bArr2, i18, zzajVar3);
                                    unsafe2.putObject(obj4, j, zzajVar3.zzc);
                                    i26 = i37 | i35;
                                    i27 = i5;
                                    i25 = i17;
                                    i24 = i15;
                                    i28 = i12;
                                    i22 = i3;
                                    break;
                                } else {
                                    i33 = i18;
                                    i13 = i17;
                                    i11 = i15;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 12:
                                i17 = zzw;
                                i15 = i11;
                                i5 = i30;
                                i18 = i33;
                                if (i31 != 0) {
                                    i33 = i18;
                                    i13 = i17;
                                    i11 = i15;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                } else {
                                    i23 = zzak.zzj(bArr2, i18, zzajVar3);
                                    int i39 = zzajVar3.zza;
                                    zzbz zzD = zzdfVar2.zzD(i17);
                                    if (zzD == null || zzD.zza(i39)) {
                                        unsafe2.putInt(obj4, j, i39);
                                        i26 = i37 | i35;
                                        i27 = i5;
                                        i25 = i17;
                                        i24 = i15;
                                        i28 = i12;
                                        i22 = i3;
                                        break;
                                    } else {
                                        zzd(obj).zzh(i15, Long.valueOf(i39));
                                        i27 = i5;
                                        i26 = i37;
                                        i25 = i17;
                                        i24 = i15;
                                        i28 = i12;
                                        i22 = i3;
                                    }
                                }
                                break;
                            case 15:
                                i17 = zzw;
                                i15 = i11;
                                i5 = i30;
                                i18 = i33;
                                if (i31 == 0) {
                                    i23 = zzak.zzj(bArr2, i18, zzajVar3);
                                    unsafe2.putInt(obj4, j, zzba.zzb(zzajVar3.zza));
                                    i26 = i37 | i35;
                                    i27 = i5;
                                    i25 = i17;
                                    i24 = i15;
                                    i28 = i12;
                                    i22 = i3;
                                    break;
                                } else {
                                    i33 = i18;
                                    i13 = i17;
                                    i11 = i15;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            case 16:
                                if (i31 == 0) {
                                    int zzm2 = zzak.zzm(bArr2, i33, zzajVar3);
                                    i17 = zzw;
                                    i15 = i11;
                                    unsafe2.putLong(obj, j, zzba.zzc(zzajVar3.zzb));
                                    i26 = i37 | i35;
                                    i27 = i30;
                                    i23 = zzm2;
                                    i25 = i17;
                                    i24 = i15;
                                    i28 = i12;
                                    i22 = i3;
                                    break;
                                } else {
                                    i5 = i30;
                                    i13 = zzw;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                            default:
                                i13 = zzw;
                                i5 = i30;
                                i14 = i33;
                                if (i31 == 3) {
                                    i23 = zzak.zzc(zzdfVar2.zzE(i13), bArr, i14, i2, (i5 << 3) | 4, zzajVar);
                                    if ((i37 & i35) == 0) {
                                        unsafe2.putObject(obj4, j, zzajVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj4, j, zzcd.zzg(unsafe2.getObject(obj4, j), zzajVar3.zzc));
                                    }
                                    i26 = i37 | i35;
                                    bArr2 = bArr;
                                    i27 = i5;
                                    i22 = i3;
                                    i25 = i13;
                                    i24 = i11;
                                    i28 = i12;
                                    i21 = i2;
                                    break;
                                } else {
                                    i33 = i14;
                                    i4 = i3;
                                    i8 = i37;
                                    unsafe = unsafe2;
                                    i7 = i11;
                                    i6 = i33;
                                    i28 = i12;
                                    i9 = i13;
                                    break;
                                }
                        }
                    } else {
                        int i40 = zzw;
                        int i41 = b;
                        if (zzA != 27) {
                            i8 = i26;
                            i19 = i28;
                            if (zzA <= 49) {
                                i5 = i30;
                                unsafe = unsafe2;
                                i9 = i40;
                                i23 = zzv(obj, bArr, i33, i2, i41, i30, i31, i40, i32, zzA, j, zzajVar);
                                if (i23 != i33) {
                                    zzdfVar2 = this;
                                    obj4 = obj;
                                    bArr2 = bArr;
                                    i27 = i5;
                                    i21 = i2;
                                    i22 = i3;
                                    zzajVar3 = zzajVar;
                                    i24 = i41;
                                    i25 = i9;
                                    i26 = i8;
                                    i28 = i19;
                                    unsafe2 = unsafe;
                                } else {
                                    i4 = i3;
                                    i6 = i23;
                                    i7 = i41;
                                    i28 = i19;
                                }
                            } else {
                                i5 = i30;
                                unsafe = unsafe2;
                                i20 = i33;
                                i9 = i40;
                                if (zzA != 50) {
                                    i23 = zzt(obj, bArr, i20, i2, i41, i5, i31, i32, zzA, j, i9, zzajVar);
                                    if (i23 != i20) {
                                        zzdfVar2 = this;
                                        obj4 = obj;
                                        bArr2 = bArr;
                                        i27 = i5;
                                        i21 = i2;
                                        i22 = i3;
                                        zzajVar3 = zzajVar;
                                        i24 = i41;
                                        i25 = i9;
                                        i26 = i8;
                                        i28 = i19;
                                        unsafe2 = unsafe;
                                    } else {
                                        i4 = i3;
                                        i6 = i23;
                                        i7 = i41;
                                        i28 = i19;
                                    }
                                } else if (i31 == 2) {
                                    i23 = zzs(obj, bArr, i20, i2, i9, j, zzajVar);
                                    if (i23 != i20) {
                                        zzdfVar2 = this;
                                        obj4 = obj;
                                        bArr2 = bArr;
                                        i27 = i5;
                                        i21 = i2;
                                        i22 = i3;
                                        zzajVar3 = zzajVar;
                                        i24 = i41;
                                        i25 = i9;
                                        i26 = i8;
                                        i28 = i19;
                                        unsafe2 = unsafe;
                                    } else {
                                        i4 = i3;
                                        i6 = i23;
                                        i7 = i41;
                                        i28 = i19;
                                    }
                                }
                            }
                        } else if (i31 == 2) {
                            zzcc zzccVar = (zzcc) unsafe2.getObject(obj4, j);
                            if (!zzccVar.zzc()) {
                                int size = zzccVar.size();
                                zzccVar = zzccVar.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj4, j, zzccVar);
                            }
                            i24 = i41;
                            i12 = i28;
                            i23 = zzak.zze(zzdfVar2.zzE(i40), i24, bArr, i33, i2, zzccVar, zzajVar);
                            bArr2 = bArr;
                            i22 = i3;
                            i27 = i30;
                            i25 = i40;
                            i26 = i26;
                            i28 = i12;
                            i21 = i2;
                        } else {
                            i8 = i26;
                            i19 = i28;
                            i5 = i30;
                            unsafe = unsafe2;
                            i20 = i33;
                            i9 = i40;
                        }
                        i4 = i3;
                        i6 = i20;
                        i7 = i41;
                        i28 = i19;
                    }
                }
                if (i7 != i4 || i4 == 0) {
                    if (this.zzh) {
                        zzajVar2 = zzajVar;
                        if (zzajVar2.zzd != zzbj.zza()) {
                            i10 = i5;
                            if (zzajVar2.zzd.zzb(this.zzg, i10) == null) {
                                i23 = zzak.zzi(i7, bArr, i6, i2, zzd(obj), zzajVar);
                                obj3 = obj;
                                i21 = i2;
                                i24 = i7;
                                zzdfVar2 = this;
                                zzajVar3 = zzajVar2;
                                i27 = i10;
                                obj4 = obj3;
                                i25 = i9;
                                i26 = i8;
                                unsafe2 = unsafe;
                                bArr2 = bArr;
                                i22 = i4;
                            } else {
                                zzbt zzbtVar = (zzbt) obj;
                                throw null;
                            }
                        } else {
                            obj3 = obj;
                            i10 = i5;
                        }
                    } else {
                        obj3 = obj;
                        i10 = i5;
                        zzajVar2 = zzajVar;
                    }
                    i23 = zzak.zzi(i7, bArr, i6, i2, zzd(obj), zzajVar);
                    i21 = i2;
                    i24 = i7;
                    zzdfVar2 = this;
                    zzajVar3 = zzajVar2;
                    i27 = i10;
                    obj4 = obj3;
                    i25 = i9;
                    i26 = i8;
                    unsafe2 = unsafe;
                    bArr2 = bArr;
                    i22 = i4;
                } else {
                    zzdfVar = this;
                    obj2 = obj;
                    i23 = i6;
                    i24 = i7;
                    i26 = i8;
                }
            } else {
                unsafe = unsafe2;
                i4 = i22;
                obj2 = obj4;
                zzdfVar = zzdfVar2;
            }
        }
        if (i28 != 1048575) {
            unsafe.putInt(obj2, i28, i26);
        }
        for (int i42 = zzdfVar.zzk; i42 < zzdfVar.zzl; i42++) {
            int i43 = zzdfVar.zzj[i42];
            int i44 = zzdfVar.zzc[i43];
            Object zzf = zzeo.zzf(obj2, zzdfVar.zzB(i43) & 1048575);
            if (zzf != null && zzdfVar.zzD(i43) != null) {
                zzcw zzcwVar = (zzcw) zzf;
                zzcv zzcvVar = (zzcv) zzdfVar.zzF(i43);
                throw null;
            }
        }
        if (i4 == 0) {
            if (i23 != i2) {
                throw zzcf.zze();
            }
        } else if (i23 > i2 || i24 != i4) {
            throw zzcf.zze();
        }
        return i23;
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final Object zze() {
        return ((zzbv) this.zzg).zzG(4, null, null);
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final void zzf(Object obj) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long zzB = zzB(this.zzj[i2]) & 1048575;
            Object zzf = zzeo.zzf(obj, zzB);
            if (zzf != null) {
                ((zzcw) zzf).zzc();
                zzeo.zzs(obj, zzB, zzf);
            }
            i2++;
        }
        int length = this.zzj.length;
        while (i < length) {
            this.zzm.zza(obj, this.zzj[i]);
            i++;
        }
        this.zzn.zzg(obj);
        if (this.zzh) {
            this.zzo.zzb(obj);
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzaj zzajVar) throws IOException {
        if (this.zzi) {
            zzu(obj, bArr, i, i2, zzajVar);
        } else {
            zzc(obj, bArr, i, i2, 0, zzajVar);
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final void zzi(Object obj, zzew zzewVar) throws IOException {
        if (!this.zzi) {
            zzL(obj, zzewVar);
        } else if (!this.zzh) {
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzB = zzB(i);
                int i2 = this.zzc[i];
                switch (zzA(zzB)) {
                    case 0:
                        if (zzO(obj, i)) {
                            zzewVar.zzf(i2, zzeo.zza(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzO(obj, i)) {
                            zzewVar.zzo(i2, zzeo.zzb(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzO(obj, i)) {
                            zzewVar.zzt(i2, zzeo.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzO(obj, i)) {
                            zzewVar.zzJ(i2, zzeo.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzO(obj, i)) {
                            zzewVar.zzr(i2, zzeo.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzO(obj, i)) {
                            zzewVar.zzm(i2, zzeo.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzO(obj, i)) {
                            zzewVar.zzk(i2, zzeo.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzO(obj, i)) {
                            zzewVar.zzb(i2, zzeo.zzw(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzO(obj, i)) {
                            zzT(i2, zzeo.zzf(obj, zzB & 1048575), zzewVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzO(obj, i)) {
                            zzewVar.zzv(i2, zzeo.zzf(obj, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzO(obj, i)) {
                            zzewVar.zzd(i2, (zzaw) zzeo.zzf(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzO(obj, i)) {
                            zzewVar.zzH(i2, zzeo.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzO(obj, i)) {
                            zzewVar.zzi(i2, zzeo.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzO(obj, i)) {
                            zzewVar.zzw(i2, zzeo.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzO(obj, i)) {
                            zzewVar.zzy(i2, zzeo.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzO(obj, i)) {
                            zzewVar.zzA(i2, zzeo.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzO(obj, i)) {
                            zzewVar.zzC(i2, zzeo.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzO(obj, i)) {
                            zzewVar.zzq(i2, zzeo.zzf(obj, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzdp.zzJ(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 19:
                        zzdp.zzN(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 20:
                        zzdp.zzQ(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 21:
                        zzdp.zzY(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 22:
                        zzdp.zzP(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 23:
                        zzdp.zzM(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 24:
                        zzdp.zzL(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 25:
                        zzdp.zzH(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 26:
                        zzdp.zzW(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar);
                        break;
                    case 27:
                        zzdp.zzR(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, zzE(i));
                        break;
                    case 28:
                        zzdp.zzI(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar);
                        break;
                    case 29:
                        zzdp.zzX(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 30:
                        zzdp.zzK(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 31:
                        zzdp.zzS(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 32:
                        zzdp.zzT(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 33:
                        zzdp.zzU(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 34:
                        zzdp.zzV(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, false);
                        break;
                    case 35:
                        zzdp.zzJ(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 36:
                        zzdp.zzN(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 37:
                        zzdp.zzQ(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 38:
                        zzdp.zzY(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 39:
                        zzdp.zzP(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 40:
                        zzdp.zzM(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 41:
                        zzdp.zzL(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 42:
                        zzdp.zzH(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 43:
                        zzdp.zzX(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 44:
                        zzdp.zzK(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 45:
                        zzdp.zzS(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 46:
                        zzdp.zzT(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 47:
                        zzdp.zzU(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 48:
                        zzdp.zzV(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, true);
                        break;
                    case 49:
                        zzdp.zzO(i2, (List) zzeo.zzf(obj, zzB & 1048575), zzewVar, zzE(i));
                        break;
                    case 50:
                        zzM(zzewVar, i2, zzeo.zzf(obj, zzB & 1048575), i);
                        break;
                    case 51:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzf(i2, zzn(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzo(i2, zzo(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzt(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzJ(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzr(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzm(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzk(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzb(i2, zzS(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzR(obj, i2, i)) {
                            zzT(i2, zzeo.zzf(obj, zzB & 1048575), zzewVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzv(i2, zzeo.zzf(obj, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzd(i2, (zzaw) zzeo.zzf(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzH(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzi(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzw(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzy(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzA(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzC(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzR(obj, i2, i)) {
                            zzewVar.zzq(i2, zzeo.zzf(obj, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzee zzeeVar = this.zzn;
            zzeeVar.zzi(zzeeVar.zzc(obj), zzewVar);
        } else {
            this.zzo.zza(obj);
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final boolean zzj(Object obj, Object obj2) {
        boolean zzZ;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzB = zzB(i);
            long j = zzB & 1048575;
            switch (zzA(zzB)) {
                case 0:
                    if (zzN(obj, obj2, i) && Double.doubleToLongBits(zzeo.zza(obj, j)) == Double.doubleToLongBits(zzeo.zza(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzN(obj, obj2, i) && Float.floatToIntBits(zzeo.zzb(obj, j)) == Float.floatToIntBits(zzeo.zzb(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzN(obj, obj2, i) && zzeo.zzw(obj, j) == zzeo.zzw(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzN(obj, obj2, i) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzN(obj, obj2, i) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzN(obj, obj2, i) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzN(obj, obj2, i) && zzeo.zzc(obj, j) == zzeo.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzN(obj, obj2, i) && zzeo.zzd(obj, j) == zzeo.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzN(obj, obj2, i) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzZ = zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j));
                    break;
                case 50:
                    zzZ = zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzy = zzy(i) & 1048575;
                    if (zzeo.zzc(obj, zzy) == zzeo.zzc(obj2, zzy) && zzdp.zzZ(zzeo.zzf(obj, j), zzeo.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzZ) {
                return false;
            }
        }
        if (this.zzn.zzc(obj).equals(this.zzn.zzc(obj2))) {
            if (this.zzh) {
                this.zzo.zza(obj);
                this.zzo.zza(obj2);
                throw null;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzk) {
            int i6 = this.zzj[i5];
            int i7 = this.zzc[i6];
            int zzB = zzB(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(obj, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & zzB) != 0 && !zzP(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzA = zzA(zzB);
            if (zzA != 9 && zzA != 17) {
                if (zzA != 27) {
                    if (zzA == 60 || zzA == 68) {
                        if (zzR(obj, i7, i6) && !zzQ(obj, zzB, zzE(i6))) {
                            return false;
                        }
                    } else if (zzA != 49) {
                        if (zzA == 50 && !((zzcw) zzeo.zzf(obj, zzB & 1048575)).isEmpty()) {
                            zzcv zzcvVar = (zzcv) zzF(i6);
                            throw null;
                        }
                    }
                }
                List list = (List) zzeo.zzf(obj, zzB & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzdn zzE = zzE(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzE.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzP(obj, i6, i, i2, i10) && !zzQ(obj, zzB, zzE(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.wearable.zzdn
    public final void zzg(Object obj, Object obj2) {
        Objects.requireNonNull(obj2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzB = zzB(i);
            long j = 1048575 & zzB;
            int i2 = this.zzc[i];
            switch (zzA(zzB)) {
                case 0:
                    if (zzO(obj2, i)) {
                        zzeo.zzo(obj, j, zzeo.zza(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzO(obj2, i)) {
                        zzeo.zzp(obj, j, zzeo.zzb(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzO(obj2, i)) {
                        zzeo.zzm(obj, j, zzeo.zzw(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzO(obj2, i)) {
                        zzeo.zzs(obj, j, zzeo.zzf(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzH(obj, obj2, i);
                    break;
                case 10:
                    if (zzO(obj2, i)) {
                        zzeo.zzs(obj, j, zzeo.zzf(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzO(obj2, i)) {
                        zzeo.zzq(obj, j, zzeo.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzO(obj2, i)) {
                        zzeo.zzr(obj, j, zzeo.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzH(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzm.zzb(obj, obj2, j);
                    break;
                case 50:
                    zzdp.zzaa(this.zzq, obj, obj2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzR(obj2, i2, i)) {
                        zzeo.zzs(obj, j, zzeo.zzf(obj2, j));
                        zzK(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzI(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i2, i)) {
                        zzeo.zzs(obj, j, zzeo.zzf(obj2, j));
                        zzK(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzI(obj, obj2, i);
                    break;
            }
        }
        zzdp.zzF(this.zzn, obj, obj2);
        if (this.zzh) {
            zzdp.zzE(this.zzo, obj, obj2);
        }
    }
}

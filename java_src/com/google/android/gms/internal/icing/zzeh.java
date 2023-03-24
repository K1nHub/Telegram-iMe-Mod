package com.google.android.gms.internal.icing;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
final class zzeh<T> implements zzep<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzfn.zzq();
    private final int[] zzc;
    private final Object[] zzd;
    private final zzee zze;
    private final boolean zzf;
    private final boolean zzg;
    private final int[] zzh;
    private final int zzi;
    private final int zzj;
    private final zzds zzk;
    private final zzfd<?, ?> zzl;
    private final zzcq<?> zzm;
    private final zzej zzn;
    private final zzdz zzo;

    /* JADX WARN: Multi-variable type inference failed */
    private zzeh(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, zzee zzeeVar, boolean z, boolean z2, int[] iArr3, int i3, int i4, zzej zzejVar, zzds zzdsVar, zzfd<?, ?> zzfdVar, zzcq<?> zzcqVar, zzdz zzdzVar) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zzg = zzeeVar;
        boolean z3 = false;
        if (zzfdVar != 0 && zzfdVar.zza(i2)) {
            z3 = true;
        }
        this.zzf = z3;
        this.zzh = z2;
        this.zzi = iArr3;
        this.zzj = i3;
        this.zzn = i4;
        this.zzk = zzejVar;
        this.zzl = zzdsVar;
        this.zzm = zzfdVar;
        this.zze = i2;
        this.zzo = zzcqVar;
    }

    private final boolean zzA(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzB(t, i);
        }
        return (i3 & i4) != 0;
    }

    private final boolean zzB(T t, int i) {
        int zzs = zzs(i);
        long j = zzs & 1048575;
        if (j != 1048575) {
            return (zzfn.zzd(t, j) & (1 << (zzs >>> 20))) != 0;
        }
        int zzr = zzr(i);
        long j2 = zzr & 1048575;
        switch (zzt(zzr)) {
            case 0:
                return zzfn.zzl(t, j2) != 0.0d;
            case 1:
                return zzfn.zzj(t, j2) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return zzfn.zzf(t, j2) != 0;
            case 3:
                return zzfn.zzf(t, j2) != 0;
            case 4:
                return zzfn.zzd(t, j2) != 0;
            case 5:
                return zzfn.zzf(t, j2) != 0;
            case 6:
                return zzfn.zzd(t, j2) != 0;
            case 7:
                return zzfn.zzh(t, j2);
            case 8:
                Object zzn = zzfn.zzn(t, j2);
                if (zzn instanceof String) {
                    return !((String) zzn).isEmpty();
                } else if (zzn instanceof zzcf) {
                    return !zzcf.zzb.equals(zzn);
                } else {
                    throw new IllegalArgumentException();
                }
            case 9:
                return zzfn.zzn(t, j2) != null;
            case 10:
                return !zzcf.zzb.equals(zzfn.zzn(t, j2));
            case 11:
                return zzfn.zzd(t, j2) != 0;
            case 12:
                return zzfn.zzd(t, j2) != 0;
            case 13:
                return zzfn.zzd(t, j2) != 0;
            case 14:
                return zzfn.zzf(t, j2) != 0;
            case 15:
                return zzfn.zzd(t, j2) != 0;
            case 16:
                return zzfn.zzf(t, j2) != 0;
            case 17:
                return zzfn.zzn(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final void zzC(T t, int i) {
        int zzs = zzs(i);
        long j = 1048575 & zzs;
        if (j == 1048575) {
            return;
        }
        zzfn.zze(t, j, (1 << (zzs >>> 20)) | zzfn.zzd(t, j));
    }

    private final boolean zzD(T t, int i, int i2) {
        return zzfn.zzd(t, (long) (zzs(i2) & 1048575)) == i;
    }

    private final void zzE(T t, int i, int i2) {
        zzfn.zze(t, zzs(i2) & 1048575, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final void zzF(T t, zzcn zzcnVar) throws IOException {
        int i;
        boolean z;
        if (this.zzf) {
            this.zzm.zzb(t);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int zzr = zzr(i4);
            int i6 = this.zzc[i4];
            int zzt = zzt(zzr);
            if (zzt <= 17) {
                int i7 = this.zzc[i4 + 2];
                int i8 = i7 & i2;
                if (i8 != i3) {
                    i5 = unsafe.getInt(t, i8);
                    i3 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            long j = zzr & i2;
            switch (zzt) {
                case 0:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzf(i6, zzfn.zzl(t, j));
                        break;
                    }
                case 1:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zze(i6, zzfn.zzj(t, j));
                        break;
                    }
                case 2:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzc(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 3:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzh(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 4:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzi(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 5:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzj(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 6:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzk(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 7:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzl(i6, zzfn.zzh(t, j));
                        break;
                    }
                case 8:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzH(i6, unsafe.getObject(t, j), zzcnVar);
                        break;
                    }
                case 9:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzr(i6, unsafe.getObject(t, j), zzo(i4));
                        break;
                    }
                case 10:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzn(i6, (zzcf) unsafe.getObject(t, j));
                        break;
                    }
                case 11:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzo(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 12:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzg(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 13:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzb(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 14:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzd(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 15:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzp(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 16:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzq(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 17:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzcnVar.zzs(i6, unsafe.getObject(t, j), zzo(i4));
                        break;
                    }
                case 18:
                    zzer.zzH(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 19:
                    zzer.zzI(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 20:
                    zzer.zzJ(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 21:
                    zzer.zzK(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 22:
                    zzer.zzO(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 23:
                    zzer.zzM(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 24:
                    zzer.zzR(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 25:
                    zzer.zzU(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 26:
                    zzer.zzV(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar);
                    break;
                case 27:
                    zzer.zzX(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, zzo(i4));
                    break;
                case 28:
                    zzer.zzW(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar);
                    break;
                case 29:
                    z = false;
                    zzer.zzP(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 30:
                    z = false;
                    zzer.zzT(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 31:
                    z = false;
                    zzer.zzS(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 32:
                    z = false;
                    zzer.zzN(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 33:
                    z = false;
                    zzer.zzQ(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 34:
                    z = false;
                    zzer.zzL(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 35:
                    zzer.zzH(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 36:
                    zzer.zzI(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 37:
                    zzer.zzJ(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 38:
                    zzer.zzK(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 39:
                    zzer.zzO(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 40:
                    zzer.zzM(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 41:
                    zzer.zzR(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 42:
                    zzer.zzU(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 43:
                    zzer.zzP(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 44:
                    zzer.zzT(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 45:
                    zzer.zzS(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 46:
                    zzer.zzN(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 47:
                    zzer.zzQ(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 48:
                    zzer.zzL(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 49:
                    zzer.zzY(this.zzc[i4], (List) unsafe.getObject(t, j), zzcnVar, zzo(i4));
                    break;
                case 50:
                    zzG(zzcnVar, i6, unsafe.getObject(t, j), i4);
                    break;
                case 51:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzf(i6, zzu(t, j));
                    }
                    break;
                case 52:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zze(i6, zzv(t, j));
                    }
                    break;
                case 53:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzc(i6, zzx(t, j));
                    }
                    break;
                case 54:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzh(i6, zzx(t, j));
                    }
                    break;
                case 55:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzi(i6, zzw(t, j));
                    }
                    break;
                case 56:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzj(i6, zzx(t, j));
                    }
                    break;
                case 57:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzk(i6, zzw(t, j));
                    }
                    break;
                case 58:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzl(i6, zzy(t, j));
                    }
                    break;
                case 59:
                    if (zzD(t, i6, i4)) {
                        zzH(i6, unsafe.getObject(t, j), zzcnVar);
                    }
                    break;
                case 60:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzr(i6, unsafe.getObject(t, j), zzo(i4));
                    }
                    break;
                case 61:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzn(i6, (zzcf) unsafe.getObject(t, j));
                    }
                    break;
                case 62:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzo(i6, zzw(t, j));
                    }
                    break;
                case 63:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzg(i6, zzw(t, j));
                    }
                    break;
                case 64:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzb(i6, zzw(t, j));
                    }
                    break;
                case 65:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzd(i6, zzx(t, j));
                    }
                    break;
                case 66:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzp(i6, zzw(t, j));
                    }
                    break;
                case 67:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzq(i6, zzx(t, j));
                    }
                    break;
                case 68:
                    if (zzD(t, i6, i4)) {
                        zzcnVar.zzs(i6, unsafe.getObject(t, j), zzo(i4));
                    }
                    break;
            }
            i4 += 3;
            i2 = 1048575;
        }
        zzfd<?, ?> zzfdVar = this.zzl;
        zzfdVar.zzg(zzfdVar.zzb(t), zzcnVar);
    }

    private final <K, V> void zzG(zzcn zzcnVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        zzdx zzdxVar = (zzdx) zzp(i2);
        throw null;
    }

    private static final void zzH(int i, Object obj, zzcn zzcnVar) throws IOException {
        if (obj instanceof String) {
            zzcnVar.zzm(i, (String) obj);
        } else {
            zzcnVar.zzn(i, (zzcf) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> zzeh<T> zzg(Class<T> cls, zzeb zzebVar, zzej zzejVar, zzds zzdsVar, zzfd<?, ?> zzfdVar, zzcq<?> zzcqVar, zzdz zzdzVar) {
        if (zzebVar instanceof zzeo) {
            return zzh((zzeo) zzebVar, zzejVar, zzdsVar, zzfdVar, zzcqVar, zzdzVar);
        }
        zzfa zzfaVar = (zzfa) zzebVar;
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
    static <T> com.google.android.gms.internal.icing.zzeh<T> zzh(com.google.android.gms.internal.icing.zzeo r34, com.google.android.gms.internal.icing.zzej r35, com.google.android.gms.internal.icing.zzds r36, com.google.android.gms.internal.icing.zzfd<?, ?> r37, com.google.android.gms.internal.icing.zzcq<?> r38, com.google.android.gms.internal.icing.zzdz r39) {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzeh.zzh(com.google.android.gms.internal.icing.zzeo, com.google.android.gms.internal.icing.zzej, com.google.android.gms.internal.icing.zzds, com.google.android.gms.internal.icing.zzfd, com.google.android.gms.internal.icing.zzcq, com.google.android.gms.internal.icing.zzdz):com.google.android.gms.internal.icing.zzeh");
    }

    private static Field zzj(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    private final void zzk(T t, T t2, int i) {
        long zzr = zzr(i) & 1048575;
        if (zzB(t2, i)) {
            Object zzn = zzfn.zzn(t, zzr);
            Object zzn2 = zzfn.zzn(t2, zzr);
            if (zzn != null && zzn2 != null) {
                zzfn.zzo(t, zzr, zzdh.zzi(zzn, zzn2));
                zzC(t, i);
            } else if (zzn2 != null) {
                zzfn.zzo(t, zzr, zzn2);
                zzC(t, i);
            }
        }
    }

    private final void zzl(T t, T t2, int i) {
        int zzr = zzr(i);
        int i2 = this.zzc[i];
        long j = zzr & 1048575;
        if (zzD(t2, i2, i)) {
            Object zzn = zzD(t, i2, i) ? zzfn.zzn(t, j) : null;
            Object zzn2 = zzfn.zzn(t2, j);
            if (zzn != null && zzn2 != null) {
                zzfn.zzo(t, j, zzdh.zzi(zzn, zzn2));
                zzE(t, i2, i);
            } else if (zzn2 != null) {
                zzfn.zzo(t, j, zzn2);
                zzE(t, i2, i);
            }
        }
    }

    private final int zzm(T t) {
        int i;
        int zzw;
        int zzw2;
        int zzw3;
        int zzx;
        int zzw4;
        int zzv;
        int zzw5;
        int zzw6;
        int zzc;
        int zzw7;
        int zzw8;
        int zzu;
        int zzw9;
        int i2;
        Unsafe unsafe = zzb;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < this.zzc.length; i6 += 3) {
            int zzr = zzr(i6);
            int i7 = this.zzc[i6];
            int zzt = zzt(zzr);
            if (zzt <= 17) {
                int i8 = this.zzc[i6 + 2];
                int i9 = i8 & 1048575;
                i = 1 << (i8 >>> 20);
                if (i9 != i3) {
                    i5 = unsafe.getInt(t, i9);
                    i3 = i9;
                }
            } else {
                i = 0;
            }
            long j = zzr & 1048575;
            switch (zzt) {
                case 0:
                    if ((i5 & i) != 0) {
                        zzw = zzcm.zzw(i7 << 3);
                        zzw8 = zzw + 8;
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if ((i5 & i) != 0) {
                        zzw2 = zzcm.zzw(i7 << 3);
                        zzw8 = zzw2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if ((i5 & i) != 0) {
                        long j2 = unsafe.getLong(t, j);
                        zzw3 = zzcm.zzw(i7 << 3);
                        zzx = zzcm.zzx(j2);
                        zzw8 = zzw3 + zzx;
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if ((i5 & i) != 0) {
                        long j3 = unsafe.getLong(t, j);
                        zzw3 = zzcm.zzw(i7 << 3);
                        zzx = zzcm.zzx(j3);
                        zzw8 = zzw3 + zzx;
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if ((i5 & i) != 0) {
                        int i10 = unsafe.getInt(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzv(i10);
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 5:
                    if ((i5 & i) != 0) {
                        zzw = zzcm.zzw(i7 << 3);
                        zzw8 = zzw + 8;
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if ((i5 & i) != 0) {
                        zzw2 = zzcm.zzw(i7 << 3);
                        zzw8 = zzw2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if ((i5 & i) != 0) {
                        zzw5 = zzcm.zzw(i7 << 3);
                        zzw8 = zzw5 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if ((i5 & i) != 0) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof zzcf) {
                            zzw6 = zzcm.zzw(i7 << 3);
                            zzc = ((zzcf) object).zzc();
                            zzw7 = zzcm.zzw(zzc);
                            i2 = zzw6 + zzw7 + zzc;
                            i4 += i2;
                        } else {
                            zzw4 = zzcm.zzw(i7 << 3);
                            zzv = zzcm.zzy((String) object);
                            i2 = zzw4 + zzv;
                            i4 += i2;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if ((i5 & i) != 0) {
                        zzw8 = zzer.zzw(i7, unsafe.getObject(t, j), zzo(i6));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if ((i5 & i) != 0) {
                        zzw6 = zzcm.zzw(i7 << 3);
                        zzc = ((zzcf) unsafe.getObject(t, j)).zzc();
                        zzw7 = zzcm.zzw(zzc);
                        i2 = zzw6 + zzw7 + zzc;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 11:
                    if ((i5 & i) != 0) {
                        int i11 = unsafe.getInt(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzw(i11);
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 12:
                    if ((i5 & i) != 0) {
                        int i12 = unsafe.getInt(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzv(i12);
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 13:
                    if ((i5 & i) != 0) {
                        zzw2 = zzcm.zzw(i7 << 3);
                        zzw8 = zzw2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if ((i5 & i) != 0) {
                        zzw = zzcm.zzw(i7 << 3);
                        zzw8 = zzw + 8;
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if ((i5 & i) != 0) {
                        int i13 = unsafe.getInt(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzw((i13 >> 31) ^ (i13 + i13));
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 16:
                    if ((i5 & i) != 0) {
                        long j4 = unsafe.getLong(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzx((j4 >> 63) ^ (j4 + j4));
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 17:
                    if ((i5 & i) != 0) {
                        zzw8 = zzcm.zzE(i7, (zzee) unsafe.getObject(t, j), zzo(i6));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    zzw8 = zzer.zzs(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 19:
                    zzw8 = zzer.zzq(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 20:
                    zzw8 = zzer.zzc(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 21:
                    zzw8 = zzer.zze(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 22:
                    zzw8 = zzer.zzk(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 23:
                    zzw8 = zzer.zzs(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 24:
                    zzw8 = zzer.zzq(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 25:
                    zzw8 = zzer.zzu(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 26:
                    zzw8 = zzer.zzv(i7, (List) unsafe.getObject(t, j));
                    break;
                case 27:
                    zzw8 = zzer.zzx(i7, (List) unsafe.getObject(t, j), zzo(i6));
                    break;
                case 28:
                    zzw8 = zzer.zzy(i7, (List) unsafe.getObject(t, j));
                    break;
                case 29:
                    zzw8 = zzer.zzm(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 30:
                    zzw8 = zzer.zzi(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 31:
                    zzw8 = zzer.zzq(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 32:
                    zzw8 = zzer.zzs(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 33:
                    zzw8 = zzer.zzo(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 34:
                    zzw8 = zzer.zzg(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 35:
                    zzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 36:
                    zzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 37:
                    zzv = zzer.zzb((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 38:
                    zzv = zzer.zzd((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 39:
                    zzv = zzer.zzj((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 40:
                    zzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 41:
                    zzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 42:
                    zzv = zzer.zzt((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 43:
                    zzv = zzer.zzl((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 44:
                    zzv = zzer.zzh((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 45:
                    zzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 46:
                    zzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 47:
                    zzv = zzer.zzn((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 48:
                    zzv = zzer.zzf((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i7);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 49:
                    zzw8 = zzer.zzz(i7, (List) unsafe.getObject(t, j), zzo(i6));
                    break;
                case 50:
                    zzdz.zza(i7, unsafe.getObject(t, j), zzp(i6));
                    continue;
                case 51:
                    if (zzD(t, i7, i6)) {
                        zzw = zzcm.zzw(i7 << 3);
                        zzw8 = zzw + 8;
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (zzD(t, i7, i6)) {
                        zzw2 = zzcm.zzw(i7 << 3);
                        zzw8 = zzw2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (zzD(t, i7, i6)) {
                        long zzx2 = zzx(t, j);
                        zzw3 = zzcm.zzw(i7 << 3);
                        zzx = zzcm.zzx(zzx2);
                        zzw8 = zzw3 + zzx;
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (zzD(t, i7, i6)) {
                        long zzx3 = zzx(t, j);
                        zzw3 = zzcm.zzw(i7 << 3);
                        zzx = zzcm.zzx(zzx3);
                        zzw8 = zzw3 + zzx;
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (zzD(t, i7, i6)) {
                        int zzw10 = zzw(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzv(zzw10);
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 56:
                    if (zzD(t, i7, i6)) {
                        zzw = zzcm.zzw(i7 << 3);
                        zzw8 = zzw + 8;
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (zzD(t, i7, i6)) {
                        zzw2 = zzcm.zzw(i7 << 3);
                        zzw8 = zzw2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (zzD(t, i7, i6)) {
                        zzw5 = zzcm.zzw(i7 << 3);
                        zzw8 = zzw5 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (zzD(t, i7, i6)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zzcf) {
                            zzw6 = zzcm.zzw(i7 << 3);
                            zzc = ((zzcf) object2).zzc();
                            zzw7 = zzcm.zzw(zzc);
                            i2 = zzw6 + zzw7 + zzc;
                            i4 += i2;
                        } else {
                            zzw4 = zzcm.zzw(i7 << 3);
                            zzv = zzcm.zzy((String) object2);
                            i2 = zzw4 + zzv;
                            i4 += i2;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (zzD(t, i7, i6)) {
                        zzw8 = zzer.zzw(i7, unsafe.getObject(t, j), zzo(i6));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (zzD(t, i7, i6)) {
                        zzw6 = zzcm.zzw(i7 << 3);
                        zzc = ((zzcf) unsafe.getObject(t, j)).zzc();
                        zzw7 = zzcm.zzw(zzc);
                        i2 = zzw6 + zzw7 + zzc;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 62:
                    if (zzD(t, i7, i6)) {
                        int zzw11 = zzw(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzw(zzw11);
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 63:
                    if (zzD(t, i7, i6)) {
                        int zzw12 = zzw(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzv(zzw12);
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 64:
                    if (zzD(t, i7, i6)) {
                        zzw2 = zzcm.zzw(i7 << 3);
                        zzw8 = zzw2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (zzD(t, i7, i6)) {
                        zzw = zzcm.zzw(i7 << 3);
                        zzw8 = zzw + 8;
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (zzD(t, i7, i6)) {
                        int zzw13 = zzw(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzw((zzw13 >> 31) ^ (zzw13 + zzw13));
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 67:
                    if (zzD(t, i7, i6)) {
                        long zzx4 = zzx(t, j);
                        zzw4 = zzcm.zzw(i7 << 3);
                        zzv = zzcm.zzx((zzx4 >> 63) ^ (zzx4 + zzx4));
                        i2 = zzw4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 68:
                    if (zzD(t, i7, i6)) {
                        zzw8 = zzcm.zzE(i7, (zzee) unsafe.getObject(t, j), zzo(i6));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i4 += zzw8;
        }
        zzfd<?, ?> zzfdVar = this.zzl;
        int zzf = i4 + zzfdVar.zzf(zzfdVar.zzb(t));
        if (this.zzf) {
            this.zzm.zzb(t);
            throw null;
        }
        return zzf;
    }

    private final int zzn(T t) {
        int zzw;
        int zzw2;
        int zzw3;
        int zzx;
        int zzw4;
        int zzv;
        int zzw5;
        int zzw6;
        int zzc;
        int zzw7;
        int zzw8;
        int zzu;
        int zzw9;
        int i;
        Unsafe unsafe = zzb;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int zzr = zzr(i3);
            int zzt = zzt(zzr);
            int i4 = this.zzc[i3];
            long j = zzr & 1048575;
            if (zzt >= zzcv.zzJ.zza() && zzt <= zzcv.zzW.zza()) {
                int i5 = this.zzc[i3 + 2];
            }
            switch (zzt) {
                case 0:
                    if (zzB(t, i3)) {
                        zzw = zzcm.zzw(i4 << 3);
                        zzw8 = zzw + 8;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzB(t, i3)) {
                        zzw2 = zzcm.zzw(i4 << 3);
                        zzw8 = zzw2 + 4;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzB(t, i3)) {
                        long zzf = zzfn.zzf(t, j);
                        zzw3 = zzcm.zzw(i4 << 3);
                        zzx = zzcm.zzx(zzf);
                        i2 += zzw3 + zzx;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzB(t, i3)) {
                        long zzf2 = zzfn.zzf(t, j);
                        zzw3 = zzcm.zzw(i4 << 3);
                        zzx = zzcm.zzx(zzf2);
                        i2 += zzw3 + zzx;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzB(t, i3)) {
                        int zzd = zzfn.zzd(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzv(zzd);
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzB(t, i3)) {
                        zzw = zzcm.zzw(i4 << 3);
                        zzw8 = zzw + 8;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzB(t, i3)) {
                        zzw2 = zzcm.zzw(i4 << 3);
                        zzw8 = zzw2 + 4;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzB(t, i3)) {
                        zzw5 = zzcm.zzw(i4 << 3);
                        zzw8 = zzw5 + 1;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzB(t, i3)) {
                        break;
                    } else {
                        Object zzn = zzfn.zzn(t, j);
                        if (zzn instanceof zzcf) {
                            zzw6 = zzcm.zzw(i4 << 3);
                            zzc = ((zzcf) zzn).zzc();
                            zzw7 = zzcm.zzw(zzc);
                            i = zzw6 + zzw7 + zzc;
                            i2 += i;
                            break;
                        } else {
                            zzw4 = zzcm.zzw(i4 << 3);
                            zzv = zzcm.zzy((String) zzn);
                            i = zzw4 + zzv;
                            i2 += i;
                        }
                    }
                case 9:
                    if (zzB(t, i3)) {
                        zzw8 = zzer.zzw(i4, zzfn.zzn(t, j), zzo(i3));
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzB(t, i3)) {
                        zzw6 = zzcm.zzw(i4 << 3);
                        zzc = ((zzcf) zzfn.zzn(t, j)).zzc();
                        zzw7 = zzcm.zzw(zzc);
                        i = zzw6 + zzw7 + zzc;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzB(t, i3)) {
                        int zzd2 = zzfn.zzd(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzw(zzd2);
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzB(t, i3)) {
                        int zzd3 = zzfn.zzd(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzv(zzd3);
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzB(t, i3)) {
                        zzw2 = zzcm.zzw(i4 << 3);
                        zzw8 = zzw2 + 4;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzB(t, i3)) {
                        zzw = zzcm.zzw(i4 << 3);
                        zzw8 = zzw + 8;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzB(t, i3)) {
                        int zzd4 = zzfn.zzd(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzw((zzd4 >> 31) ^ (zzd4 + zzd4));
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzB(t, i3)) {
                        long zzf3 = zzfn.zzf(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzx((zzf3 >> 63) ^ (zzf3 + zzf3));
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzB(t, i3)) {
                        zzw8 = zzcm.zzE(i4, (zzee) zzfn.zzn(t, j), zzo(i3));
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzw8 = zzer.zzs(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 19:
                    zzw8 = zzer.zzq(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 20:
                    zzw8 = zzer.zzc(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 21:
                    zzw8 = zzer.zze(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 22:
                    zzw8 = zzer.zzk(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 23:
                    zzw8 = zzer.zzs(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 24:
                    zzw8 = zzer.zzq(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 25:
                    zzw8 = zzer.zzu(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 26:
                    zzw8 = zzer.zzv(i4, (List) zzfn.zzn(t, j));
                    i2 += zzw8;
                    break;
                case 27:
                    zzw8 = zzer.zzx(i4, (List) zzfn.zzn(t, j), zzo(i3));
                    i2 += zzw8;
                    break;
                case 28:
                    zzw8 = zzer.zzy(i4, (List) zzfn.zzn(t, j));
                    i2 += zzw8;
                    break;
                case 29:
                    zzw8 = zzer.zzm(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 30:
                    zzw8 = zzer.zzi(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 31:
                    zzw8 = zzer.zzq(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 32:
                    zzw8 = zzer.zzs(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 33:
                    zzw8 = zzer.zzo(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 34:
                    zzw8 = zzer.zzg(i4, (List) zzfn.zzn(t, j), false);
                    i2 += zzw8;
                    break;
                case 35:
                    zzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzv = zzer.zzb((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzv = zzer.zzd((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzv = zzer.zzj((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    zzv = zzer.zzt((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzv = zzer.zzl((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzv = zzer.zzh((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzv = zzer.zzn((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzv = zzer.zzf((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzu = zzcm.zzu(i4);
                        zzw9 = zzcm.zzw(zzv);
                        zzw4 = zzu + zzw9;
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzw8 = zzer.zzz(i4, (List) zzfn.zzn(t, j), zzo(i3));
                    i2 += zzw8;
                    break;
                case 50:
                    zzdz.zza(i4, zzfn.zzn(t, j), zzp(i3));
                    break;
                case 51:
                    if (zzD(t, i4, i3)) {
                        zzw = zzcm.zzw(i4 << 3);
                        zzw8 = zzw + 8;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzD(t, i4, i3)) {
                        zzw2 = zzcm.zzw(i4 << 3);
                        zzw8 = zzw2 + 4;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzD(t, i4, i3)) {
                        long zzx2 = zzx(t, j);
                        zzw3 = zzcm.zzw(i4 << 3);
                        zzx = zzcm.zzx(zzx2);
                        i2 += zzw3 + zzx;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzD(t, i4, i3)) {
                        long zzx3 = zzx(t, j);
                        zzw3 = zzcm.zzw(i4 << 3);
                        zzx = zzcm.zzx(zzx3);
                        i2 += zzw3 + zzx;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzD(t, i4, i3)) {
                        int zzw10 = zzw(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzv(zzw10);
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzD(t, i4, i3)) {
                        zzw = zzcm.zzw(i4 << 3);
                        zzw8 = zzw + 8;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzD(t, i4, i3)) {
                        zzw2 = zzcm.zzw(i4 << 3);
                        zzw8 = zzw2 + 4;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzD(t, i4, i3)) {
                        zzw5 = zzcm.zzw(i4 << 3);
                        zzw8 = zzw5 + 1;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!zzD(t, i4, i3)) {
                        break;
                    } else {
                        Object zzn2 = zzfn.zzn(t, j);
                        if (zzn2 instanceof zzcf) {
                            zzw6 = zzcm.zzw(i4 << 3);
                            zzc = ((zzcf) zzn2).zzc();
                            zzw7 = zzcm.zzw(zzc);
                            i = zzw6 + zzw7 + zzc;
                            i2 += i;
                            break;
                        } else {
                            zzw4 = zzcm.zzw(i4 << 3);
                            zzv = zzcm.zzy((String) zzn2);
                            i = zzw4 + zzv;
                            i2 += i;
                        }
                    }
                case 60:
                    if (zzD(t, i4, i3)) {
                        zzw8 = zzer.zzw(i4, zzfn.zzn(t, j), zzo(i3));
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzD(t, i4, i3)) {
                        zzw6 = zzcm.zzw(i4 << 3);
                        zzc = ((zzcf) zzfn.zzn(t, j)).zzc();
                        zzw7 = zzcm.zzw(zzc);
                        i = zzw6 + zzw7 + zzc;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzD(t, i4, i3)) {
                        int zzw11 = zzw(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzw(zzw11);
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzD(t, i4, i3)) {
                        int zzw12 = zzw(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzv(zzw12);
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzD(t, i4, i3)) {
                        zzw2 = zzcm.zzw(i4 << 3);
                        zzw8 = zzw2 + 4;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzD(t, i4, i3)) {
                        zzw = zzcm.zzw(i4 << 3);
                        zzw8 = zzw + 8;
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzD(t, i4, i3)) {
                        int zzw13 = zzw(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzw((zzw13 >> 31) ^ (zzw13 + zzw13));
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzD(t, i4, i3)) {
                        long zzx4 = zzx(t, j);
                        zzw4 = zzcm.zzw(i4 << 3);
                        zzv = zzcm.zzx((zzx4 >> 63) ^ (zzx4 + zzx4));
                        i = zzw4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzD(t, i4, i3)) {
                        zzw8 = zzcm.zzE(i4, (zzee) zzfn.zzn(t, j), zzo(i3));
                        i2 += zzw8;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzfd<?, ?> zzfdVar = this.zzl;
        return i2 + zzfdVar.zzf(zzfdVar.zzb(t));
    }

    private final zzep zzo(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzep zzepVar = (zzep) this.zzd[i3];
        if (zzepVar != null) {
            return zzepVar;
        }
        zzep<T> zzb2 = zzem.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzp(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzq(Object obj, int i, zzep zzepVar) {
        return zzepVar.zzf(zzfn.zzn(obj, i & 1048575));
    }

    private final int zzr(int i) {
        return this.zzc[i + 1];
    }

    private final int zzs(int i) {
        return this.zzc[i + 2];
    }

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private static <T> double zzu(T t, long j) {
        return ((Double) zzfn.zzn(t, j)).doubleValue();
    }

    private static <T> float zzv(T t, long j) {
        return ((Float) zzfn.zzn(t, j)).floatValue();
    }

    private static <T> int zzw(T t, long j) {
        return ((Integer) zzfn.zzn(t, j)).intValue();
    }

    private static <T> long zzx(T t, long j) {
        return ((Long) zzfn.zzn(t, j)).longValue();
    }

    private static <T> boolean zzy(T t, long j) {
        return ((Boolean) zzfn.zzn(t, j)).booleanValue();
    }

    private final boolean zzz(T t, T t2, int i) {
        return zzB(t, i) == zzB(t2, i);
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final boolean zza(T t, T t2) {
        boolean zzD;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzr = zzr(i);
            long j = zzr & 1048575;
            switch (zzt(zzr)) {
                case 0:
                    if (zzz(t, t2, i) && Double.doubleToLongBits(zzfn.zzl(t, j)) == Double.doubleToLongBits(zzfn.zzl(t2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzz(t, t2, i) && Float.floatToIntBits(zzfn.zzj(t, j)) == Float.floatToIntBits(zzfn.zzj(t2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzz(t, t2, i) && zzfn.zzf(t, j) == zzfn.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzz(t, t2, i) && zzfn.zzf(t, j) == zzfn.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzz(t, t2, i) && zzfn.zzd(t, j) == zzfn.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzz(t, t2, i) && zzfn.zzf(t, j) == zzfn.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzz(t, t2, i) && zzfn.zzd(t, j) == zzfn.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzz(t, t2, i) && zzfn.zzh(t, j) == zzfn.zzh(t2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzz(t, t2, i) && zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzz(t, t2, i) && zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzz(t, t2, i) && zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzz(t, t2, i) && zzfn.zzd(t, j) == zzfn.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzz(t, t2, i) && zzfn.zzd(t, j) == zzfn.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzz(t, t2, i) && zzfn.zzd(t, j) == zzfn.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzz(t, t2, i) && zzfn.zzf(t, j) == zzfn.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzz(t, t2, i) && zzfn.zzd(t, j) == zzfn.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzz(t, t2, i) && zzfn.zzf(t, j) == zzfn.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzz(t, t2, i) && zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
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
                    zzD = zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j));
                    break;
                case 50:
                    zzD = zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j));
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
                    long zzs = zzs(i) & 1048575;
                    if (zzfn.zzd(t, zzs) == zzfn.zzd(t2, zzs) && zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzD) {
                return false;
            }
        }
        if (this.zzl.zzb(t).equals(this.zzl.zzb(t2))) {
            if (this.zzf) {
                this.zzm.zzb(t);
                this.zzm.zzb(t2);
                throw null;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final int zzb(T t) {
        int i;
        int zze;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int zzr = zzr(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & zzr;
            int i5 = 37;
            switch (zzt(zzr)) {
                case 0:
                    i = i2 * 53;
                    zze = zzdh.zze(Double.doubleToLongBits(zzfn.zzl(t, j)));
                    i2 = i + zze;
                    break;
                case 1:
                    i = i2 * 53;
                    zze = Float.floatToIntBits(zzfn.zzj(t, j));
                    i2 = i + zze;
                    break;
                case 2:
                    i = i2 * 53;
                    zze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + zze;
                    break;
                case 3:
                    i = i2 * 53;
                    zze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + zze;
                    break;
                case 4:
                    i = i2 * 53;
                    zze = zzfn.zzd(t, j);
                    i2 = i + zze;
                    break;
                case 5:
                    i = i2 * 53;
                    zze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + zze;
                    break;
                case 6:
                    i = i2 * 53;
                    zze = zzfn.zzd(t, j);
                    i2 = i + zze;
                    break;
                case 7:
                    i = i2 * 53;
                    zze = zzdh.zzf(zzfn.zzh(t, j));
                    i2 = i + zze;
                    break;
                case 8:
                    i = i2 * 53;
                    zze = ((String) zzfn.zzn(t, j)).hashCode();
                    i2 = i + zze;
                    break;
                case 9:
                    Object zzn = zzfn.zzn(t, j);
                    if (zzn != null) {
                        i5 = zzn.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    zze = zzfn.zzn(t, j).hashCode();
                    i2 = i + zze;
                    break;
                case 11:
                    i = i2 * 53;
                    zze = zzfn.zzd(t, j);
                    i2 = i + zze;
                    break;
                case 12:
                    i = i2 * 53;
                    zze = zzfn.zzd(t, j);
                    i2 = i + zze;
                    break;
                case 13:
                    i = i2 * 53;
                    zze = zzfn.zzd(t, j);
                    i2 = i + zze;
                    break;
                case 14:
                    i = i2 * 53;
                    zze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + zze;
                    break;
                case 15:
                    i = i2 * 53;
                    zze = zzfn.zzd(t, j);
                    i2 = i + zze;
                    break;
                case 16:
                    i = i2 * 53;
                    zze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + zze;
                    break;
                case 17:
                    Object zzn2 = zzfn.zzn(t, j);
                    if (zzn2 != null) {
                        i5 = zzn2.hashCode();
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
                    zze = zzfn.zzn(t, j).hashCode();
                    i2 = i + zze;
                    break;
                case 50:
                    i = i2 * 53;
                    zze = zzfn.zzn(t, j).hashCode();
                    i2 = i + zze;
                    break;
                case 51:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzdh.zze(Double.doubleToLongBits(zzu(t, j)));
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = Float.floatToIntBits(zzv(t, j));
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzdh.zze(zzx(t, j));
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzdh.zze(zzx(t, j));
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzw(t, j);
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzdh.zze(zzx(t, j));
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzw(t, j);
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzdh.zzf(zzy(t, j));
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = ((String) zzfn.zzn(t, j)).hashCode();
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzfn.zzn(t, j).hashCode();
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzfn.zzn(t, j).hashCode();
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzw(t, j);
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzw(t, j);
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzw(t, j);
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzdh.zze(zzx(t, j));
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzw(t, j);
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzdh.zze(zzx(t, j));
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        zze = zzfn.zzn(t, j).hashCode();
                        i2 = i + zze;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.zzl.zzb(t).hashCode();
        if (this.zzf) {
            this.zzm.zzb(t);
            throw null;
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final int zzd(T t) {
        return this.zzg ? zzn(t) : zzm(t);
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final void zze(T t) {
        int i;
        int i2 = this.zzi;
        while (true) {
            i = this.zzj;
            if (i2 >= i) {
                break;
            }
            long zzr = zzr(this.zzh[i2]) & 1048575;
            Object zzn = zzfn.zzn(t, zzr);
            if (zzn != null) {
                ((zzdy) zzn).zzc();
                zzfn.zzo(t, zzr, zzn);
            }
            i2++;
        }
        int length = this.zzh.length;
        while (i < length) {
            this.zzk.zza(t, this.zzh[i]);
            i++;
        }
        this.zzl.zzc(t);
        if (this.zzf) {
            this.zzm.zzc(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.icing.zzep
    public final boolean zzf(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzi) {
            int i6 = this.zzh[i5];
            int i7 = this.zzc[i6];
            int zzr = zzr(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(t, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & zzr) != 0 && !zzA(t, i6, i, i2, i10)) {
                return false;
            }
            int zzt = zzt(zzr);
            if (zzt != 9 && zzt != 17) {
                if (zzt != 27) {
                    if (zzt == 60 || zzt == 68) {
                        if (zzD(t, i7, i6) && !zzq(t, zzr, zzo(i6))) {
                            return false;
                        }
                    } else if (zzt != 49) {
                        if (zzt == 50 && !((zzdy) zzfn.zzn(t, zzr & 1048575)).isEmpty()) {
                            zzdx zzdxVar = (zzdx) zzp(i6);
                            throw null;
                        }
                    }
                }
                List list = (List) zzfn.zzn(t, zzr & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzep zzo = zzo(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzo.zzf(list.get(i11))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzA(t, i6, i, i2, i10) && !zzq(t, zzr, zzo(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (this.zzf) {
            this.zzm.zzb(t);
            throw null;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final void zzi(T t, zzcn zzcnVar) throws IOException {
        if (!this.zzg) {
            zzF(t, zzcnVar);
        } else if (!this.zzf) {
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzr = zzr(i);
                int i2 = this.zzc[i];
                switch (zzt(zzr)) {
                    case 0:
                        if (zzB(t, i)) {
                            zzcnVar.zzf(i2, zzfn.zzl(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzB(t, i)) {
                            zzcnVar.zze(i2, zzfn.zzj(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzB(t, i)) {
                            zzcnVar.zzc(i2, zzfn.zzf(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzB(t, i)) {
                            zzcnVar.zzh(i2, zzfn.zzf(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzB(t, i)) {
                            zzcnVar.zzi(i2, zzfn.zzd(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzB(t, i)) {
                            zzcnVar.zzj(i2, zzfn.zzf(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzB(t, i)) {
                            zzcnVar.zzk(i2, zzfn.zzd(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzB(t, i)) {
                            zzcnVar.zzl(i2, zzfn.zzh(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzB(t, i)) {
                            zzH(i2, zzfn.zzn(t, zzr & 1048575), zzcnVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzB(t, i)) {
                            zzcnVar.zzr(i2, zzfn.zzn(t, zzr & 1048575), zzo(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzB(t, i)) {
                            zzcnVar.zzn(i2, (zzcf) zzfn.zzn(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzB(t, i)) {
                            zzcnVar.zzo(i2, zzfn.zzd(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzB(t, i)) {
                            zzcnVar.zzg(i2, zzfn.zzd(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzB(t, i)) {
                            zzcnVar.zzb(i2, zzfn.zzd(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzB(t, i)) {
                            zzcnVar.zzd(i2, zzfn.zzf(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzB(t, i)) {
                            zzcnVar.zzp(i2, zzfn.zzd(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzB(t, i)) {
                            zzcnVar.zzq(i2, zzfn.zzf(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzB(t, i)) {
                            zzcnVar.zzs(i2, zzfn.zzn(t, zzr & 1048575), zzo(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzer.zzH(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 19:
                        zzer.zzI(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 20:
                        zzer.zzJ(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 21:
                        zzer.zzK(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 22:
                        zzer.zzO(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 23:
                        zzer.zzM(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 24:
                        zzer.zzR(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 25:
                        zzer.zzU(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 26:
                        zzer.zzV(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar);
                        break;
                    case 27:
                        zzer.zzX(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, zzo(i));
                        break;
                    case 28:
                        zzer.zzW(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar);
                        break;
                    case 29:
                        zzer.zzP(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 30:
                        zzer.zzT(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 31:
                        zzer.zzS(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 32:
                        zzer.zzN(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 33:
                        zzer.zzQ(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 34:
                        zzer.zzL(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, false);
                        break;
                    case 35:
                        zzer.zzH(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 36:
                        zzer.zzI(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 37:
                        zzer.zzJ(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 38:
                        zzer.zzK(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 39:
                        zzer.zzO(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 40:
                        zzer.zzM(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 41:
                        zzer.zzR(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 42:
                        zzer.zzU(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 43:
                        zzer.zzP(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 44:
                        zzer.zzT(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 45:
                        zzer.zzS(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 46:
                        zzer.zzN(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 47:
                        zzer.zzQ(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 48:
                        zzer.zzL(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, true);
                        break;
                    case 49:
                        zzer.zzY(this.zzc[i], (List) zzfn.zzn(t, zzr & 1048575), zzcnVar, zzo(i));
                        break;
                    case 50:
                        zzG(zzcnVar, i2, zzfn.zzn(t, zzr & 1048575), i);
                        break;
                    case 51:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzf(i2, zzu(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zze(i2, zzv(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzc(i2, zzx(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzh(i2, zzx(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzi(i2, zzw(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzj(i2, zzx(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzk(i2, zzw(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzl(i2, zzy(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzD(t, i2, i)) {
                            zzH(i2, zzfn.zzn(t, zzr & 1048575), zzcnVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzr(i2, zzfn.zzn(t, zzr & 1048575), zzo(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzn(i2, (zzcf) zzfn.zzn(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzo(i2, zzw(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzg(i2, zzw(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzb(i2, zzw(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzd(i2, zzx(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzp(i2, zzw(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzq(i2, zzx(t, zzr & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzD(t, i2, i)) {
                            zzcnVar.zzs(i2, zzfn.zzn(t, zzr & 1048575), zzo(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzfd<?, ?> zzfdVar = this.zzl;
            zzfdVar.zzg(zzfdVar.zzb(t), zzcnVar);
        } else {
            this.zzm.zzb(t);
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final void zzc(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzr = zzr(i);
            long j = 1048575 & zzr;
            int i2 = this.zzc[i];
            switch (zzt(zzr)) {
                case 0:
                    if (zzB(t2, i)) {
                        zzfn.zzm(t, j, zzfn.zzl(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzB(t2, i)) {
                        zzfn.zzk(t, j, zzfn.zzj(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzB(t2, i)) {
                        zzfn.zzi(t, j, zzfn.zzh(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzB(t2, i)) {
                        zzfn.zzo(t, j, zzfn.zzn(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzk(t, t2, i);
                    break;
                case 10:
                    if (zzB(t2, i)) {
                        zzfn.zzo(t, j, zzfn.zzn(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzk(t, t2, i);
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
                    this.zzk.zzb(t, t2, j);
                    break;
                case 50:
                    zzer.zzG(this.zzo, t, t2, j);
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
                    if (zzD(t2, i2, i)) {
                        zzfn.zzo(t, j, zzfn.zzn(t2, j));
                        zzE(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzl(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzD(t2, i2, i)) {
                        zzfn.zzo(t, j, zzfn.zzn(t2, j));
                        zzE(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzl(t, t2, i);
                    break;
            }
        }
        zzer.zzF(this.zzl, t, t2);
        if (this.zzf) {
            zzer.zzE(this.zzm, t, t2);
        }
    }
}

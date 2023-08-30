package com.google.android.gms.internal.measurement;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzlj<T> implements zzlr<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzms.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzlg zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzku zzm;
    private final zzmi<?, ?> zzn;
    private final zzjm<?> zzo;
    private final zzll zzp;
    private final zzlb zzq;

    /* JADX WARN: Multi-variable type inference failed */
    private zzlj(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, zzlg zzlgVar, boolean z, boolean z2, int[] iArr3, int i3, int i4, zzll zzllVar, zzku zzkuVar, zzmi<?, ?> zzmiVar, zzjm<?> zzjmVar, zzlb zzlbVar) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zze = objArr;
        this.zzf = i;
        this.zzi = zzlgVar;
        boolean z3 = false;
        if (zzmiVar != 0 && zzmiVar.zzc((zzlg) i2)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzj = z2;
        this.zzk = iArr3;
        this.zzl = i3;
        this.zzp = i4;
        this.zzm = zzllVar;
        this.zzn = zzkuVar;
        this.zzo = zzmiVar;
        this.zzg = i2;
        this.zzq = zzjmVar;
    }

    private static int zzA(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzB(int i) {
        return this.zzc[i + 1];
    }

    private static <T> long zzC(T t, long j) {
        return ((Long) zzms.zzf(t, j)).longValue();
    }

    private final zzkd zzD(int i) {
        int i2 = i / 3;
        return (zzkd) this.zzd[i2 + i2 + 1];
    }

    private final zzlr zzE(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzlr zzlrVar = (zzlr) this.zzd[i3];
        if (zzlrVar != null) {
            return zzlrVar;
        }
        zzlr<T> zzb2 = zzlo.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzF(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzG(Class<?> cls, String str) {
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

    private final void zzH(T t, T t2, int i) {
        long zzB = zzB(i) & 1048575;
        if (zzM(t2, i)) {
            Object zzf = zzms.zzf(t, zzB);
            Object zzf2 = zzms.zzf(t2, zzB);
            if (zzf != null && zzf2 != null) {
                zzms.zzs(t, zzB, zzkh.zzg(zzf, zzf2));
                zzJ(t, i);
            } else if (zzf2 != null) {
                zzms.zzs(t, zzB, zzf2);
                zzJ(t, i);
            }
        }
    }

    private final void zzI(T t, T t2, int i) {
        int zzB = zzB(i);
        int i2 = this.zzc[i];
        long j = zzB & 1048575;
        if (zzP(t2, i2, i)) {
            Object zzf = zzP(t, i2, i) ? zzms.zzf(t, j) : null;
            Object zzf2 = zzms.zzf(t2, j);
            if (zzf != null && zzf2 != null) {
                zzms.zzs(t, j, zzkh.zzg(zzf, zzf2));
                zzK(t, i2, i);
            } else if (zzf2 != null) {
                zzms.zzs(t, j, zzf2);
                zzK(t, i2, i);
            }
        }
    }

    private final void zzJ(T t, int i) {
        int zzy = zzy(i);
        long j = 1048575 & zzy;
        if (j == 1048575) {
            return;
        }
        zzms.zzq(t, j, (1 << (zzy >>> 20)) | zzms.zzc(t, j));
    }

    private final void zzK(T t, int i, int i2) {
        zzms.zzq(t, zzy(i2) & 1048575, i);
    }

    private final boolean zzL(T t, T t2, int i) {
        return zzM(t, i) == zzM(t2, i);
    }

    private final boolean zzM(T t, int i) {
        int zzy = zzy(i);
        long j = zzy & 1048575;
        if (j != 1048575) {
            return (zzms.zzc(t, j) & (1 << (zzy >>> 20))) != 0;
        }
        int zzB = zzB(i);
        long j2 = zzB & 1048575;
        switch (zzA(zzB)) {
            case 0:
                return zzms.zza(t, j2) != 0.0d;
            case 1:
                return zzms.zzb(t, j2) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return zzms.zzd(t, j2) != 0;
            case 3:
                return zzms.zzd(t, j2) != 0;
            case 4:
                return zzms.zzc(t, j2) != 0;
            case 5:
                return zzms.zzd(t, j2) != 0;
            case 6:
                return zzms.zzc(t, j2) != 0;
            case 7:
                return zzms.zzw(t, j2);
            case 8:
                Object zzf = zzms.zzf(t, j2);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                } else if (zzf instanceof zziy) {
                    return !zziy.zzb.equals(zzf);
                } else {
                    throw new IllegalArgumentException();
                }
            case 9:
                return zzms.zzf(t, j2) != null;
            case 10:
                return !zziy.zzb.equals(zzms.zzf(t, j2));
            case 11:
                return zzms.zzc(t, j2) != 0;
            case 12:
                return zzms.zzc(t, j2) != 0;
            case 13:
                return zzms.zzc(t, j2) != 0;
            case 14:
                return zzms.zzd(t, j2) != 0;
            case 15:
                return zzms.zzc(t, j2) != 0;
            case 16:
                return zzms.zzd(t, j2) != 0;
            case 17:
                return zzms.zzf(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzN(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzM(t, i);
        }
        return (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzO(Object obj, int i, zzlr zzlrVar) {
        return zzlrVar.zzj(zzms.zzf(obj, i & 1048575));
    }

    private final boolean zzP(T t, int i, int i2) {
        return zzms.zzc(t, (long) (zzy(i2) & 1048575)) == i;
    }

    private static <T> boolean zzQ(T t, long j) {
        return ((Boolean) zzms.zzf(t, j)).booleanValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final void zzR(T t, zzjh zzjhVar) throws IOException {
        int i;
        boolean z;
        if (this.zzh) {
            this.zzo.zza(t);
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
            int i6 = this.zzc[i4];
            int zzA = zzA(zzB);
            if (zzA <= 17) {
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
            long j = zzB & i2;
            switch (zzA) {
                case 0:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzf(i6, zzms.zza(t, j));
                        break;
                    }
                case 1:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzo(i6, zzms.zzb(t, j));
                        break;
                    }
                case 2:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzt(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 3:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzJ(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 4:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzr(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 5:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzm(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 6:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzk(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 7:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzb(i6, zzms.zzw(t, j));
                        break;
                    }
                case 8:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzT(i6, unsafe.getObject(t, j), zzjhVar);
                        break;
                    }
                case 9:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzv(i6, unsafe.getObject(t, j), zzE(i4));
                        break;
                    }
                case 10:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzd(i6, (zziy) unsafe.getObject(t, j));
                        break;
                    }
                case 11:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzH(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 12:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzi(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 13:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzw(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 14:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzy(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 15:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzA(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 16:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzC(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 17:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzjhVar.zzq(i6, unsafe.getObject(t, j), zzE(i4));
                        break;
                    }
                case 18:
                    zzlt.zzL(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 19:
                    zzlt.zzP(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 20:
                    zzlt.zzS(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 21:
                    zzlt.zzaa(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 22:
                    zzlt.zzR(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 23:
                    zzlt.zzO(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 24:
                    zzlt.zzN(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 25:
                    zzlt.zzJ(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 26:
                    zzlt.zzY(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar);
                    break;
                case 27:
                    zzlt.zzT(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, zzE(i4));
                    break;
                case 28:
                    zzlt.zzK(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar);
                    break;
                case 29:
                    z = false;
                    zzlt.zzZ(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 30:
                    z = false;
                    zzlt.zzM(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 31:
                    z = false;
                    zzlt.zzU(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 32:
                    z = false;
                    zzlt.zzV(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 33:
                    z = false;
                    zzlt.zzW(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 34:
                    z = false;
                    zzlt.zzX(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, false);
                    break;
                case 35:
                    zzlt.zzL(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 36:
                    zzlt.zzP(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 37:
                    zzlt.zzS(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 38:
                    zzlt.zzaa(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 39:
                    zzlt.zzR(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 40:
                    zzlt.zzO(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 41:
                    zzlt.zzN(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 42:
                    zzlt.zzJ(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 43:
                    zzlt.zzZ(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 44:
                    zzlt.zzM(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 45:
                    zzlt.zzU(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 46:
                    zzlt.zzV(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 47:
                    zzlt.zzW(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 48:
                    zzlt.zzX(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, true);
                    break;
                case 49:
                    zzlt.zzQ(this.zzc[i4], (List) unsafe.getObject(t, j), zzjhVar, zzE(i4));
                    break;
                case 50:
                    zzS(zzjhVar, i6, unsafe.getObject(t, j), i4);
                    break;
                case 51:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzf(i6, zzn(t, j));
                    }
                    break;
                case 52:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzo(i6, zzo(t, j));
                    }
                    break;
                case 53:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzt(i6, zzC(t, j));
                    }
                    break;
                case 54:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzJ(i6, zzC(t, j));
                    }
                    break;
                case 55:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzr(i6, zzr(t, j));
                    }
                    break;
                case 56:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzm(i6, zzC(t, j));
                    }
                    break;
                case 57:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzk(i6, zzr(t, j));
                    }
                    break;
                case 58:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzb(i6, zzQ(t, j));
                    }
                    break;
                case 59:
                    if (zzP(t, i6, i4)) {
                        zzT(i6, unsafe.getObject(t, j), zzjhVar);
                    }
                    break;
                case 60:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzv(i6, unsafe.getObject(t, j), zzE(i4));
                    }
                    break;
                case 61:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzd(i6, (zziy) unsafe.getObject(t, j));
                    }
                    break;
                case 62:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzH(i6, zzr(t, j));
                    }
                    break;
                case 63:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzi(i6, zzr(t, j));
                    }
                    break;
                case 64:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzw(i6, zzr(t, j));
                    }
                    break;
                case 65:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzy(i6, zzC(t, j));
                    }
                    break;
                case 66:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzA(i6, zzr(t, j));
                    }
                    break;
                case 67:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzC(i6, zzC(t, j));
                    }
                    break;
                case 68:
                    if (zzP(t, i6, i4)) {
                        zzjhVar.zzq(i6, unsafe.getObject(t, j), zzE(i4));
                    }
                    break;
            }
            i4 += 3;
            i2 = 1048575;
        }
        zzmi<?, ?> zzmiVar = this.zzn;
        zzmiVar.zzi(zzmiVar.zzc(t), zzjhVar);
    }

    private final <K, V> void zzS(zzjh zzjhVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        zzkz zzkzVar = (zzkz) zzF(i2);
        throw null;
    }

    private static final void zzT(int i, Object obj, zzjh zzjhVar) throws IOException {
        if (obj instanceof String) {
            zzjhVar.zzF(i, (String) obj);
        } else {
            zzjhVar.zzd(i, (zziy) obj);
        }
    }

    static zzmj zzd(Object obj) {
        zzjz zzjzVar = (zzjz) obj;
        zzmj zzmjVar = zzjzVar.zzc;
        if (zzmjVar == zzmj.zzc()) {
            zzmj zze = zzmj.zze();
            zzjzVar.zzc = zze;
            return zze;
        }
        return zzmjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> zzlj<T> zzk(Class<T> cls, zzld zzldVar, zzll zzllVar, zzku zzkuVar, zzmi<?, ?> zzmiVar, zzjm<?> zzjmVar, zzlb zzlbVar) {
        if (zzldVar instanceof zzlq) {
            return zzl((zzlq) zzldVar, zzllVar, zzkuVar, zzmiVar, zzjmVar, zzlbVar);
        }
        zzmf zzmfVar = (zzmf) zzldVar;
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
    static <T> com.google.android.gms.internal.measurement.zzlj<T> zzl(com.google.android.gms.internal.measurement.zzlq r34, com.google.android.gms.internal.measurement.zzll r35, com.google.android.gms.internal.measurement.zzku r36, com.google.android.gms.internal.measurement.zzmi<?, ?> r37, com.google.android.gms.internal.measurement.zzjm<?> r38, com.google.android.gms.internal.measurement.zzlb r39) {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlj.zzl(com.google.android.gms.internal.measurement.zzlq, com.google.android.gms.internal.measurement.zzll, com.google.android.gms.internal.measurement.zzku, com.google.android.gms.internal.measurement.zzmi, com.google.android.gms.internal.measurement.zzjm, com.google.android.gms.internal.measurement.zzlb):com.google.android.gms.internal.measurement.zzlj");
    }

    private static <T> double zzn(T t, long j) {
        return ((Double) zzms.zzf(t, j)).doubleValue();
    }

    private static <T> float zzo(T t, long j) {
        return ((Float) zzms.zzf(t, j)).floatValue();
    }

    private final int zzp(T t) {
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
        int zzo;
        int zzz;
        int zzA8;
        int i2;
        Unsafe unsafe = zzb;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < this.zzc.length; i6 += 3) {
            int zzB2 = zzB(i6);
            int i7 = this.zzc[i6];
            int zzA9 = zzA(zzB2);
            if (zzA9 <= 17) {
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
            long j = zzB2 & 1048575;
            switch (zzA9) {
                case 0:
                    if ((i5 & i) != 0) {
                        zzA = zzjg.zzA(i7 << 3);
                        zzo = zzA + 8;
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if ((i5 & i) != 0) {
                        zzA2 = zzjg.zzA(i7 << 3);
                        zzo = zzA2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if ((i5 & i) != 0) {
                        long j2 = unsafe.getLong(t, j);
                        zzA3 = zzjg.zzA(i7 << 3);
                        zzB = zzjg.zzB(j2);
                        zzo = zzA3 + zzB;
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if ((i5 & i) != 0) {
                        long j3 = unsafe.getLong(t, j);
                        zzA3 = zzjg.zzA(i7 << 3);
                        zzB = zzjg.zzB(j3);
                        zzo = zzA3 + zzB;
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if ((i5 & i) != 0) {
                        int i10 = unsafe.getInt(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzv(i10);
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 5:
                    if ((i5 & i) != 0) {
                        zzA = zzjg.zzA(i7 << 3);
                        zzo = zzA + 8;
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if ((i5 & i) != 0) {
                        zzA2 = zzjg.zzA(i7 << 3);
                        zzo = zzA2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if ((i5 & i) != 0) {
                        zzA5 = zzjg.zzA(i7 << 3);
                        zzo = zzA5 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if ((i5 & i) != 0) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof zziy) {
                            zzA6 = zzjg.zzA(i7 << 3);
                            zzd = ((zziy) object).zzd();
                            zzA7 = zzjg.zzA(zzd);
                            i2 = zzA6 + zzA7 + zzd;
                            i4 += i2;
                        } else {
                            zzA4 = zzjg.zzA(i7 << 3);
                            zzv = zzjg.zzy((String) object);
                            i2 = zzA4 + zzv;
                            i4 += i2;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if ((i5 & i) != 0) {
                        zzo = zzlt.zzo(i7, unsafe.getObject(t, j), zzE(i6));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if ((i5 & i) != 0) {
                        zzA6 = zzjg.zzA(i7 << 3);
                        zzd = ((zziy) unsafe.getObject(t, j)).zzd();
                        zzA7 = zzjg.zzA(zzd);
                        i2 = zzA6 + zzA7 + zzd;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 11:
                    if ((i5 & i) != 0) {
                        int i11 = unsafe.getInt(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzA(i11);
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 12:
                    if ((i5 & i) != 0) {
                        int i12 = unsafe.getInt(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzv(i12);
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 13:
                    if ((i5 & i) != 0) {
                        zzA2 = zzjg.zzA(i7 << 3);
                        zzo = zzA2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if ((i5 & i) != 0) {
                        zzA = zzjg.zzA(i7 << 3);
                        zzo = zzA + 8;
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if ((i5 & i) != 0) {
                        int i13 = unsafe.getInt(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzA((i13 >> 31) ^ (i13 + i13));
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 16:
                    if ((i5 & i) != 0) {
                        long j4 = unsafe.getLong(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzB((j4 >> 63) ^ (j4 + j4));
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 17:
                    if ((i5 & i) != 0) {
                        zzo = zzjg.zzu(i7, (zzlg) unsafe.getObject(t, j), zzE(i6));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    zzo = zzlt.zzh(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 19:
                    zzo = zzlt.zzf(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 20:
                    zzo = zzlt.zzm(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 21:
                    zzo = zzlt.zzx(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 22:
                    zzo = zzlt.zzk(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 23:
                    zzo = zzlt.zzh(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 24:
                    zzo = zzlt.zzf(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 25:
                    zzo = zzlt.zza(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 26:
                    zzo = zzlt.zzu(i7, (List) unsafe.getObject(t, j));
                    break;
                case 27:
                    zzo = zzlt.zzp(i7, (List) unsafe.getObject(t, j), zzE(i6));
                    break;
                case 28:
                    zzo = zzlt.zzc(i7, (List) unsafe.getObject(t, j));
                    break;
                case 29:
                    zzo = zzlt.zzv(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 30:
                    zzo = zzlt.zzd(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 31:
                    zzo = zzlt.zzf(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 32:
                    zzo = zzlt.zzh(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 33:
                    zzo = zzlt.zzq(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 34:
                    zzo = zzlt.zzs(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 35:
                    zzv = zzlt.zzi((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 36:
                    zzv = zzlt.zzg((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 37:
                    zzv = zzlt.zzn((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 38:
                    zzv = zzlt.zzy((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 39:
                    zzv = zzlt.zzl((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 40:
                    zzv = zzlt.zzi((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 41:
                    zzv = zzlt.zzg((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 42:
                    zzv = zzlt.zzb((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 43:
                    zzv = zzlt.zzw((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 44:
                    zzv = zzlt.zze((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 45:
                    zzv = zzlt.zzg((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 46:
                    zzv = zzlt.zzi((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 47:
                    zzv = zzlt.zzr((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 48:
                    zzv = zzlt.zzt((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i7);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 49:
                    zzo = zzlt.zzj(i7, (List) unsafe.getObject(t, j), zzE(i6));
                    break;
                case 50:
                    zzlb.zza(i7, unsafe.getObject(t, j), zzF(i6));
                    continue;
                case 51:
                    if (zzP(t, i7, i6)) {
                        zzA = zzjg.zzA(i7 << 3);
                        zzo = zzA + 8;
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (zzP(t, i7, i6)) {
                        zzA2 = zzjg.zzA(i7 << 3);
                        zzo = zzA2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (zzP(t, i7, i6)) {
                        long zzC = zzC(t, j);
                        zzA3 = zzjg.zzA(i7 << 3);
                        zzB = zzjg.zzB(zzC);
                        zzo = zzA3 + zzB;
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (zzP(t, i7, i6)) {
                        long zzC2 = zzC(t, j);
                        zzA3 = zzjg.zzA(i7 << 3);
                        zzB = zzjg.zzB(zzC2);
                        zzo = zzA3 + zzB;
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (zzP(t, i7, i6)) {
                        int zzr = zzr(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzv(zzr);
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 56:
                    if (zzP(t, i7, i6)) {
                        zzA = zzjg.zzA(i7 << 3);
                        zzo = zzA + 8;
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (zzP(t, i7, i6)) {
                        zzA2 = zzjg.zzA(i7 << 3);
                        zzo = zzA2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (zzP(t, i7, i6)) {
                        zzA5 = zzjg.zzA(i7 << 3);
                        zzo = zzA5 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (zzP(t, i7, i6)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zziy) {
                            zzA6 = zzjg.zzA(i7 << 3);
                            zzd = ((zziy) object2).zzd();
                            zzA7 = zzjg.zzA(zzd);
                            i2 = zzA6 + zzA7 + zzd;
                            i4 += i2;
                        } else {
                            zzA4 = zzjg.zzA(i7 << 3);
                            zzv = zzjg.zzy((String) object2);
                            i2 = zzA4 + zzv;
                            i4 += i2;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (zzP(t, i7, i6)) {
                        zzo = zzlt.zzo(i7, unsafe.getObject(t, j), zzE(i6));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (zzP(t, i7, i6)) {
                        zzA6 = zzjg.zzA(i7 << 3);
                        zzd = ((zziy) unsafe.getObject(t, j)).zzd();
                        zzA7 = zzjg.zzA(zzd);
                        i2 = zzA6 + zzA7 + zzd;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 62:
                    if (zzP(t, i7, i6)) {
                        int zzr2 = zzr(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzA(zzr2);
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 63:
                    if (zzP(t, i7, i6)) {
                        int zzr3 = zzr(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzv(zzr3);
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 64:
                    if (zzP(t, i7, i6)) {
                        zzA2 = zzjg.zzA(i7 << 3);
                        zzo = zzA2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (zzP(t, i7, i6)) {
                        zzA = zzjg.zzA(i7 << 3);
                        zzo = zzA + 8;
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (zzP(t, i7, i6)) {
                        int zzr4 = zzr(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzA((zzr4 >> 31) ^ (zzr4 + zzr4));
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 67:
                    if (zzP(t, i7, i6)) {
                        long zzC3 = zzC(t, j);
                        zzA4 = zzjg.zzA(i7 << 3);
                        zzv = zzjg.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        i2 = zzA4 + zzv;
                        i4 += i2;
                    } else {
                        continue;
                    }
                case 68:
                    if (zzP(t, i7, i6)) {
                        zzo = zzjg.zzu(i7, (zzlg) unsafe.getObject(t, j), zzE(i6));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i4 += zzo;
        }
        zzmi<?, ?> zzmiVar = this.zzn;
        int zza2 = i4 + zzmiVar.zza(zzmiVar.zzc(t));
        if (this.zzh) {
            this.zzo.zza(t);
            throw null;
        }
        return zza2;
    }

    private final int zzq(T t) {
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
            if (zzA9 >= zzjr.zzJ.zza() && zzA9 <= zzjr.zzW.zza()) {
                int i5 = this.zzc[i3 + 2];
            }
            switch (zzA9) {
                case 0:
                    if (zzM(t, i3)) {
                        zzA = zzjg.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzM(t, i3)) {
                        zzA2 = zzjg.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzM(t, i3)) {
                        long zzd2 = zzms.zzd(t, j);
                        zzA3 = zzjg.zzA(i4 << 3);
                        zzB = zzjg.zzB(zzd2);
                        i2 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzM(t, i3)) {
                        long zzd3 = zzms.zzd(t, j);
                        zzA3 = zzjg.zzA(i4 << 3);
                        zzB = zzjg.zzB(zzd3);
                        i2 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzM(t, i3)) {
                        int zzc = zzms.zzc(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzv(zzc);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzM(t, i3)) {
                        zzA = zzjg.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzM(t, i3)) {
                        zzA2 = zzjg.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzM(t, i3)) {
                        zzA5 = zzjg.zzA(i4 << 3);
                        zzo = zzA5 + 1;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzM(t, i3)) {
                        break;
                    } else {
                        Object zzf = zzms.zzf(t, j);
                        if (zzf instanceof zziy) {
                            zzA6 = zzjg.zzA(i4 << 3);
                            zzd = ((zziy) zzf).zzd();
                            zzA7 = zzjg.zzA(zzd);
                            i = zzA6 + zzA7 + zzd;
                            i2 += i;
                            break;
                        } else {
                            zzA4 = zzjg.zzA(i4 << 3);
                            zzv = zzjg.zzy((String) zzf);
                            i = zzA4 + zzv;
                            i2 += i;
                        }
                    }
                case 9:
                    if (zzM(t, i3)) {
                        zzo = zzlt.zzo(i4, zzms.zzf(t, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzM(t, i3)) {
                        zzA6 = zzjg.zzA(i4 << 3);
                        zzd = ((zziy) zzms.zzf(t, j)).zzd();
                        zzA7 = zzjg.zzA(zzd);
                        i = zzA6 + zzA7 + zzd;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzM(t, i3)) {
                        int zzc2 = zzms.zzc(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzA(zzc2);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzM(t, i3)) {
                        int zzc3 = zzms.zzc(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzv(zzc3);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzM(t, i3)) {
                        zzA2 = zzjg.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzM(t, i3)) {
                        zzA = zzjg.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzM(t, i3)) {
                        int zzc4 = zzms.zzc(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzA((zzc4 >> 31) ^ (zzc4 + zzc4));
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzM(t, i3)) {
                        long zzd4 = zzms.zzd(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzB((zzd4 >> 63) ^ (zzd4 + zzd4));
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzM(t, i3)) {
                        zzo = zzjg.zzu(i4, (zzlg) zzms.zzf(t, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzo = zzlt.zzh(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 19:
                    zzo = zzlt.zzf(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 20:
                    zzo = zzlt.zzm(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 21:
                    zzo = zzlt.zzx(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 22:
                    zzo = zzlt.zzk(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 23:
                    zzo = zzlt.zzh(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 24:
                    zzo = zzlt.zzf(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 25:
                    zzo = zzlt.zza(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 26:
                    zzo = zzlt.zzu(i4, (List) zzms.zzf(t, j));
                    i2 += zzo;
                    break;
                case 27:
                    zzo = zzlt.zzp(i4, (List) zzms.zzf(t, j), zzE(i3));
                    i2 += zzo;
                    break;
                case 28:
                    zzo = zzlt.zzc(i4, (List) zzms.zzf(t, j));
                    i2 += zzo;
                    break;
                case 29:
                    zzo = zzlt.zzv(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 30:
                    zzo = zzlt.zzd(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 31:
                    zzo = zzlt.zzf(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 32:
                    zzo = zzlt.zzh(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 33:
                    zzo = zzlt.zzq(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 34:
                    zzo = zzlt.zzs(i4, (List) zzms.zzf(t, j), false);
                    i2 += zzo;
                    break;
                case 35:
                    zzv = zzlt.zzi((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzv = zzlt.zzg((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzv = zzlt.zzn((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzv = zzlt.zzy((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzv = zzlt.zzl((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzv = zzlt.zzi((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzv = zzlt.zzg((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    zzv = zzlt.zzb((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzv = zzlt.zzw((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzv = zzlt.zze((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzv = zzlt.zzg((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzv = zzlt.zzi((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzv = zzlt.zzr((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzv = zzlt.zzt((List) unsafe.getObject(t, j));
                    if (zzv > 0) {
                        zzz = zzjg.zzz(i4);
                        zzA8 = zzjg.zzA(zzv);
                        zzA4 = zzz + zzA8;
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzo = zzlt.zzj(i4, (List) zzms.zzf(t, j), zzE(i3));
                    i2 += zzo;
                    break;
                case 50:
                    zzlb.zza(i4, zzms.zzf(t, j), zzF(i3));
                    break;
                case 51:
                    if (zzP(t, i4, i3)) {
                        zzA = zzjg.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzP(t, i4, i3)) {
                        zzA2 = zzjg.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzP(t, i4, i3)) {
                        long zzC = zzC(t, j);
                        zzA3 = zzjg.zzA(i4 << 3);
                        zzB = zzjg.zzB(zzC);
                        i2 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzP(t, i4, i3)) {
                        long zzC2 = zzC(t, j);
                        zzA3 = zzjg.zzA(i4 << 3);
                        zzB = zzjg.zzB(zzC2);
                        i2 += zzA3 + zzB;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzP(t, i4, i3)) {
                        int zzr = zzr(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzv(zzr);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzP(t, i4, i3)) {
                        zzA = zzjg.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzP(t, i4, i3)) {
                        zzA2 = zzjg.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzP(t, i4, i3)) {
                        zzA5 = zzjg.zzA(i4 << 3);
                        zzo = zzA5 + 1;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!zzP(t, i4, i3)) {
                        break;
                    } else {
                        Object zzf2 = zzms.zzf(t, j);
                        if (zzf2 instanceof zziy) {
                            zzA6 = zzjg.zzA(i4 << 3);
                            zzd = ((zziy) zzf2).zzd();
                            zzA7 = zzjg.zzA(zzd);
                            i = zzA6 + zzA7 + zzd;
                            i2 += i;
                            break;
                        } else {
                            zzA4 = zzjg.zzA(i4 << 3);
                            zzv = zzjg.zzy((String) zzf2);
                            i = zzA4 + zzv;
                            i2 += i;
                        }
                    }
                case 60:
                    if (zzP(t, i4, i3)) {
                        zzo = zzlt.zzo(i4, zzms.zzf(t, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzP(t, i4, i3)) {
                        zzA6 = zzjg.zzA(i4 << 3);
                        zzd = ((zziy) zzms.zzf(t, j)).zzd();
                        zzA7 = zzjg.zzA(zzd);
                        i = zzA6 + zzA7 + zzd;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzP(t, i4, i3)) {
                        int zzr2 = zzr(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzA(zzr2);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzP(t, i4, i3)) {
                        int zzr3 = zzr(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzv(zzr3);
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzP(t, i4, i3)) {
                        zzA2 = zzjg.zzA(i4 << 3);
                        zzo = zzA2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzP(t, i4, i3)) {
                        zzA = zzjg.zzA(i4 << 3);
                        zzo = zzA + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzP(t, i4, i3)) {
                        int zzr4 = zzr(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzA((zzr4 >> 31) ^ (zzr4 + zzr4));
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzP(t, i4, i3)) {
                        long zzC3 = zzC(t, j);
                        zzA4 = zzjg.zzA(i4 << 3);
                        zzv = zzjg.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        i = zzA4 + zzv;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzP(t, i4, i3)) {
                        zzo = zzjg.zzu(i4, (zzlg) zzms.zzf(t, j), zzE(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzmi<?, ?> zzmiVar = this.zzn;
        return i2 + zzmiVar.zza(zzmiVar.zzc(t));
    }

    private static <T> int zzr(T t, long j) {
        return ((Integer) zzms.zzf(t, j)).intValue();
    }

    private final <K, V> int zzs(T t, byte[] bArr, int i, int i2, int i3, long j, zzik zzikVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzF = zzF(i3);
        Object object = unsafe.getObject(t, j);
        if (!((zzla) object).zze()) {
            zzla<K, V> zzb2 = zzla.zza().zzb();
            zzlb.zzb(zzb2, object);
            unsafe.putObject(t, j, zzb2);
        }
        zzkz zzkzVar = (zzkz) zzF;
        throw null;
    }

    private final int zzt(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzik zzikVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(zzil.zzn(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(zzil.zzb(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzm = zzil.zzm(bArr, i, zzikVar);
                    unsafe.putObject(t, j, Long.valueOf(zzikVar.zzb));
                    unsafe.putInt(t, j2, i4);
                    return zzm;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zzj = zzil.zzj(bArr, i, zzikVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzikVar.zza));
                    unsafe.putInt(t, j2, i4);
                    return zzj;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzil.zzn(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzil.zzb(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzm2 = zzil.zzm(bArr, i, zzikVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzikVar.zzb != 0));
                    unsafe.putInt(t, j2, i4);
                    return zzm2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int zzj2 = zzil.zzj(bArr, i, zzikVar);
                    int i9 = zzikVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || zzmx.zzf(bArr, zzj2, zzj2 + i9)) {
                        unsafe.putObject(t, j, new String(bArr, zzj2, i9, zzkh.zza));
                        zzj2 += i9;
                    } else {
                        throw zzkj.zzc();
                    }
                    unsafe.putInt(t, j2, i4);
                    return zzj2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int zzd = zzil.zzd(zzE(i8), bArr, i, i2, zzikVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzikVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzkh.zzg(object, zzikVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zzd;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zza2 = zzil.zza(bArr, i, zzikVar);
                    unsafe.putObject(t, j, zzikVar.zzc);
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int zzj3 = zzil.zzj(bArr, i, zzikVar);
                    int i10 = zzikVar.zza;
                    zzkd zzD = zzD(i8);
                    if (zzD == null || zzD.zza(i10)) {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                    } else {
                        zzd(t).zzh(i3, Long.valueOf(i10));
                    }
                    return zzj3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int zzj4 = zzil.zzj(bArr, i, zzikVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzjc.zzb(zzikVar.zza)));
                    unsafe.putInt(t, j2, i4);
                    return zzj4;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzm3 = zzil.zzm(bArr, i, zzikVar);
                    unsafe.putObject(t, j, Long.valueOf(zzjc.zzc(zzikVar.zzb)));
                    unsafe.putInt(t, j2, i4);
                    return zzm3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int zzc = zzil.zzc(zzE(i8), bArr, i, i2, (i3 & (-8)) | 4, zzikVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzikVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzkh.zzg(object2, zzikVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zzc;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x02a9, code lost:
        if (r0 != r15) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02ab, code lost:
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r10 = r18;
        r2 = r19;
        r1 = r20;
        r6 = r24;
        r7 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02c1, code lost:
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02f4, code lost:
        if (r0 != r15) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0317, code lost:
        if (r0 != r15) goto L154;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzu(T r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.measurement.zzik r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 898
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlj.zzu(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzik):int");
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
    private final int zzv(T r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, com.google.android.gms.internal.measurement.zzik r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1172
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlj.zzv(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.zzik):int");
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

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final int zza(T t) {
        return this.zzi ? zzq(t) : zzp(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final int zzb(T t) {
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
                    zzc = zzkh.zzc(Double.doubleToLongBits(zzms.zza(t, j)));
                    i2 = i + zzc;
                    break;
                case 1:
                    i = i2 * 53;
                    zzc = Float.floatToIntBits(zzms.zzb(t, j));
                    i2 = i + zzc;
                    break;
                case 2:
                    i = i2 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t, j));
                    i2 = i + zzc;
                    break;
                case 3:
                    i = i2 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t, j));
                    i2 = i + zzc;
                    break;
                case 4:
                    i = i2 * 53;
                    zzc = zzms.zzc(t, j);
                    i2 = i + zzc;
                    break;
                case 5:
                    i = i2 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t, j));
                    i2 = i + zzc;
                    break;
                case 6:
                    i = i2 * 53;
                    zzc = zzms.zzc(t, j);
                    i2 = i + zzc;
                    break;
                case 7:
                    i = i2 * 53;
                    zzc = zzkh.zza(zzms.zzw(t, j));
                    i2 = i + zzc;
                    break;
                case 8:
                    i = i2 * 53;
                    zzc = ((String) zzms.zzf(t, j)).hashCode();
                    i2 = i + zzc;
                    break;
                case 9:
                    Object zzf = zzms.zzf(t, j);
                    if (zzf != null) {
                        i5 = zzf.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    zzc = zzms.zzf(t, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 11:
                    i = i2 * 53;
                    zzc = zzms.zzc(t, j);
                    i2 = i + zzc;
                    break;
                case 12:
                    i = i2 * 53;
                    zzc = zzms.zzc(t, j);
                    i2 = i + zzc;
                    break;
                case 13:
                    i = i2 * 53;
                    zzc = zzms.zzc(t, j);
                    i2 = i + zzc;
                    break;
                case 14:
                    i = i2 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t, j));
                    i2 = i + zzc;
                    break;
                case 15:
                    i = i2 * 53;
                    zzc = zzms.zzc(t, j);
                    i2 = i + zzc;
                    break;
                case 16:
                    i = i2 * 53;
                    zzc = zzkh.zzc(zzms.zzd(t, j));
                    i2 = i + zzc;
                    break;
                case 17:
                    Object zzf2 = zzms.zzf(t, j);
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
                    zzc = zzms.zzf(t, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 50:
                    i = i2 * 53;
                    zzc = zzms.zzf(t, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 51:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzkh.zzc(Double.doubleToLongBits(zzn(t, j)));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = Float.floatToIntBits(zzo(t, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzkh.zzc(zzC(t, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzkh.zzc(zzC(t, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(t, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzkh.zzc(zzC(t, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(t, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzkh.zza(zzQ(t, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = ((String) zzms.zzf(t, j)).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzms.zzf(t, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzms.zzf(t, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(t, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(t, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(t, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzkh.zzc(zzC(t, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzr(t, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzkh.zzc(zzC(t, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzP(t, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzms.zzf(t, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.zzn.zzc(t).hashCode();
        if (this.zzh) {
            this.zzo.zza(t);
            throw null;
        }
        return hashCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0419, code lost:
        if (r6 == 1048575) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x041b, code lost:
        r26.putInt(r12, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0421, code lost:
        r3 = r9.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0425, code lost:
        if (r3 >= r9.zzl) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0427, code lost:
        r4 = r9.zzj[r3];
        r5 = r9.zzc[r4];
        r5 = com.google.android.gms.internal.measurement.zzms.zzf(r12, r9.zzB(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0439, code lost:
        if (r5 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0440, code lost:
        if (r9.zzD(r4) != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0442, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0445, code lost:
        r5 = (com.google.android.gms.internal.measurement.zzla) r5;
        r0 = (com.google.android.gms.internal.measurement.zzkz) r9.zzF(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x044d, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x044e, code lost:
        if (r7 != 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0452, code lost:
        if (r0 != r32) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0459, code lost:
        throw com.google.android.gms.internal.measurement.zzkj.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x045c, code lost:
        if (r0 > r32) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x045e, code lost:
        if (r1 != r7) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0460, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0465, code lost:
        throw com.google.android.gms.internal.measurement.zzkj.zze();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(T r29, byte[] r30, int r31, int r32, int r33, com.google.android.gms.internal.measurement.zzik r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1164
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlj.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzik):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final T zze() {
        return (T) ((zzjz) this.zzg).zzl(4, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzf(T t) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long zzB = zzB(this.zzj[i2]) & 1048575;
            Object zzf = zzms.zzf(t, zzB);
            if (zzf != null) {
                ((zzla) zzf).zzc();
                zzms.zzs(t, zzB, zzf);
            }
            i2++;
        }
        int length = this.zzj.length;
        while (i < length) {
            this.zzm.zza(t, this.zzj[i]);
            i++;
        }
        this.zzn.zzg(t);
        if (this.zzh) {
            this.zzo.zzb(t);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzh(T t, byte[] bArr, int i, int i2, zzik zzikVar) throws IOException {
        if (this.zzi) {
            zzu(t, bArr, i, i2, zzikVar);
        } else {
            zzc(t, bArr, i, i2, 0, zzikVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final boolean zzi(T t, T t2) {
        boolean zzH;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzB = zzB(i);
            long j = zzB & 1048575;
            switch (zzA(zzB)) {
                case 0:
                    if (zzL(t, t2, i) && Double.doubleToLongBits(zzms.zza(t, j)) == Double.doubleToLongBits(zzms.zza(t2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzL(t, t2, i) && Float.floatToIntBits(zzms.zzb(t, j)) == Float.floatToIntBits(zzms.zzb(t2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzL(t, t2, i) && zzms.zzd(t, j) == zzms.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzL(t, t2, i) && zzms.zzd(t, j) == zzms.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzL(t, t2, i) && zzms.zzc(t, j) == zzms.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzL(t, t2, i) && zzms.zzd(t, j) == zzms.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzL(t, t2, i) && zzms.zzc(t, j) == zzms.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzL(t, t2, i) && zzms.zzw(t, j) == zzms.zzw(t2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzL(t, t2, i) && zzlt.zzH(zzms.zzf(t, j), zzms.zzf(t2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzL(t, t2, i) && zzlt.zzH(zzms.zzf(t, j), zzms.zzf(t2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzL(t, t2, i) && zzlt.zzH(zzms.zzf(t, j), zzms.zzf(t2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzL(t, t2, i) && zzms.zzc(t, j) == zzms.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzL(t, t2, i) && zzms.zzc(t, j) == zzms.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzL(t, t2, i) && zzms.zzc(t, j) == zzms.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzL(t, t2, i) && zzms.zzd(t, j) == zzms.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzL(t, t2, i) && zzms.zzc(t, j) == zzms.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzL(t, t2, i) && zzms.zzd(t, j) == zzms.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzL(t, t2, i) && zzlt.zzH(zzms.zzf(t, j), zzms.zzf(t2, j))) {
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
                    zzH = zzlt.zzH(zzms.zzf(t, j), zzms.zzf(t2, j));
                    break;
                case 50:
                    zzH = zzlt.zzH(zzms.zzf(t, j), zzms.zzf(t2, j));
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
                    if (zzms.zzc(t, zzy) == zzms.zzc(t2, zzy) && zzlt.zzH(zzms.zzf(t, j), zzms.zzf(t2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzH) {
                return false;
            }
        }
        if (this.zzn.zzc(t).equals(this.zzn.zzc(t2))) {
            if (this.zzh) {
                this.zzo.zza(t);
                this.zzo.zza(t2);
                throw null;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlr
    public final boolean zzj(T t) {
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
                    i4 = zzb.getInt(t, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & zzB) != 0 && !zzN(t, i6, i, i2, i10)) {
                return false;
            }
            int zzA = zzA(zzB);
            if (zzA != 9 && zzA != 17) {
                if (zzA != 27) {
                    if (zzA == 60 || zzA == 68) {
                        if (zzP(t, i7, i6) && !zzO(t, zzB, zzE(i6))) {
                            return false;
                        }
                    } else if (zzA != 49) {
                        if (zzA == 50 && !((zzla) zzms.zzf(t, zzB & 1048575)).isEmpty()) {
                            zzkz zzkzVar = (zzkz) zzF(i6);
                            throw null;
                        }
                    }
                }
                List list = (List) zzms.zzf(t, zzB & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzlr zzE = zzE(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzE.zzj(list.get(i11))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzN(t, i6, i, i2, i10) && !zzO(t, zzB, zzE(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (this.zzh) {
            this.zzo.zza(t);
            throw null;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzm(T t, zzjh zzjhVar) throws IOException {
        if (!this.zzi) {
            zzR(t, zzjhVar);
        } else if (!this.zzh) {
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzB = zzB(i);
                int i2 = this.zzc[i];
                switch (zzA(zzB)) {
                    case 0:
                        if (zzM(t, i)) {
                            zzjhVar.zzf(i2, zzms.zza(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzM(t, i)) {
                            zzjhVar.zzo(i2, zzms.zzb(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzM(t, i)) {
                            zzjhVar.zzt(i2, zzms.zzd(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzM(t, i)) {
                            zzjhVar.zzJ(i2, zzms.zzd(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzM(t, i)) {
                            zzjhVar.zzr(i2, zzms.zzc(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzM(t, i)) {
                            zzjhVar.zzm(i2, zzms.zzd(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzM(t, i)) {
                            zzjhVar.zzk(i2, zzms.zzc(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzM(t, i)) {
                            zzjhVar.zzb(i2, zzms.zzw(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzM(t, i)) {
                            zzT(i2, zzms.zzf(t, zzB & 1048575), zzjhVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzM(t, i)) {
                            zzjhVar.zzv(i2, zzms.zzf(t, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzM(t, i)) {
                            zzjhVar.zzd(i2, (zziy) zzms.zzf(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzM(t, i)) {
                            zzjhVar.zzH(i2, zzms.zzc(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzM(t, i)) {
                            zzjhVar.zzi(i2, zzms.zzc(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzM(t, i)) {
                            zzjhVar.zzw(i2, zzms.zzc(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzM(t, i)) {
                            zzjhVar.zzy(i2, zzms.zzd(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzM(t, i)) {
                            zzjhVar.zzA(i2, zzms.zzc(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzM(t, i)) {
                            zzjhVar.zzC(i2, zzms.zzd(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzM(t, i)) {
                            zzjhVar.zzq(i2, zzms.zzf(t, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzlt.zzL(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 19:
                        zzlt.zzP(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 20:
                        zzlt.zzS(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 21:
                        zzlt.zzaa(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 22:
                        zzlt.zzR(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 23:
                        zzlt.zzO(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 24:
                        zzlt.zzN(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 25:
                        zzlt.zzJ(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 26:
                        zzlt.zzY(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar);
                        break;
                    case 27:
                        zzlt.zzT(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, zzE(i));
                        break;
                    case 28:
                        zzlt.zzK(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar);
                        break;
                    case 29:
                        zzlt.zzZ(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 30:
                        zzlt.zzM(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 31:
                        zzlt.zzU(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 32:
                        zzlt.zzV(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 33:
                        zzlt.zzW(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 34:
                        zzlt.zzX(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, false);
                        break;
                    case 35:
                        zzlt.zzL(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 36:
                        zzlt.zzP(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 37:
                        zzlt.zzS(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 38:
                        zzlt.zzaa(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 39:
                        zzlt.zzR(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 40:
                        zzlt.zzO(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 41:
                        zzlt.zzN(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 42:
                        zzlt.zzJ(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 43:
                        zzlt.zzZ(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 44:
                        zzlt.zzM(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 45:
                        zzlt.zzU(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 46:
                        zzlt.zzV(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 47:
                        zzlt.zzW(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 48:
                        zzlt.zzX(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, true);
                        break;
                    case 49:
                        zzlt.zzQ(this.zzc[i], (List) zzms.zzf(t, zzB & 1048575), zzjhVar, zzE(i));
                        break;
                    case 50:
                        zzS(zzjhVar, i2, zzms.zzf(t, zzB & 1048575), i);
                        break;
                    case 51:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzf(i2, zzn(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzo(i2, zzo(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzt(i2, zzC(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzJ(i2, zzC(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzr(i2, zzr(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzm(i2, zzC(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzk(i2, zzr(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzb(i2, zzQ(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzP(t, i2, i)) {
                            zzT(i2, zzms.zzf(t, zzB & 1048575), zzjhVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzv(i2, zzms.zzf(t, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzd(i2, (zziy) zzms.zzf(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzH(i2, zzr(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzi(i2, zzr(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzw(i2, zzr(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzy(i2, zzC(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzA(i2, zzr(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzC(i2, zzC(t, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzP(t, i2, i)) {
                            zzjhVar.zzq(i2, zzms.zzf(t, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzmi<?, ?> zzmiVar = this.zzn;
            zzmiVar.zzi(zzmiVar.zzc(t), zzjhVar);
        } else {
            this.zzo.zza(t);
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final void zzg(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzB = zzB(i);
            long j = 1048575 & zzB;
            int i2 = this.zzc[i];
            switch (zzA(zzB)) {
                case 0:
                    if (zzM(t2, i)) {
                        zzms.zzo(t, j, zzms.zza(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzM(t2, i)) {
                        zzms.zzp(t, j, zzms.zzb(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzM(t2, i)) {
                        zzms.zzr(t, j, zzms.zzd(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzM(t2, i)) {
                        zzms.zzr(t, j, zzms.zzd(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzM(t2, i)) {
                        zzms.zzq(t, j, zzms.zzc(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzM(t2, i)) {
                        zzms.zzr(t, j, zzms.zzd(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzM(t2, i)) {
                        zzms.zzq(t, j, zzms.zzc(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzM(t2, i)) {
                        zzms.zzm(t, j, zzms.zzw(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzM(t2, i)) {
                        zzms.zzs(t, j, zzms.zzf(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzH(t, t2, i);
                    break;
                case 10:
                    if (zzM(t2, i)) {
                        zzms.zzs(t, j, zzms.zzf(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzM(t2, i)) {
                        zzms.zzq(t, j, zzms.zzc(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzM(t2, i)) {
                        zzms.zzq(t, j, zzms.zzc(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzM(t2, i)) {
                        zzms.zzq(t, j, zzms.zzc(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzM(t2, i)) {
                        zzms.zzr(t, j, zzms.zzd(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzM(t2, i)) {
                        zzms.zzq(t, j, zzms.zzc(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzM(t2, i)) {
                        zzms.zzr(t, j, zzms.zzd(t2, j));
                        zzJ(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzH(t, t2, i);
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
                    this.zzm.zzb(t, t2, j);
                    break;
                case 50:
                    zzlt.zzI(this.zzq, t, t2, j);
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
                    if (zzP(t2, i2, i)) {
                        zzms.zzs(t, j, zzms.zzf(t2, j));
                        zzK(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzI(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzP(t2, i2, i)) {
                        zzms.zzs(t, j, zzms.zzf(t2, j));
                        zzK(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzI(t, t2, i);
                    break;
            }
        }
        zzlt.zzF(this.zzn, t, t2);
        if (this.zzh) {
            zzlt.zzE(this.zzo, t, t2);
        }
    }
}

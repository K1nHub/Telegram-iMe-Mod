package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzlt {
    private static final Class<?> zza;
    private static final zzmi<?, ?> zzb;
    private static final zzmi<?, ?> zzc;
    private static final zzmi<?, ?> zzd;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zza = cls;
        zzb = zzab(false);
        zzc = zzab(true);
        zzd = new zzmk();
    }

    public static zzmi<?, ?> zzA() {
        return zzc;
    }

    public static zzmi<?, ?> zzB() {
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB zzC(int i, List<Integer> list, zzkd zzkdVar, UB ub, zzmi<UT, UB> zzmiVar) {
        if (zzkdVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (zzkdVar.zza(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) zzD(i, intValue, ub, zzmiVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return ub;
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!zzkdVar.zza(intValue2)) {
                    ub = (UB) zzD(i, intValue2, ub, zzmiVar);
                    it.remove();
                }
            }
        }
        return ub;
    }

    static <UT, UB> UB zzD(int i, int i2, UB ub, zzmi<UT, UB> zzmiVar) {
        if (ub == null) {
            ub = zzmiVar.zze();
        }
        zzmiVar.zzf(ub, i, i2);
        return ub;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends zzjp<FT>> void zzE(zzjm<FT> zzjmVar, T t, T t2) {
        zzjmVar.zza(t2);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void zzF(zzmi<UT, UB> zzmiVar, T t, T t2) {
        zzmiVar.zzh(t, zzmiVar.zzd(zzmiVar.zzc(t), zzmiVar.zzc(t2)));
    }

    public static void zzG(Class<?> cls) {
        Class<?> cls2;
        if (!zzjz.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzH(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void zzI(zzlb zzlbVar, T t, T t2, long j) {
        zzms.zzs(t, j, zzlb.zzb(zzms.zzf(t, j), zzms.zzf(t2, j)));
    }

    public static void zzJ(int i, List<Boolean> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzc(i, list, z);
    }

    public static void zzK(int i, List<zziy> list, zzjh zzjhVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zze(i, list);
    }

    public static void zzL(int i, List<Double> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzg(i, list, z);
    }

    public static void zzM(int i, List<Integer> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzj(i, list, z);
    }

    public static void zzN(int i, List<Integer> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzl(i, list, z);
    }

    public static void zzO(int i, List<Long> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzn(i, list, z);
    }

    public static void zzP(int i, List<Float> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzp(i, list, z);
    }

    public static void zzQ(int i, List<?> list, zzjh zzjhVar, zzlr zzlrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzjhVar.zzq(i, list.get(i2), zzlrVar);
        }
    }

    public static void zzR(int i, List<Integer> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzs(i, list, z);
    }

    public static void zzS(int i, List<Long> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzu(i, list, z);
    }

    public static void zzT(int i, List<?> list, zzjh zzjhVar, zzlr zzlrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzjhVar.zzv(i, list.get(i2), zzlrVar);
        }
    }

    public static void zzU(int i, List<Integer> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzx(i, list, z);
    }

    public static void zzV(int i, List<Long> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzz(i, list, z);
    }

    public static void zzW(int i, List<Integer> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzB(i, list, z);
    }

    public static void zzX(int i, List<Long> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzD(i, list, z);
    }

    public static void zzY(int i, List<String> list, zzjh zzjhVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzG(i, list);
    }

    public static void zzZ(int i, List<Integer> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzI(i, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjg.zzA(i << 3) + 1);
    }

    public static void zzaa(int i, List<Long> list, zzjh zzjhVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjhVar.zzK(i, list, z);
    }

    private static zzmi<?, ?> zzab(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzmi) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(List<?> list) {
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, List<zziy> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = size * zzjg.zzz(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzz += zzjg.zzt(list.get(i2));
        }
        return zzz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzjg.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzka) {
            zzka zzkaVar = (zzka) list;
            i = 0;
            while (i2 < size) {
                i += zzjg.zzv(zzkaVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjg.zzv(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjg.zzA(i << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(List<?> list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjg.zzA(i << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(List<?> list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(int i, List<zzlg> list, zzlr zzlrVar) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzjg.zzu(i, list.get(i3), zzlrVar);
            }
            return i2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzl(list) + (size * zzjg.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzl(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzka) {
            zzka zzkaVar = (zzka) list;
            i = 0;
            while (i2 < size) {
                i += zzjg.zzv(zzkaVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjg.zzv(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzm(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzn(list) + (list.size() * zzjg.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzn(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkv) {
            zzkv zzkvVar = (zzkv) list;
            i = 0;
            while (i2 < size) {
                i += zzjg.zzB(zzkvVar.zza(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjg.zzB(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(int i, Object obj, zzlr zzlrVar) {
        if (obj instanceof zzkm) {
            int zzA = zzjg.zzA(i << 3);
            int zza2 = ((zzkm) obj).zza();
            return zzA + zzjg.zzA(zza2) + zza2;
        }
        return zzjg.zzA(i << 3) + zzjg.zzx((zzlg) obj, zzlrVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzp(int i, List<?> list, zzlr zzlrVar) {
        int zzx;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = zzjg.zzz(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzkm) {
                zzx = zzjg.zzw((zzkm) obj);
            } else {
                zzx = zzjg.zzx((zzlg) obj, zzlrVar);
            }
            zzz += zzx;
        }
        return zzz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzq(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzr(list) + (size * zzjg.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzr(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzka) {
            zzka zzkaVar = (zzka) list;
            i = 0;
            while (i2 < size) {
                int zze = zzkaVar.zze(i2);
                i += zzjg.zzA((zze >> 31) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = list.get(i2).intValue();
                i += zzjg.zzA((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzs(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzt(list) + (size * zzjg.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzt(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkv) {
            zzkv zzkvVar = (zzkv) list;
            i = 0;
            while (i2 < size) {
                long zza2 = zzkvVar.zza(i2);
                i += zzjg.zzB((zza2 >> 63) ^ (zza2 + zza2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = list.get(i2).longValue();
                i += zzjg.zzB((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzu(int i, List<?> list) {
        int zzy;
        int zzy2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int zzz = zzjg.zzz(i) * size;
        if (list instanceof zzko) {
            zzko zzkoVar = (zzko) list;
            while (i2 < size) {
                Object zzf = zzkoVar.zzf(i2);
                if (zzf instanceof zziy) {
                    zzy2 = zzjg.zzt((zziy) zzf);
                } else {
                    zzy2 = zzjg.zzy((String) zzf);
                }
                zzz += zzy2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zziy) {
                    zzy = zzjg.zzt((zziy) obj);
                } else {
                    zzy = zzjg.zzy((String) obj);
                }
                zzz += zzy;
                i2++;
            }
        }
        return zzz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzv(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzw(list) + (size * zzjg.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzw(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzka) {
            zzka zzkaVar = (zzka) list;
            i = 0;
            while (i2 < size) {
                i += zzjg.zzA(zzkaVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjg.zzA(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzx(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzjg.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzy(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkv) {
            zzkv zzkvVar = (zzkv) list;
            i = 0;
            while (i2 < size) {
                i += zzjg.zzB(zzkvVar.zza(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjg.zzB(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    public static zzmi<?, ?> zzz() {
        return zzb;
    }
}

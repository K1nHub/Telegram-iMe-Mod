package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzww {
    private static final Class<?> zzbwc = zztc();
    private static final zzxm<?, ?> zzbwd = zzao(false);
    private static final zzxm<?, ?> zzbwe = zzao(true);
    private static final zzxm<?, ?> zzbwf = new zzxo();

    public static void zzl(Class<?> cls) {
        Class<?> cls2;
        if (!zzuu.class.isAssignableFrom(cls) && (cls2 = zzbwc) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zza(int i, List<Double> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzg(i, list, z);
    }

    public static void zzb(int i, List<Float> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzf(i, list, z);
    }

    public static void zzc(int i, List<Long> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzc(i, list, z);
    }

    public static void zzd(int i, List<Long> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzd(i, list, z);
    }

    public static void zze(int i, List<Long> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzn(i, list, z);
    }

    public static void zzf(int i, List<Long> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zze(i, list, z);
    }

    public static void zzg(int i, List<Long> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzl(i, list, z);
    }

    public static void zzh(int i, List<Integer> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zza(i, list, z);
    }

    public static void zzi(int i, List<Integer> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzj(i, list, z);
    }

    public static void zzj(int i, List<Integer> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzyj zzyjVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzi(i, list, z);
    }

    public static void zza(int i, List<String> list, zzyj zzyjVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zza(i, list);
    }

    public static void zzb(int i, List<zztn> list, zzyj zzyjVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzb(i, list);
    }

    public static void zza(int i, List<?> list, zzyj zzyjVar, zzwu zzwuVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zza(i, list, zzwuVar);
    }

    public static void zzb(int i, List<?> list, zzyj zzyjVar, zzwu zzwuVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzyjVar.zzb(i, list, zzwuVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzl(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvs) {
            zzvs zzvsVar = (zzvs) list;
            i = 0;
            while (i2 < size) {
                i += zzue.zzv(zzvsVar.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzue.zzv(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzl(list) + (list.size() * zzue.zzcv(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzm(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvs) {
            zzvs zzvsVar = (zzvs) list;
            i = 0;
            while (i2 < size) {
                i += zzue.zzw(zzvsVar.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzue.zzw(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzm(list) + (size * zzue.zzcv(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzn(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvs) {
            zzvs zzvsVar = (zzvs) list;
            i = 0;
            while (i2 < size) {
                i += zzue.zzx(zzvsVar.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzue.zzx(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzn(list) + (size * zzue.zzcv(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzux) {
            zzux zzuxVar = (zzux) list;
            i = 0;
            while (i2 < size) {
                i += zzue.zzdb(zzuxVar.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzue.zzdb(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzo(list) + (size * zzue.zzcv(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzp(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzux) {
            zzux zzuxVar = (zzux) list;
            i = 0;
            while (i2 < size) {
                i += zzue.zzcw(zzuxVar.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzue.zzcw(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzp(list) + (size * zzue.zzcv(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzq(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzux) {
            zzux zzuxVar = (zzux) list;
            i = 0;
            while (i2 < size) {
                i += zzue.zzcx(zzuxVar.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzue.zzcx(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzq(list) + (size * zzue.zzcv(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzr(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzux) {
            zzux zzuxVar = (zzux) list;
            i = 0;
            while (i2 < size) {
                i += zzue.zzcy(zzuxVar.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzue.zzcy(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzr(list) + (size * zzue.zzcv(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzs(List<?> list) {
        return list.size() << 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzue.zzp(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzt(List<?> list) {
        return list.size() << 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzue.zzg(i, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzu(List<?> list) {
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzue.zzc(i, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, List<?> list) {
        int zzch;
        int zzch2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int zzcv = zzue.zzcv(i) * size;
        if (list instanceof zzvp) {
            zzvp zzvpVar = (zzvp) list;
            while (i2 < size) {
                Object raw = zzvpVar.getRaw(i2);
                if (raw instanceof zztn) {
                    zzch2 = zzue.zzb((zztn) raw);
                } else {
                    zzch2 = zzue.zzch((String) raw);
                }
                zzcv += zzch2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zztn) {
                    zzch = zzue.zzb((zztn) obj);
                } else {
                    zzch = zzue.zzch((String) obj);
                }
                zzcv += zzch;
                i2++;
            }
        }
        return zzcv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, Object obj, zzwu zzwuVar) {
        if (obj instanceof zzvn) {
            return zzue.zza(i, (zzvn) obj);
        }
        return zzue.zzb(i, (zzwe) obj, zzwuVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, List<?> list, zzwu zzwuVar) {
        int zza;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzcv = zzue.zzcv(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzvn) {
                zza = zzue.zza((zzvn) obj);
            } else {
                zza = zzue.zza((zzwe) obj, zzwuVar);
            }
            zzcv += zza;
        }
        return zzcv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i, List<zztn> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzcv = size * zzue.zzcv(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzcv += zzue.zzb(list.get(i2));
        }
        return zzcv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i, List<zzwe> list, zzwu zzwuVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzue.zzc(i, list.get(i3), zzwuVar);
        }
        return i2;
    }

    public static zzxm<?, ?> zzsz() {
        return zzbwd;
    }

    public static zzxm<?, ?> zzta() {
        return zzbwe;
    }

    public static zzxm<?, ?> zztb() {
        return zzbwf;
    }

    private static zzxm<?, ?> zzao(boolean z) {
        try {
            Class<?> zztd = zztd();
            if (zztd == null) {
                return null;
            }
            return (zzxm) zztd.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zztc() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zztd() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzf(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void zza(zzwb zzwbVar, T t, T t2, long j) {
        zzxs.zza(t, j, zzwbVar.zzd(zzxs.zzp(t, j), zzxs.zzp(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends zzuo<FT>> void zza(zzul<FT> zzulVar, T t, T t2) {
        zzum<FT> zzo = zzulVar.zzo(t2);
        if (zzo.zzbpq.isEmpty()) {
            return;
        }
        zzulVar.zzp(t).zza(zzo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void zza(zzxm<UT, UB> zzxmVar, T t, T t2) {
        zzxmVar.zzg(t, zzxmVar.zzi(zzxmVar.zzae(t), zzxmVar.zzae(t2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB zza(int i, List<Integer> list, zzvb zzvbVar, UB ub, zzxm<UT, UB> zzxmVar) {
        if (zzvbVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (zzvbVar.zzb(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) zza(i, intValue, ub, zzxmVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!zzvbVar.zzb(intValue2)) {
                    ub = (UB) zza(i, intValue2, ub, zzxmVar);
                    it.remove();
                }
            }
        }
        return ub;
    }

    private static <UT, UB> UB zza(int i, int i2, UB ub, zzxm<UT, UB> zzxmVar) {
        if (ub == null) {
            ub = zzxmVar.zztm();
        }
        zzxmVar.zza((zzxm<UT, UB>) ub, i, i2);
        return ub;
    }
}

package com.google.android.gms.internal.wearable;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzdp {
    private static final Class zza;
    private static final zzee zzb;
    private static final zzee zzc;
    private static final zzee zzd;

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
        zzd = new zzeg();
    }

    public static zzee zzA() {
        return zzc;
    }

    public static zzee zzB() {
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzC(int i, List list, zzbz zzbzVar, Object obj, zzee zzeeVar) {
        if (zzbzVar == null) {
            return obj;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = ((Integer) list.get(i3)).intValue();
                if (zzbzVar.zza(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    obj = zzD(i, intValue, obj, zzeeVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!zzbzVar.zza(intValue2)) {
                    obj = zzD(i, intValue2, obj, zzeeVar);
                    it.remove();
                }
            }
        }
        return obj;
    }

    static Object zzD(int i, int i2, Object obj, zzee zzeeVar) {
        if (obj == null) {
            obj = zzeeVar.zze();
        }
        zzeeVar.zzf(obj, i, i2);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzE(zzbk zzbkVar, Object obj, Object obj2) {
        zzbkVar.zza(obj2);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzF(zzee zzeeVar, Object obj, Object obj2) {
        zzeeVar.zzh(obj, zzeeVar.zzd(zzeeVar.zzc(obj), zzeeVar.zzc(obj2)));
    }

    public static void zzG(Class cls) {
        Class cls2;
        if (!zzbv.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzH(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzc(i, list, z);
    }

    public static void zzI(int i, List list, zzew zzewVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zze(i, list);
    }

    public static void zzJ(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzg(i, list, z);
    }

    public static void zzK(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzj(i, list, z);
    }

    public static void zzL(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzl(i, list, z);
    }

    public static void zzM(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzn(i, list, z);
    }

    public static void zzN(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzp(i, list, z);
    }

    public static void zzO(int i, List list, zzew zzewVar, zzdn zzdnVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((zzbf) zzewVar).zzq(i, list.get(i2), zzdnVar);
        }
    }

    public static void zzP(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzs(i, list, z);
    }

    public static void zzQ(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzu(i, list, z);
    }

    public static void zzR(int i, List list, zzew zzewVar, zzdn zzdnVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((zzbf) zzewVar).zzv(i, list.get(i2), zzdnVar);
        }
    }

    public static void zzS(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzx(i, list, z);
    }

    public static void zzT(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzz(i, list, z);
    }

    public static void zzU(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzB(i, list, z);
    }

    public static void zzV(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzD(i, list, z);
    }

    public static void zzW(int i, List list, zzew zzewVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzG(i, list);
    }

    public static void zzX(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzI(i, list, z);
    }

    public static void zzY(int i, List list, zzew zzewVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzewVar.zzK(i, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzZ(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzbe.zzA(i << 3) + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzaa(zzcx zzcxVar, Object obj, Object obj2, long j) {
        zzeo.zzs(obj, j, zzcx.zzb(zzeo.zzf(obj, j), zzeo.zzf(obj2, j)));
    }

    private static zzee zzab(boolean z) {
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
            return (zzee) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(List list) {
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = size * zzbe.zzz(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzz += zzbe.zzt((zzaw) list.get(i2));
        }
        return zzz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzbe.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbw) {
            zzbw zzbwVar = (zzbw) list;
            i = 0;
            while (i2 < size) {
                i += zzbe.zzv(zzbwVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbe.zzv(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzbe.zzA(i << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(List list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzbe.zzA(i << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(List list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(int i, List list, zzdn zzdnVar) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzbe.zzu(i, (zzdc) list.get(i3), zzdnVar);
            }
            return i2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzl(list) + (size * zzbe.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzl(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbw) {
            zzbw zzbwVar = (zzbw) list;
            i = 0;
            while (i2 < size) {
                i += zzbe.zzv(zzbwVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbe.zzv(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzm(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzn(list) + (list.size() * zzbe.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzn(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzcr) {
            zzcr zzcrVar = (zzcr) list;
            i = 0;
            while (i2 < size) {
                i += zzbe.zzB(zzcrVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbe.zzB(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(int i, Object obj, zzdn zzdnVar) {
        if (obj instanceof zzci) {
            int zzA = zzbe.zzA(i << 3);
            int zza2 = ((zzci) obj).zza();
            return zzA + zzbe.zzA(zza2) + zza2;
        }
        return zzbe.zzA(i << 3) + zzbe.zzx((zzdc) obj, zzdnVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzp(int i, List list, zzdn zzdnVar) {
        int zzx;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = zzbe.zzz(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzci) {
                zzx = zzbe.zzw((zzci) obj);
            } else {
                zzx = zzbe.zzx((zzdc) obj, zzdnVar);
            }
            zzz += zzx;
        }
        return zzz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzq(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzr(list) + (size * zzbe.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzr(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbw) {
            zzbw zzbwVar = (zzbw) list;
            i = 0;
            while (i2 < size) {
                int zze = zzbwVar.zze(i2);
                i += zzbe.zzA((zze >> 31) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = ((Integer) list.get(i2)).intValue();
                i += zzbe.zzA((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzs(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzt(list) + (size * zzbe.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzt(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzcr) {
            zzcr zzcrVar = (zzcr) list;
            i = 0;
            while (i2 < size) {
                long zze = zzcrVar.zze(i2);
                i += zzbe.zzB((zze >> 63) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = ((Long) list.get(i2)).longValue();
                i += zzbe.zzB((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzu(int i, List list) {
        int zzy;
        int zzy2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int zzz = zzbe.zzz(i) * size;
        if (list instanceof zzck) {
            zzck zzckVar = (zzck) list;
            while (i2 < size) {
                Object zzf = zzckVar.zzf(i2);
                if (zzf instanceof zzaw) {
                    zzy2 = zzbe.zzt((zzaw) zzf);
                } else {
                    zzy2 = zzbe.zzy((String) zzf);
                }
                zzz += zzy2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zzaw) {
                    zzy = zzbe.zzt((zzaw) obj);
                } else {
                    zzy = zzbe.zzy((String) obj);
                }
                zzz += zzy;
                i2++;
            }
        }
        return zzz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzv(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzw(list) + (size * zzbe.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzw(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbw) {
            zzbw zzbwVar = (zzbw) list;
            i = 0;
            while (i2 < size) {
                i += zzbe.zzA(zzbwVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbe.zzA(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzx(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzbe.zzz(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzy(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzcr) {
            zzcr zzcrVar = (zzcr) list;
            i = 0;
            while (i2 < size) {
                i += zzbe.zzB(zzcrVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbe.zzB(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static zzee zzz() {
        return zzb;
    }
}

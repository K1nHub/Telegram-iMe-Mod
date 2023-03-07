package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzuu;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class zzug implements zzyj {
    private final zzue zzboy;

    public static zzug zza(zzue zzueVar) {
        zzug zzugVar = zzueVar.zzbph;
        return zzugVar != null ? zzugVar : new zzug(zzueVar);
    }

    private zzug(zzue zzueVar) {
        zzue zzueVar2 = (zzue) zzuw.zza(zzueVar, "output");
        this.zzboy = zzueVar2;
        zzueVar2.zzbph = this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final int zzqo() {
        return zzuu.zze.zzbth;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzs(int i, int i2) throws IOException {
        this.zzboy.zzl(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzi(int i, long j) throws IOException {
        this.zzboy.zza(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzj(int i, long j) throws IOException {
        this.zzboy.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zza(int i, float f) throws IOException {
        this.zzboy.zza(i, f);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zza(int i, double d) throws IOException {
        this.zzboy.zza(i, d);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzt(int i, int i2) throws IOException {
        this.zzboy.zzi(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zza(int i, long j) throws IOException {
        this.zzboy.zza(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzi(int i, int i2) throws IOException {
        this.zzboy.zzi(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzc(int i, long j) throws IOException {
        this.zzboy.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzl(int i, int i2) throws IOException {
        this.zzboy.zzl(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzb(int i, boolean z) throws IOException {
        this.zzboy.zzb(i, z);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzb(int i, String str) throws IOException {
        this.zzboy.zzb(i, str);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zza(int i, zztn zztnVar) throws IOException {
        this.zzboy.zza(i, zztnVar);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzj(int i, int i2) throws IOException {
        this.zzboy.zzj(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzk(int i, int i2) throws IOException {
        this.zzboy.zzk(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzb(int i, long j) throws IOException {
        this.zzboy.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zza(int i, Object obj, zzwu zzwuVar) throws IOException {
        this.zzboy.zza(i, (zzwe) obj, zzwuVar);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzb(int i, Object obj, zzwu zzwuVar) throws IOException {
        zzue zzueVar = this.zzboy;
        zzueVar.zzh(i, 3);
        zzwuVar.zza((zzwe) obj, zzueVar.zzbph);
        zzueVar.zzh(i, 4);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzdf(int i) throws IOException {
        this.zzboy.zzh(i, 3);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzdg(int i) throws IOException {
        this.zzboy.zzh(i, 4);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zza(int i, Object obj) throws IOException {
        if (obj instanceof zztn) {
            this.zzboy.zzb(i, (zztn) obj);
        } else {
            this.zzboy.zza(i, (zzwe) obj);
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zza(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzcw(list.get(i4).intValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzcr(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzi(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzb(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzcz(list.get(i4).intValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzcu(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzl(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzc(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzv(list.get(i4).longValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzs(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zza(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzd(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzw(list.get(i4).longValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzs(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zza(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zze(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzy(list.get(i4).longValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzu(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzc(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzf(int i, List<Float> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzt(list.get(i4).floatValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzs(list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zza(i, list.get(i2).floatValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzg(int i, List<Double> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzd(list.get(i4).doubleValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzc(list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zza(i, list.get(i2).doubleValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzh(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzdb(list.get(i4).intValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzcr(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzi(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzi(int i, List<Boolean> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzam(list.get(i4).booleanValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzal(list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzb(i, list.get(i2).booleanValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zza(int i, List<String> list) throws IOException {
        int i2 = 0;
        if (list instanceof zzvp) {
            zzvp zzvpVar = (zzvp) list;
            while (i2 < list.size()) {
                Object raw = zzvpVar.getRaw(i2);
                if (raw instanceof String) {
                    this.zzboy.zzb(i, (String) raw);
                } else {
                    this.zzboy.zza(i, (zztn) raw);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzb(i, list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzb(int i, List<zztn> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzboy.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzj(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzcx(list.get(i4).intValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzcs(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzj(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzk(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzda(list.get(i4).intValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzcu(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzl(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzl(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzz(list.get(i4).longValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzu(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzc(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzm(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzcy(list.get(i4).intValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzct(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzk(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzn(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzboy.zzh(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzue.zzx(list.get(i4).longValue());
            }
            this.zzboy.zzcs(i3);
            while (i2 < list.size()) {
                this.zzboy.zzt(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzboy.zzb(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zza(int i, List<?> list, zzwu zzwuVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzwuVar);
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final void zzb(int i, List<?> list, zzwu zzwuVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzwuVar);
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzyj
    public final <K, V> void zza(int i, zzvz<K, V> zzvzVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzboy.zzh(i, 2);
            this.zzboy.zzcs(zzvw.zza(zzvzVar, entry.getKey(), entry.getValue()));
            zzvw.zza(this.zzboy, zzvzVar, entry.getKey(), entry.getValue());
        }
    }
}

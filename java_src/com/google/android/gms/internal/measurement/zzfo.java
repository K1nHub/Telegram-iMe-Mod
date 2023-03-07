package com.google.android.gms.internal.measurement;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfo extends zzjz<zzfo, zzfn> implements zzlh {
    private static final zzfo zza;
    private int zze;
    private zzkg<zzfs> zzf = zzjz.zzbA();
    private String zzg = "";
    private long zzh;
    private long zzi;
    private int zzj;

    static {
        zzfo zzfoVar = new zzfo();
        zza = zzfoVar;
        zzjz.zzbG(zzfo.class, zzfoVar);
    }

    private zzfo() {
    }

    public static zzfn zze() {
        return zza.zzbu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzfo zzfoVar, int i, zzfs zzfsVar) {
        zzfsVar.getClass();
        zzfoVar.zzv();
        zzfoVar.zzf.set(i, zzfsVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzk(zzfo zzfoVar, zzfs zzfsVar) {
        zzfsVar.getClass();
        zzfoVar.zzv();
        zzfoVar.zzf.add(zzfsVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzm(zzfo zzfoVar, Iterable iterable) {
        zzfoVar.zzv();
        zzih.zzbq(iterable, zzfoVar.zzf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzo(zzfo zzfoVar, int i) {
        zzfoVar.zzv();
        zzfoVar.zzf.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzp(zzfo zzfoVar, String str) {
        str.getClass();
        zzfoVar.zze |= 1;
        zzfoVar.zzg = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzq(zzfo zzfoVar, long j) {
        zzfoVar.zze |= 2;
        zzfoVar.zzh = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzr(zzfo zzfoVar, long j) {
        zzfoVar.zze |= 4;
        zzfoVar.zzi = j;
    }

    private final void zzv() {
        zzkg<zzfs> zzkgVar = this.zzf;
        if (zzkgVar.zzc()) {
            return;
        }
        this.zzf = zzjz.zzbB(zzkgVar);
    }

    public final int zza() {
        return this.zzj;
    }

    public final int zzb() {
        return this.zzf.size();
    }

    public final long zzc() {
        return this.zzi;
    }

    public final long zzd() {
        return this.zzh;
    }

    public final zzfs zzg(int i) {
        return this.zzf.get(i);
    }

    public final String zzh() {
        return this.zzg;
    }

    public final List<zzfs> zzi() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzjz
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zza;
                    }
                    return new zzfn(null);
                }
                return new zzfo();
            }
            return zzjz.zzbF(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zze", "zzf", zzfs.class, "zzg", "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }

    public final boolean zzs() {
        return (this.zze & 8) != 0;
    }

    public final boolean zzt() {
        return (this.zze & 4) != 0;
    }

    public final boolean zzu() {
        return (this.zze & 2) != 0;
    }
}

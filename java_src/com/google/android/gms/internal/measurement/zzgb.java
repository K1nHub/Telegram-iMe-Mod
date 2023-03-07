package com.google.android.gms.internal.measurement;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzgb extends zzjz<zzgb, zzfz> implements zzlh {
    private static final zzgb zza;
    private int zze;
    private int zzf = 1;
    private zzkg<zzfq> zzg = zzjz.zzbA();

    static {
        zzgb zzgbVar = new zzgb();
        zza = zzgbVar;
        zzjz.zzbG(zzgb.class, zzgbVar);
    }

    private zzgb() {
    }

    public static zzfz zza() {
        return zza.zzbu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzc(zzgb zzgbVar, zzfq zzfqVar) {
        zzfqVar.getClass();
        zzkg<zzfq> zzkgVar = zzgbVar.zzg;
        if (!zzkgVar.zzc()) {
            zzgbVar.zzg = zzjz.zzbB(zzkgVar);
        }
        zzgbVar.zzg.add(zzfqVar);
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
                    return new zzfz(null);
                }
                return new zzgb();
            }
            return zzjz.zzbF(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b", new Object[]{"zze", "zzf", zzga.zza, "zzg", zzfq.class});
        }
        return (byte) 1;
    }
}

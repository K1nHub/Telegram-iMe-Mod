package com.google.android.gms.internal.icing;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
public final class zzaq extends zzda<zzaq, zzan> implements zzef {
    private static final zzaq zze;
    private zzdg<zzap> zzb = zzda.zzw();

    static {
        zzaq zzaqVar = new zzaq();
        zze = zzaqVar;
        zzda.zzq(zzaq.class, zzaqVar);
    }

    private zzaq() {
    }

    public static zzan zza() {
        return zze.zzl();
    }

    public static /* synthetic */ void zzc(zzaq zzaqVar, Iterable iterable) {
        zzdg<zzap> zzdgVar = zzaqVar.zzb;
        if (!zzdgVar.zza()) {
            zzaqVar.zzb = zzda.zzx(zzdgVar);
        }
        zzbs.zzk(iterable, zzaqVar.zzb);
    }

    @Override // com.google.android.gms.internal.icing.zzda
    public final Object zzf(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zze;
                    }
                    return new zzan(null);
                }
                return new zzaq();
            }
            return zzda.zzr(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", zzap.class});
        }
        return (byte) 1;
    }
}

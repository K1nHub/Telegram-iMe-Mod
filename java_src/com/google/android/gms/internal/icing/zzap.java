package com.google.android.gms.internal.icing;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
public final class zzap extends zzda<zzap, zzao> implements zzef {
    private static final zzap zzh;
    private int zzb;
    private String zze = "";
    private String zzf = "";
    private int zzg;

    static {
        zzap zzapVar = new zzap();
        zzh = zzapVar;
        zzda.zzq(zzap.class, zzapVar);
    }

    private zzap() {
    }

    public static zzao zza() {
        return zzh.zzl();
    }

    public static /* synthetic */ zzap zzb() {
        return zzh;
    }

    public static /* synthetic */ void zzc(zzap zzapVar, String str) {
        str.getClass();
        zzapVar.zzb |= 1;
        zzapVar.zze = str;
    }

    public static /* synthetic */ void zzd(zzap zzapVar, String str) {
        str.getClass();
        zzapVar.zzb |= 2;
        zzapVar.zzf = str;
    }

    public static /* synthetic */ void zze(zzap zzapVar, int i) {
        zzapVar.zzb |= 4;
        zzapVar.zzg = i;
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
                        return zzh;
                    }
                    return new zzao(null);
                }
                return new zzap();
            }
            return zzda.zzr(zzh, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003င\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}

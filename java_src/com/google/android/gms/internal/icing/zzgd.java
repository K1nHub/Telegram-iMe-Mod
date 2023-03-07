package com.google.android.gms.internal.icing;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
public final class zzgd extends zzda<zzgd, zzgc> implements zzef {
    private static final zzgd zzg;
    private int zzb;
    private String zze = "";
    private zzgh zzf;

    static {
        zzgd zzgdVar = new zzgd();
        zzg = zzgdVar;
        zzda.zzq(zzgd.class, zzgdVar);
    }

    private zzgd() {
    }

    public static zzgc zza() {
        return zzg.zzl();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzc(zzgd zzgdVar, String str) {
        str.getClass();
        zzgdVar.zzb |= 1;
        zzgdVar.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(zzgd zzgdVar, zzgh zzghVar) {
        zzghVar.getClass();
        zzgdVar.zzf = zzghVar;
        zzgdVar.zzb |= 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
                        return zzg;
                    }
                    return new zzgc(null);
                }
                return new zzgd();
            }
            return zzda.zzr(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001", new Object[]{"zzb", "zze", "zzf"});
        }
        return (byte) 1;
    }
}

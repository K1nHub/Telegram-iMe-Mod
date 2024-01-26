package com.google.android.gms.internal.measurement;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfq extends zzjz<zzfq, zzfp> implements zzlh {
    private static final zzfq zza;
    private int zze;
    private String zzf = "";
    private long zzg;

    static {
        zzfq zzfqVar = new zzfq();
        zza = zzfqVar;
        zzjz.zzbG(zzfq.class, zzfqVar);
    }

    private zzfq() {
    }

    public static zzfp zza() {
        return zza.zzbu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzc(zzfq zzfqVar, String str) {
        str.getClass();
        zzfqVar.zze |= 1;
        zzfqVar.zzf = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(zzfq zzfqVar, long j) {
        zzfqVar.zze |= 2;
        zzfqVar.zzg = j;
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
                    return new zzfp(null);
                }
                return new zzfq();
            }
            return zzjz.zzbF(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}

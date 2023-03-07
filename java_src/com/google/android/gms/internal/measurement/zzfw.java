package com.google.android.gms.internal.measurement;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzfw extends zzjz<zzfw, zzfv> implements zzlh {
    private static final zzfw zza;
    private zzkg<zzfy> zze = zzjz.zzbA();

    static {
        zzfw zzfwVar = new zzfw();
        zza = zzfwVar;
        zzjz.zzbG(zzfw.class, zzfwVar);
    }

    private zzfw() {
    }

    public static zzfv zza() {
        return zza.zzbu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zze(zzfw zzfwVar, zzfy zzfyVar) {
        zzfyVar.getClass();
        zzkg<zzfy> zzkgVar = zzfwVar.zze;
        if (!zzkgVar.zzc()) {
            zzfwVar.zze = zzjz.zzbB(zzkgVar);
        }
        zzfwVar.zze.add(zzfyVar);
    }

    public final zzfy zzc(int i) {
        return this.zze.get(0);
    }

    public final List<zzfy> zzd() {
        return this.zze;
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
                    return new zzfv(null);
                }
                return new zzfw();
            }
            return zzjz.zzbF(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", zzfy.class});
        }
        return (byte) 1;
    }
}

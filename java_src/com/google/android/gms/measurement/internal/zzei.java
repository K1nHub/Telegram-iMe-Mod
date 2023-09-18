package com.google.android.gms.measurement.internal;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzei implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Object zzc;
    final /* synthetic */ Object zzd;
    final /* synthetic */ Object zze;
    final /* synthetic */ zzel zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzei(zzel zzelVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zzf = zzelVar;
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        zzfa zzm = this.zzf.zzs.zzm();
        if (zzm.zzx()) {
            c = this.zzf.zza;
            if (c == 0) {
                if (this.zzf.zzs.zzf().zzy()) {
                    zzel zzelVar = this.zzf;
                    zzelVar.zzs.zzaw();
                    zzelVar.zza = 'C';
                } else {
                    zzel zzelVar2 = this.zzf;
                    zzelVar2.zzs.zzaw();
                    zzelVar2.zza = 'c';
                }
            }
            j = this.zzf.zzb;
            if (j < 0) {
                zzel zzelVar3 = this.zzf;
                zzelVar3.zzs.zzf().zzh();
                zzelVar3.zzb = 43042L;
            }
            char charAt = "01VDIWEA?".charAt(this.zza);
            c2 = this.zzf.zza;
            j2 = this.zzf.zzb;
            String zzo = zzel.zzo(true, this.zzb, this.zzc, this.zzd, this.zze);
            StringBuilder sb = new StringBuilder(String.valueOf(zzo).length() + 24);
            sb.append("2");
            sb.append(charAt);
            sb.append(c2);
            sb.append(j2);
            sb.append(":");
            sb.append(zzo);
            String sb2 = sb.toString();
            if (sb2.length() > 1024) {
                sb2 = this.zzb.substring(0, 1024);
            }
            zzey zzeyVar = zzm.zzb;
            if (zzeyVar != null) {
                zzeyVar.zzb(sb2, 1L);
                return;
            }
            return;
        }
        Log.println(6, this.zzf.zzq(), "Persisted config not initialized. Not logging error/warn");
    }
}

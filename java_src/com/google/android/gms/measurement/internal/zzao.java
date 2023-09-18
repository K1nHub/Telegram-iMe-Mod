package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzao {
    final String zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final long zze;
    final zzar zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzao(zzfv zzfvVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzar zzarVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzfvVar.zzay().zzk().zzb("Event created with reverse previous/current timestamps. appId", zzel.zzn(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzarVar = new zzar(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzfvVar.zzay().zzd().zza("Param name can't be null");
                    it.remove();
                } else {
                    Object zzA = zzfvVar.zzv().zzA(next, bundle2.get(next));
                    if (zzA == null) {
                        zzfvVar.zzay().zzk().zzb("Param value can't be null", zzfvVar.zzj().zze(next));
                        it.remove();
                    } else {
                        zzfvVar.zzv().zzN(bundle2, next, zzA);
                    }
                }
            }
            zzarVar = new zzar(bundle2);
        }
        this.zzf = zzarVar;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        String valueOf = String.valueOf(this.zzf);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 33 + String.valueOf(str2).length() + valueOf.length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzao zza(zzfv zzfvVar, long j) {
        return new zzao(zzfvVar, this.zzc, this.zza, this.zzb, this.zzd, j, this.zzf);
    }

    private zzao(zzfv zzfvVar, String str, String str2, String str3, long j, long j2, zzar zzarVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzarVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = true == TextUtils.isEmpty(str) ? null : str;
        this.zzd = j;
        this.zze = j2;
        if (j2 != 0 && j2 > j) {
            zzfvVar.zzay().zzk().zzc("Event created with reverse previous/current timestamps. appId, name", zzel.zzn(str2), zzel.zzn(str3));
        }
        this.zzf = zzarVar;
    }
}

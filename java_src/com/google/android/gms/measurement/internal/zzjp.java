package com.google.android.gms.measurement.internal;

import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzjp extends zzki {
    public final zzew zza;
    public final zzew zzb;
    public final zzew zzc;
    public final zzew zzd;
    public final zzew zze;
    private String zzg;
    private boolean zzh;
    private long zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjp(zzks zzksVar) {
        super(zzksVar);
        zzfa zzm = this.zzs.zzm();
        zzm.getClass();
        this.zza = new zzew(zzm, "last_delete_stale", 0L);
        zzfa zzm2 = this.zzs.zzm();
        zzm2.getClass();
        this.zzb = new zzew(zzm2, "backoff", 0L);
        zzfa zzm3 = this.zzs.zzm();
        zzm3.getClass();
        this.zzc = new zzew(zzm3, "last_upload", 0L);
        zzfa zzm4 = this.zzs.zzm();
        zzm4.getClass();
        this.zzd = new zzew(zzm4, "last_upload_attempt", 0L);
        zzfa zzm5 = this.zzs.zzm();
        zzm5.getClass();
        this.zze = new zzew(zzm5, "midnight_offset", 0L);
    }

    @Deprecated
    final Pair<String, Boolean> zza(String str) {
        zzg();
        long elapsedRealtime = this.zzs.zzav().elapsedRealtime();
        String str2 = this.zzg;
        if (str2 == null || elapsedRealtime >= this.zzi) {
            this.zzi = elapsedRealtime + this.zzs.zzf().zzi(str, zzdy.zza);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zzs.zzau());
                this.zzg = "";
                String id = advertisingIdInfo.getId();
                if (id != null) {
                    this.zzg = id;
                }
                this.zzh = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e) {
                this.zzs.zzay().zzc().zzb("Unable to get advertising id", e);
                this.zzg = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(this.zzg, Boolean.valueOf(this.zzh));
        }
        return new Pair<>(str2, Boolean.valueOf(this.zzh));
    }

    @Override // com.google.android.gms.measurement.internal.zzki
    protected final boolean zzb() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Pair<String, Boolean> zzd(String str, zzag zzagVar) {
        if (zzagVar.zzj()) {
            return zza(str);
        }
        return new Pair<>("", Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public final String zzf(String str) {
        zzg();
        String str2 = (String) zza(str).first;
        MessageDigest zzE = zzkz.zzE("MD5");
        if (zzE == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, zzE.digest(str2.getBytes())));
    }
}

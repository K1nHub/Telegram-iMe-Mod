package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzpi;
import com.google.android.gms.internal.measurement.zzpo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzfm extends zzki implements zzae {
    @VisibleForTesting
    final LruCache<String, com.google.android.gms.internal.measurement.zzc> zza;
    final com.google.android.gms.internal.measurement.zzr zzb;
    private final Map<String, Map<String, String>> zzc;
    private final Map<String, Map<String, Boolean>> zzd;
    private final Map<String, Map<String, Boolean>> zze;
    private final Map<String, com.google.android.gms.internal.measurement.zzfc> zzg;
    private final Map<String, Map<String, Integer>> zzh;
    private final Map<String, String> zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfm(zzks zzksVar) {
        super(zzksVar);
        this.zzc = new ArrayMap();
        this.zzd = new ArrayMap();
        this.zze = new ArrayMap();
        this.zzg = new ArrayMap();
        this.zzi = new ArrayMap();
        this.zzh = new ArrayMap();
        this.zza = new zzfj(this, 20);
        this.zzb = new zzfk(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ com.google.android.gms.internal.measurement.zzc zzd(zzfm zzfmVar, String str) {
        zzfmVar.zzY();
        Preconditions.checkNotEmpty(str);
        zzpo.zzc();
        if (zzfmVar.zzs.zzf().zzs(null, zzdy.zzav) && zzfmVar.zzl(str)) {
            if (!zzfmVar.zzg.containsKey(str) || zzfmVar.zzg.get(str) == null) {
                zzfmVar.zzt(str);
            } else {
                zzfmVar.zzu(str, zzfmVar.zzg.get(str));
            }
            return zzfmVar.zza.snapshot().get(str);
        }
        return null;
    }

    private final com.google.android.gms.internal.measurement.zzfc zzr(String str, byte[] bArr) {
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.zzfc.zzg();
        }
        try {
            com.google.android.gms.internal.measurement.zzfc zzaA = ((com.google.android.gms.internal.measurement.zzfb) zzku.zzl(com.google.android.gms.internal.measurement.zzfc.zze(), bArr)).zzaA();
            this.zzs.zzay().zzj().zzc("Parsed config. version, gmp_app_id", zzaA.zzq() ? Long.valueOf(zzaA.zzc()) : null, zzaA.zzp() ? zzaA.zzh() : null);
            return zzaA;
        } catch (com.google.android.gms.internal.measurement.zzkj e) {
            this.zzs.zzay().zzk().zzc("Unable to merge remote config. appId", zzel.zzn(str), e);
            return com.google.android.gms.internal.measurement.zzfc.zzg();
        } catch (RuntimeException e2) {
            this.zzs.zzay().zzk().zzc("Unable to merge remote config. appId", zzel.zzn(str), e2);
            return com.google.android.gms.internal.measurement.zzfc.zzg();
        }
    }

    private final void zzs(String str, com.google.android.gms.internal.measurement.zzfb zzfbVar) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (zzfbVar != null) {
            for (int i = 0; i < zzfbVar.zza(); i++) {
                com.google.android.gms.internal.measurement.zzez zzbv = zzfbVar.zzb(i).zzbv();
                if (TextUtils.isEmpty(zzbv.zzc())) {
                    this.zzs.zzay().zzk().zza("EventConfig contained null event name");
                } else {
                    String zzc = zzbv.zzc();
                    String zzb = zzgs.zzb(zzbv.zzc());
                    if (!TextUtils.isEmpty(zzb)) {
                        zzbv.zzb(zzb);
                        zzfbVar.zzd(i, zzbv);
                    }
                    arrayMap.put(zzc, Boolean.valueOf(zzbv.zzd()));
                    arrayMap2.put(zzbv.zzc(), Boolean.valueOf(zzbv.zze()));
                    if (zzbv.zzf()) {
                        if (zzbv.zza() < 2 || zzbv.zza() > 65535) {
                            this.zzs.zzay().zzk().zzc("Invalid sampling rate. Event name, sample rate", zzbv.zzc(), Integer.valueOf(zzbv.zza()));
                        } else {
                            arrayMap3.put(zzbv.zzc(), Integer.valueOf(zzbv.zza()));
                        }
                    }
                }
            }
        }
        this.zzd.put(str, arrayMap);
        this.zze.put(str, arrayMap2);
        this.zzh.put(str, arrayMap3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008d, code lost:
        if (r2 == null) goto L11;
     */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x011b: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:39:0x011b */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzt(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfm.zzt(java.lang.String):void");
    }

    private final void zzu(final String str, com.google.android.gms.internal.measurement.zzfc zzfcVar) {
        if (zzfcVar.zza() != 0) {
            this.zzs.zzay().zzj().zzb("EES programs found", Integer.valueOf(zzfcVar.zza()));
            com.google.android.gms.internal.measurement.zzgo zzgoVar = zzfcVar.zzj().get(0);
            try {
                com.google.android.gms.internal.measurement.zzc zzcVar = new com.google.android.gms.internal.measurement.zzc();
                zzcVar.zzd("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfg
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return new com.google.android.gms.internal.measurement.zzn("internal.remoteConfig", new zzfl(zzfm.this, str));
                    }
                });
                zzcVar.zzd("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfi
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        final zzfm zzfmVar = zzfm.this;
                        final String str2 = str;
                        return new com.google.android.gms.internal.measurement.zzu("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfh
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                zzfm zzfmVar2 = zzfm.this;
                                String str3 = str2;
                                zzg zzj = zzfmVar2.zzf.zzi().zzj(str3);
                                HashMap hashMap = new HashMap();
                                hashMap.put("platform", "android");
                                hashMap.put("package_name", str3);
                                zzfmVar2.zzs.zzf().zzh();
                                hashMap.put("gmp_version", 43042L);
                                if (zzj != null) {
                                    String zzw = zzj.zzw();
                                    if (zzw != null) {
                                        hashMap.put("app_version", zzw);
                                    }
                                    hashMap.put("app_version_int", Long.valueOf(zzj.zzb()));
                                    hashMap.put("dynamite_version", Long.valueOf(zzj.zzk()));
                                }
                                return hashMap;
                            }
                        });
                    }
                });
                zzcVar.zzd("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzff
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return new com.google.android.gms.internal.measurement.zzt(zzfm.this.zzb);
                    }
                });
                zzcVar.zzc(zzgoVar);
                this.zza.put(str, zzcVar);
                this.zzs.zzay().zzj().zzc("EES program loaded for appId, activities", str, Integer.valueOf(zzgoVar.zza().zza()));
                for (com.google.android.gms.internal.measurement.zzgm zzgmVar : zzgoVar.zza().zzd()) {
                    this.zzs.zzay().zzj().zzb("EES program activity", zzgmVar.zzb());
                }
                return;
            } catch (com.google.android.gms.internal.measurement.zzd unused) {
                this.zzs.zzay().zzd().zzb("Failed to load EES program. appId", str);
                return;
            }
        }
        this.zza.remove(str);
    }

    private static final Map<String, String> zzv(com.google.android.gms.internal.measurement.zzfc zzfcVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzfcVar != null) {
            for (com.google.android.gms.internal.measurement.zzfe zzfeVar : zzfcVar.zzk()) {
                arrayMap.put(zzfeVar.zzb(), zzfeVar.zzc());
            }
        }
        return arrayMap;
    }

    @Override // com.google.android.gms.measurement.internal.zzae
    public final String zza(String str, String str2) {
        zzg();
        zzt(str);
        Map<String, String> map = this.zzc.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzki
    protected final boolean zzb() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzc(String str, String str2) {
        Integer num;
        zzg();
        zzt(str);
        Map<String, Integer> map = this.zzh.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.google.android.gms.internal.measurement.zzfc zze(String str) {
        zzY();
        zzg();
        Preconditions.checkNotEmpty(str);
        zzt(str);
        return this.zzg.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String zzf(String str) {
        zzg();
        return this.zzi.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzi(String str) {
        zzg();
        this.zzi.put(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(String str) {
        zzg();
        this.zzg.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzk(String str) {
        zzg();
        com.google.android.gms.internal.measurement.zzfc zze = zze(str);
        if (zze == null) {
            return false;
        }
        return zze.zzo();
    }

    public final boolean zzl(String str) {
        com.google.android.gms.internal.measurement.zzfc zzfcVar;
        zzpo.zzc();
        return (!this.zzs.zzf().zzs(null, zzdy.zzav) || TextUtils.isEmpty(str) || (zzfcVar = this.zzg.get(str)) == null || zzfcVar.zza() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzm(String str) {
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzn(String str, String str2) {
        Boolean bool;
        zzg();
        zzt(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zze.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzo(String str, String str2) {
        Boolean bool;
        zzg();
        zzt(str);
        if (zzm(str) && zzkz.zzag(str2)) {
            return true;
        }
        if (zzp(str) && zzkz.zzah(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzd.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzp(String str) {
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(zza(str, "measurement.upload.blacklist_public"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzq(String str, byte[] bArr, String str2) {
        zzY();
        zzg();
        Preconditions.checkNotEmpty(str);
        com.google.android.gms.internal.measurement.zzfb zzbv = zzr(str, bArr).zzbv();
        if (zzbv == null) {
            return false;
        }
        zzs(str, zzbv);
        zzpo.zzc();
        if (this.zzs.zzf().zzs(null, zzdy.zzav)) {
            zzu(str, zzbv.zzaA());
        }
        this.zzg.put(str, zzbv.zzaA());
        this.zzi.put(str, str2);
        this.zzc.put(str, zzv(zzbv.zzaA()));
        this.zzf.zzi().zzC(str, new ArrayList(zzbv.zze()));
        try {
            zzbv.zzc();
            bArr = zzbv.zzaA().zzbs();
        } catch (RuntimeException e) {
            this.zzs.zzay().zzk().zzc("Unable to serialize reduced-size config. Storing full config instead. appId", zzel.zzn(str), e);
        }
        zzpi.zzc();
        if (!this.zzs.zzf().zzs(null, zzdy.zzas)) {
            this.zzf.zzi().zzG(str, bArr, null);
        } else {
            this.zzf.zzi().zzG(str, bArr, str2);
        }
        this.zzg.put(str, zzbv.zzaA());
        return true;
    }
}

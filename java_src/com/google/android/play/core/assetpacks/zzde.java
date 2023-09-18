package com.google.android.play.core.assetpacks;

import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzde {
    private static final com.google.android.play.core.internal.zzag zza = new com.google.android.play.core.internal.zzag("ExtractorSessionStoreView");
    private final zzbh zzb;
    private final com.google.android.play.core.internal.zzco<zzy> zzc;
    private final zzco zzd;
    private final com.google.android.play.core.internal.zzco<Executor> zze;
    private final Map<Integer, zzdb> zzf = new HashMap();
    private final ReentrantLock zzg = new ReentrantLock();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzde(zzbh zzbhVar, com.google.android.play.core.internal.zzco<zzy> zzcoVar, zzco zzcoVar2, com.google.android.play.core.internal.zzco<Executor> zzcoVar3) {
        this.zzb = zzbhVar;
        this.zzc = zzcoVar;
        this.zzd = zzcoVar2;
        this.zze = zzcoVar3;
    }

    private final zzdb zzq(int i) {
        Map<Integer, zzdb> map = this.zzf;
        Integer valueOf = Integer.valueOf(i);
        zzdb zzdbVar = map.get(valueOf);
        if (zzdbVar != null) {
            return zzdbVar;
        }
        throw new zzck(String.format("Could not find session %d while trying to get it", valueOf), i);
    }

    private final <T> T zzr(zzdd<T> zzddVar) {
        try {
            this.zzg.lock();
            return zzddVar.zza();
        } finally {
            this.zzg.unlock();
        }
    }

    private static String zzs(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            throw new zzck("Session without pack received.");
        }
        return stringArrayList.get(0);
    }

    private static <T> List<T> zzt(List<T> list) {
        return list == null ? Collections.emptyList() : list;
    }

    private final Map<String, zzdb> zzu(final List<String> list) {
        return (Map) zzr(new zzdd() { // from class: com.google.android.play.core.assetpacks.zzcx
            @Override // com.google.android.play.core.assetpacks.zzdd
            public final Object zza() {
                return zzde.this.zzi(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Boolean zza(Bundle bundle) {
        int i = bundle.getInt("session_id");
        if (i == 0) {
            return Boolean.TRUE;
        }
        Map<Integer, zzdb> map = this.zzf;
        Integer valueOf = Integer.valueOf(i);
        if (!map.containsKey(valueOf)) {
            return Boolean.TRUE;
        }
        zzdb zzdbVar = this.zzf.get(valueOf);
        if (zzdbVar.zzc.zzd == 6) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(!zzbg.zzc(zzdbVar.zzc.zzd, bundle.getInt(com.google.android.play.core.assetpacks.model.zzb.zza("status", zzs(bundle)))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Boolean zzb(Bundle bundle) {
        zzdc zzdcVar;
        int i = bundle.getInt("session_id");
        if (i == 0) {
            return Boolean.FALSE;
        }
        Map<Integer, zzdb> map = this.zzf;
        Integer valueOf = Integer.valueOf(i);
        boolean z = true;
        boolean z2 = false;
        if (!map.containsKey(valueOf)) {
            String zzs = zzs(bundle);
            long j = bundle.getLong(com.google.android.play.core.assetpacks.model.zzb.zza("pack_version", zzs));
            String string = bundle.getString(com.google.android.play.core.assetpacks.model.zzb.zza("pack_version_tag", zzs), "");
            int i2 = bundle.getInt(com.google.android.play.core.assetpacks.model.zzb.zza("status", zzs));
            long j2 = bundle.getLong(com.google.android.play.core.assetpacks.model.zzb.zza("total_bytes_to_download", zzs));
            ArrayList<String> stringArrayList = bundle.getStringArrayList(com.google.android.play.core.assetpacks.model.zzb.zza("slice_ids", zzs));
            ArrayList arrayList = new ArrayList();
            for (String str : zzt(stringArrayList)) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(com.google.android.play.core.assetpacks.model.zzb.zzb("chunk_intents", zzs, str));
                ArrayList arrayList2 = new ArrayList();
                for (Intent intent : zzt(parcelableArrayList)) {
                    if (intent == null) {
                        z = z2;
                    }
                    arrayList2.add(new zzcz(z));
                    z = true;
                    z2 = false;
                }
                String string2 = bundle.getString(com.google.android.play.core.assetpacks.model.zzb.zzb("uncompressed_hash_sha256", zzs, str));
                long j3 = bundle.getLong(com.google.android.play.core.assetpacks.model.zzb.zzb("uncompressed_size", zzs, str));
                int i3 = bundle.getInt(com.google.android.play.core.assetpacks.model.zzb.zzb("patch_format", zzs, str), 0);
                if (i3 != 0) {
                    zzdcVar = new zzdc(str, string2, j3, arrayList2, 0, i3);
                    z2 = false;
                } else {
                    z2 = false;
                    zzdcVar = new zzdc(str, string2, j3, arrayList2, bundle.getInt(com.google.android.play.core.assetpacks.model.zzb.zzb("compression_format", zzs, str), 0), 0);
                }
                arrayList.add(zzdcVar);
                z = true;
            }
            this.zzf.put(Integer.valueOf(i), new zzdb(i, bundle.getInt("app_version_code"), new zzda(zzs, j, i2, j2, arrayList, string)));
        } else {
            zzdb zzq = zzq(i);
            int i4 = bundle.getInt(com.google.android.play.core.assetpacks.model.zzb.zza("status", zzq.zzc.zza));
            if (zzbg.zzc(zzq.zzc.zzd, i4)) {
                zza.zza("Found stale update for session %s with status %d.", valueOf, Integer.valueOf(zzq.zzc.zzd));
                zzda zzdaVar = zzq.zzc;
                String str2 = zzdaVar.zza;
                int i5 = zzdaVar.zzd;
                if (i5 == 4) {
                    this.zzc.zza().zzh(i, str2);
                } else if (i5 == 5) {
                    this.zzc.zza().zzi(i);
                } else if (i5 == 6) {
                    this.zzc.zza().zze(Arrays.asList(str2));
                }
            } else {
                zzq.zzc.zzd = i4;
                if (zzbg.zzd(i4)) {
                    zzn(i);
                    this.zzd.zzc(zzq.zzc.zza);
                } else {
                    for (zzdc zzdcVar2 : zzq.zzc.zzf) {
                        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(com.google.android.play.core.assetpacks.model.zzb.zzb("chunk_intents", zzq.zzc.zza, zzdcVar2.zza));
                        if (parcelableArrayList2 != null) {
                            for (int i6 = 0; i6 < parcelableArrayList2.size(); i6++) {
                                if (parcelableArrayList2.get(i6) != null && ((Intent) parcelableArrayList2.get(i6)).getData() != null) {
                                    zzdcVar2.zzd.get(i6).zza = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object zzc(String str, int i, long j) {
        zzdb zzdbVar = zzu(Arrays.asList(str)).get(str);
        if (zzdbVar == null || zzbg.zzd(zzdbVar.zzc.zzd)) {
            zza.zzb(String.format("Could not find pack %s while trying to complete it", str), new Object[0]);
        }
        this.zzb.zzE(str, i, j);
        zzdbVar.zzc.zzd = 4;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object zzd(int i, int i2) {
        zzq(i).zzc.zzd = 5;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object zze(int i) {
        zzdb zzq = zzq(i);
        if (!zzbg.zzd(zzq.zzc.zzd)) {
            throw new zzck(String.format("Could not safely delete session %d because it is not in a terminal state.", Integer.valueOf(i)), i);
        }
        zzbh zzbhVar = this.zzb;
        zzda zzdaVar = zzq.zzc;
        zzbhVar.zzE(zzdaVar.zza, zzq.zzb, zzdaVar.zzb);
        zzda zzdaVar2 = zzq.zzc;
        int i2 = zzdaVar2.zzd;
        if (i2 == 5 || i2 == 6) {
            this.zzb.zzF(zzdaVar2.zza, zzq.zzb, zzdaVar2.zzb);
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<Integer, zzdb> zzg() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map zzi(List list) {
        HashMap hashMap = new HashMap();
        for (zzdb zzdbVar : this.zzf.values()) {
            String str = zzdbVar.zzc.zza;
            if (list.contains(str)) {
                zzdb zzdbVar2 = (zzdb) hashMap.get(str);
                if ((zzdbVar2 == null ? -1 : zzdbVar2.zza) < zzdbVar.zza) {
                    hashMap.put(str, zzdbVar);
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj() {
        this.zzg.lock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzk(final String str, final int i, final long j) {
        zzr(new zzdd() { // from class: com.google.android.play.core.assetpacks.zzcv
            @Override // com.google.android.play.core.assetpacks.zzdd
            public final Object zza() {
                zzde.this.zzc(str, i, j);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzl() {
        this.zzg.unlock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzm(final int i, int i2) {
        zzr(new zzdd(i, 5) { // from class: com.google.android.play.core.assetpacks.zzcs
            public final /* synthetic */ int zzb;

            @Override // com.google.android.play.core.assetpacks.zzdd
            public final Object zza() {
                zzde.this.zzd(this.zzb, 5);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzn(final int i) {
        zzr(new zzdd() { // from class: com.google.android.play.core.assetpacks.zzcr
            @Override // com.google.android.play.core.assetpacks.zzdd
            public final Object zza() {
                zzde.this.zze(i);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzo(final Bundle bundle) {
        return ((Boolean) zzr(new zzdd() { // from class: com.google.android.play.core.assetpacks.zzct
            @Override // com.google.android.play.core.assetpacks.zzdd
            public final Object zza() {
                return zzde.this.zza(bundle);
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzp(final Bundle bundle) {
        return ((Boolean) zzr(new zzdd() { // from class: com.google.android.play.core.assetpacks.zzcu
            @Override // com.google.android.play.core.assetpacks.zzdd
            public final Object zza() {
                return zzde.this.zzb(bundle);
            }
        })).booleanValue();
    }
}

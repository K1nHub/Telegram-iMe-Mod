package com.google.android.gms.internal.firebase_ml;

import android.os.SystemClock;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseAppLifecycleListener;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.p020ml.common.modeldownload.FirebaseRemoteModel;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzob {
    private static final GmsLogger zzass = new GmsLogger("SharedPrefManager", "");
    private static final Map<String, zzob> zzatg = new HashMap();
    private final FirebaseApp firebaseApp;

    private zzob(FirebaseApp firebaseApp) {
        this.firebaseApp = firebaseApp;
    }

    public static zzob zzc(FirebaseApp firebaseApp) {
        zzob zzobVar;
        Preconditions.checkNotNull(firebaseApp, "FirebaseApp can not be null");
        final String persistenceKey = firebaseApp.getPersistenceKey();
        Map<String, zzob> map = zzatg;
        synchronized (map) {
            if (!map.containsKey(persistenceKey)) {
                map.put(persistenceKey, new zzob(firebaseApp));
                firebaseApp.addLifecycleEventListener(new FirebaseAppLifecycleListener(persistenceKey) { // from class: com.google.android.gms.internal.firebase_ml.zzoe
                    private final String zzaue;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzaue = persistenceKey;
                    }

                    public final void onDeleted(String str, FirebaseOptions firebaseOptions) {
                        zzob.zza(this.zzaue, str, firebaseOptions);
                    }
                });
            }
            zzobVar = map.get(persistenceKey);
        }
        return zzobVar;
    }

    public final synchronized boolean zzlr() {
        return this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getBoolean(String.format("logging_%s_%s", "vision", this.firebaseApp.getPersistenceKey()), true);
    }

    public final synchronized void zzaf(boolean z) {
        this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).edit().putBoolean(String.format("logging_%s_%s", "vision", this.firebaseApp.getPersistenceKey()), z).apply();
    }

    public final synchronized boolean zzls() {
        return this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getBoolean(String.format("logging_%s_%s", "model", this.firebaseApp.getPersistenceKey()), true);
    }

    public final synchronized void zzag(boolean z) {
        this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).edit().putBoolean(String.format("logging_%s_%s", "model", this.firebaseApp.getPersistenceKey()), z).apply();
    }

    public final synchronized Long zza(FirebaseRemoteModel firebaseRemoteModel) {
        long j = this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getLong(String.format("downloading_model_id_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), -1L);
        if (j < 0) {
            return null;
        }
        return Long.valueOf(j);
    }

    public final synchronized zzor zzbs(String str) {
        return zzbt(this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getString(String.format("downloading_model_type_%s", str), ""));
    }

    public final synchronized String zzb(FirebaseRemoteModel firebaseRemoteModel) {
        return this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getString(String.format("downloading_model_hash_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), null);
    }

    public final synchronized String zzc(FirebaseRemoteModel firebaseRemoteModel) {
        return this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getString(String.format("current_model_hash_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), null);
    }

    public final synchronized zzor zzd(FirebaseRemoteModel firebaseRemoteModel) {
        return zzbt(this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getString(String.format("current_model_type_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), zzor.UNKNOWN.name()));
    }

    public final synchronized String zze(FirebaseRemoteModel firebaseRemoteModel) {
        return this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getString(String.format("bad_hash_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), null);
    }

    public final synchronized String zzlt() {
        return this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getString("app_version", null);
    }

    public final synchronized long zzf(FirebaseRemoteModel firebaseRemoteModel) {
        return this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getLong(String.format("downloading_begin_time_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), 0L);
    }

    public final synchronized long zzg(FirebaseRemoteModel firebaseRemoteModel) {
        return this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).getLong(String.format("model_first_use_time_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), 0L);
    }

    public final synchronized void zza(FirebaseRemoteModel firebaseRemoteModel, long j) {
        this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).edit().putLong(String.format("model_first_use_time_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), j).apply();
    }

    public final synchronized void zzh(FirebaseRemoteModel firebaseRemoteModel) {
        this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).edit().remove(String.format("downloading_model_id_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist())).remove(String.format("downloading_model_hash_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist())).remove(String.format("downloading_model_type_%s", zzb(firebaseRemoteModel))).remove(String.format("downloading_begin_time_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist())).remove(String.format("model_first_use_time_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist())).apply();
    }

    public final synchronized void zzi(FirebaseRemoteModel firebaseRemoteModel) {
        this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).edit().remove(String.format("current_model_hash_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist())).remove(String.format("current_model_type_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist())).commit();
    }

    public final synchronized void zza(FirebaseRemoteModel firebaseRemoteModel, String str, zzor zzorVar) {
        this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).edit().putString(String.format("current_model_hash_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), str).putString(String.format("current_model_type_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), zzorVar.name()).apply();
    }

    public final synchronized void zza(long j, zzpe zzpeVar) {
        String zzmn = zzpeVar.zzmn();
        String modelHash = zzpeVar.getModelHash();
        this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).edit().putString(String.format("downloading_model_hash_%s_%s", this.firebaseApp.getPersistenceKey(), zzmn), modelHash).putLong(String.format("downloading_model_id_%s_%s", this.firebaseApp.getPersistenceKey(), zzmn), j).putString(String.format("downloading_model_type_%s", modelHash), zzpeVar.zzmo().name()).putLong(String.format("downloading_begin_time_%s_%s", this.firebaseApp.getPersistenceKey(), zzmn), SystemClock.elapsedRealtime()).apply();
    }

    public final synchronized void zza(FirebaseRemoteModel firebaseRemoteModel, String str, String str2) {
        this.firebaseApp.getApplicationContext().getSharedPreferences("com.google.firebase.ml.internal", 0).edit().putString(String.format("bad_hash_%s_%s", this.firebaseApp.getPersistenceKey(), firebaseRemoteModel.getUniqueModelNameForPersist()), str).putString("app_version", str2).apply();
    }

    private static zzor zzbt(String str) {
        if (str == null) {
            return zzor.UNKNOWN;
        }
        try {
            return zzor.zzbu(str);
        } catch (IllegalArgumentException unused) {
            zzass.m805e("SharedPrefManager", str.length() != 0 ? "Invalid model type ".concat(str) : new String("Invalid model type "));
            return zzor.UNKNOWN;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(String str, String str2, FirebaseOptions firebaseOptions) {
        Map<String, zzob> map = zzatg;
        synchronized (map) {
            map.remove(str);
        }
    }
}

package com.google.firebase.p020ml.common.modeldownload;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseApp;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.firebase.ml.common.modeldownload.FirebaseModelManager */
/* loaded from: classes3.dex */
public class FirebaseModelManager {
    private static final GmsLogger zzass = new GmsLogger("FirebaseModelManager", "");
    private static final Map<String, FirebaseModelManager> zzatg = new HashMap();
    private final Map<String, FirebaseRemoteModel> zzawp = new HashMap();
    private final Map<String, FirebaseLocalModel> zzawr;

    public static synchronized FirebaseModelManager getInstance() {
        FirebaseModelManager firebaseModelManager;
        synchronized (FirebaseModelManager.class) {
            firebaseModelManager = getInstance(FirebaseApp.getInstance());
        }
        return firebaseModelManager;
    }

    @KeepForSdk
    public static synchronized FirebaseModelManager getInstance(FirebaseApp firebaseApp) {
        synchronized (FirebaseModelManager.class) {
            Preconditions.checkNotNull(firebaseApp, "Please provide a valid FirebaseApp");
            String persistenceKey = firebaseApp.getPersistenceKey();
            Map<String, FirebaseModelManager> map = zzatg;
            if (map.containsKey(persistenceKey)) {
                return map.get(persistenceKey);
            }
            FirebaseModelManager firebaseModelManager = new FirebaseModelManager(firebaseApp);
            map.put(persistenceKey, firebaseModelManager);
            return firebaseModelManager;
        }
    }

    @KeepForSdk
    protected FirebaseModelManager(FirebaseApp firebaseApp) {
        new HashMap();
        this.zzawr = new HashMap();
    }

    public synchronized boolean registerLocalModel(FirebaseLocalModel firebaseLocalModel) {
        Preconditions.checkNotNull(firebaseLocalModel, "FirebaseLocalModel can not be null");
        if (this.zzawr.containsKey(firebaseLocalModel.getModelName())) {
            GmsLogger gmsLogger = zzass;
            String valueOf = String.valueOf(firebaseLocalModel.getModelName());
            gmsLogger.m777w("FirebaseModelManager", valueOf.length() != 0 ? "The local model name is already registered: ".concat(valueOf) : new String("The local model name is already registered: "));
            return false;
        }
        this.zzawr.put(firebaseLocalModel.getModelName(), firebaseLocalModel);
        return true;
    }

    @KeepForSdk
    public synchronized FirebaseRemoteModel getNonBaseRemoteModel(String str) {
        return this.zzawp.get(str);
    }

    @KeepForSdk
    public synchronized FirebaseLocalModel getLocalModel(String str) {
        return this.zzawr.get(str);
    }

    static {
        new HashMap();
    }
}

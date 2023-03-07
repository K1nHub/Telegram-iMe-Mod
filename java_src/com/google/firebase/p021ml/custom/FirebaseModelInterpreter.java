package com.google.firebase.p021ml.custom;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.internal.firebase_ml.zzmc;
import com.google.android.gms.internal.firebase_ml.zzmd;
import com.google.android.gms.internal.firebase_ml.zzno;
import com.google.android.gms.internal.firebase_ml.zznr;
import com.google.android.gms.internal.firebase_ml.zznv;
import com.google.android.gms.internal.firebase_ml.zznw;
import com.google.android.gms.internal.firebase_ml.zzob;
import com.google.android.gms.internal.firebase_ml.zzor;
import com.google.android.gms.internal.firebase_ml.zzox;
import com.google.android.gms.internal.firebase_ml.zzpn;
import com.google.android.gms.internal.firebase_ml.zzpr;
import com.google.android.gms.internal.firebase_ml.zzuu;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.common.FirebaseMLException;
import com.google.firebase.p021ml.common.modeldownload.FirebaseLocalModel;
import com.google.firebase.p021ml.common.modeldownload.FirebaseModelManager;
import com.google.firebase.p021ml.common.modeldownload.FirebaseRemoteModel;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.firebase.ml.custom.FirebaseModelInterpreter */
/* loaded from: classes3.dex */
public final class FirebaseModelInterpreter implements Closeable {
    private static Map<zznw<FirebaseModelOptions>, FirebaseModelInterpreter> zzatg = new HashMap();
    private final zznr zzaxd;
    private final zzpr zzaxe;

    private FirebaseModelInterpreter(FirebaseApp firebaseApp, FirebaseModelOptions firebaseModelOptions) throws FirebaseMLException {
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotNull(firebaseModelOptions);
        Preconditions.checkArgument((firebaseModelOptions.zzmv() == null && firebaseModelOptions.zzmw() == null) ? false : true, "FirebaseModelOptions should be set with at least one Model");
        zzob.zzc(firebaseApp);
        FirebaseModelManager firebaseModelManager = FirebaseModelManager.getInstance(firebaseApp);
        String zzmv = firebaseModelOptions.zzmv();
        String zzmw = firebaseModelOptions.zzmw();
        FirebaseLocalModel localModel = zzmv == null ? null : firebaseModelManager.getLocalModel(zzmv);
        FirebaseRemoteModel nonBaseRemoteModel = zzmw != null ? firebaseModelManager.getNonBaseRemoteModel(zzmw) : null;
        if (zzmv != null && localModel == null) {
            zza(zzmc.MODEL_NOT_REGISTERED, firebaseApp, nonBaseRemoteModel, localModel);
            String valueOf = String.valueOf(firebaseModelOptions.zzmv());
            throw new FirebaseMLException(valueOf.length() != 0 ? "Local model is not registered: ".concat(valueOf) : new String("Local model is not registered: "), 3);
        }
        if (zzmw != null) {
            if (nonBaseRemoteModel == null) {
                zza(zzmc.MODEL_NOT_REGISTERED, firebaseApp, nonBaseRemoteModel, localModel);
                String valueOf2 = String.valueOf(firebaseModelOptions.zzmw());
                throw new FirebaseMLException(valueOf2.length() != 0 ? "Remote model is not registered: ".concat(valueOf2) : new String("Remote model is not registered: "), 3);
            } else if (nonBaseRemoteModel.isBaseModel()) {
                zza(zzmc.MODEL_TYPE_MISUSE, firebaseApp, nonBaseRemoteModel, localModel);
                throw new FirebaseMLException("You are trying to use a Base Model as a Custom model. Please make sure you passed in the correct model name.", 3);
            }
        }
        zzpr zzprVar = new zzpr(firebaseApp, localModel, nonBaseRemoteModel, firebaseModelOptions.zzmx());
        this.zzaxe = zzprVar;
        zznr zza = zznr.zza(firebaseApp);
        this.zzaxd = zza;
        zza.zza(zzprVar);
        zza(zzmc.NO_ERROR, firebaseApp, nonBaseRemoteModel, localModel);
    }

    public static synchronized FirebaseModelInterpreter getInstance(FirebaseModelOptions firebaseModelOptions) throws FirebaseMLException {
        FirebaseModelInterpreter zza;
        synchronized (FirebaseModelInterpreter.class) {
            zza = zza(FirebaseApp.getInstance(), firebaseModelOptions);
        }
        return zza;
    }

    private static synchronized FirebaseModelInterpreter zza(FirebaseApp firebaseApp, FirebaseModelOptions firebaseModelOptions) throws FirebaseMLException {
        synchronized (FirebaseModelInterpreter.class) {
            Preconditions.checkNotNull(firebaseApp, "Please provide a valid FirebaseApp");
            Preconditions.checkNotNull(firebaseModelOptions, "Please provide a valid FirebaseModelOptions");
            zznw<FirebaseModelOptions> zzj = zznw.zzj(firebaseApp.getPersistenceKey(), firebaseModelOptions);
            if (zzatg.containsKey(zzj)) {
                return zzatg.get(zzj);
            }
            FirebaseModelInterpreter firebaseModelInterpreter = new FirebaseModelInterpreter(firebaseApp, firebaseModelOptions);
            zzatg.put(zzj, firebaseModelInterpreter);
            return firebaseModelInterpreter;
        }
    }

    public final Task<FirebaseModelOutputs> run(FirebaseModelInputs firebaseModelInputs, FirebaseModelInputOutputOptions firebaseModelInputOutputOptions) throws FirebaseMLException {
        Preconditions.checkNotNull(firebaseModelInputs, "Please provide valid (non-null) inputs");
        Preconditions.checkNotNull(firebaseModelInputOutputOptions, "Please provide valid (non-null) input and output options");
        return this.zzaxd.zza((zzno<T, zzpr>) this.zzaxe, (zzpr) new zzpn(firebaseModelInputs, firebaseModelInputOutputOptions));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zzaxd.zzb(this.zzaxe);
    }

    private static void zza(zzmc zzmcVar, FirebaseApp firebaseApp, FirebaseRemoteModel firebaseRemoteModel, FirebaseLocalModel firebaseLocalModel) {
        zzlu.zzy zzjx = zzlu.zzy.zzjx();
        if (firebaseRemoteModel != null) {
            zzjx = zzox.zza(firebaseRemoteModel, zzor.CUSTOM);
        } else if (firebaseLocalModel != null) {
            zzjx = firebaseLocalModel.zza(zzor.CUSTOM);
        }
        zznv.zza(firebaseApp, 2).zza(zzlu.zzs.zzjl().zza(zzlu.zzam.zzle().zzbi(zzpr.zzaxq)).zza((zzlu.zzo) ((zzuu) zzlu.zzo.zzja().zzg(zzjx).zzc(zzmcVar).zzrq())), zzmd.CUSTOM_MODEL_CREATE);
    }
}

package com.google.android.gms.internal.firebase_ml;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.common.modeldownload.FirebaseRemoteModel;
import java.io.File;
import java.nio.MappedByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzpk {
    private static final GmsLogger zzass = new GmsLogger("RemoteModelLoader", "");
    private static Map<String, zzpk> zzavk = new HashMap();
    private final FirebaseApp firebaseApp;
    private final FirebaseRemoteModel zzavo;
    private final zzpa zzavp;
    private final zzor zzavv;
    private final zzoz zzawb;
    private final zzpd zzawc;
    private final zzpj zzawd;
    private boolean zzawe = true;

    private zzpk(FirebaseApp firebaseApp, FirebaseRemoteModel firebaseRemoteModel, zzot zzotVar, zzpj zzpjVar, zzor zzorVar) {
        this.zzawc = new zzpd(firebaseApp, firebaseRemoteModel, zzotVar, zzorVar);
        zzpa zzpaVar = new zzpa(firebaseApp, firebaseRemoteModel);
        this.zzavp = zzpaVar;
        this.zzawb = zzoz.zza(firebaseApp, firebaseRemoteModel, new zzok(firebaseApp), zzpaVar);
        this.zzawd = zzpjVar;
        this.firebaseApp = firebaseApp;
        this.zzavo = firebaseRemoteModel;
        this.zzavv = zzorVar;
    }

    public static synchronized zzpk zza(FirebaseApp firebaseApp, FirebaseRemoteModel firebaseRemoteModel, zzot zzotVar, zzpj zzpjVar, zzor zzorVar) {
        zzpk zzpkVar;
        synchronized (zzpk.class) {
            String uniqueModelNameForPersist = firebaseRemoteModel.getUniqueModelNameForPersist();
            if (!zzavk.containsKey(uniqueModelNameForPersist)) {
                zzavk.put(uniqueModelNameForPersist, new zzpk(firebaseApp, firebaseRemoteModel, zzotVar, zzpjVar, zzorVar));
            }
            zzpkVar = zzavk.get(uniqueModelNameForPersist);
        }
        return zzpkVar;
    }

    public final synchronized MappedByteBuffer load() throws FirebaseMLException {
        MappedByteBuffer zzah;
        GmsLogger gmsLogger = zzass;
        gmsLogger.m807d("RemoteModelLoader", "Try to load newly downloaded model file.");
        zzah = zzah(this.zzawe);
        if (zzah == null) {
            gmsLogger.m807d("RemoteModelLoader", "Loading existing model file.");
            zzah = zzmq();
        }
        if (this.zzawe || !this.zzawb.zzmj()) {
            this.zzawe = false;
            gmsLogger.m807d("RemoteModelLoader", "Initial loading, check for model updates.");
            this.zzavp.zza(zzmc.NO_ERROR, false, this.zzavv, zzlu.zzw.zza.IMPLICITLY_REQUESTED);
            this.zzawb.zzmb();
        }
        return zzah;
    }

    public final FirebaseRemoteModel zzmp() {
        return this.zzavo;
    }

    private final MappedByteBuffer zzah(boolean z) throws FirebaseMLException {
        zzoz zzozVar;
        Long zzmc = this.zzawb.zzmc();
        String zzmd = this.zzawb.zzmd();
        if (zzmc == null || zzmd == null) {
            zzass.m807d("RemoteModelLoader", "No new model is downloading.");
            return null;
        }
        Integer zzmf = this.zzawb.zzmf();
        if (zzmf == null) {
            return null;
        }
        GmsLogger gmsLogger = zzass;
        String valueOf = String.valueOf(zzmf);
        StringBuilder sb = new StringBuilder(valueOf.length() + 22);
        sb.append("Download Status code: ");
        sb.append(valueOf);
        gmsLogger.m807d("RemoteModelLoader", sb.toString());
        if (zzmf.intValue() == 8) {
            gmsLogger.m807d("RemoteModelLoader", "Model downloaded successfully");
            this.zzavp.zza(zzmc.NO_ERROR, true, this.zzavv, zzlu.zzw.zza.SUCCEEDED);
            ParcelFileDescriptor zzmg = this.zzawb.zzmg();
            if (zzmg == null) {
                return null;
            }
            gmsLogger.m807d("RemoteModelLoader", "moving downloaded model from external storage to private folder.");
            try {
                File zza = this.zzawc.zza(zzmg, zzmd, this.zzavp);
                if (zza == null) {
                    return null;
                }
                MappedByteBuffer zzg = zzg(zza);
                String valueOf2 = String.valueOf(zza.getParent());
                gmsLogger.m807d("RemoteModelLoader", valueOf2.length() != 0 ? "Moved the downloaded model to private folder successfully: ".concat(valueOf2) : new String("Moved the downloaded model to private folder successfully: "));
                this.zzawb.zze(zzmd, this.zzavv);
                if (z && this.zzawc.zzd(zza)) {
                    gmsLogger.m807d("RemoteModelLoader", "All old models are deleted.");
                    return zzg(this.zzawc.zzf(zza));
                }
                return zzg;
            } finally {
                this.zzawb.zzme();
            }
        }
        if (zzmf.intValue() == 16) {
            this.zzavp.zza(false, this.zzavv, this.zzawb.zza(zzmc));
        }
        return null;
    }

    private final MappedByteBuffer zzg(File file) throws FirebaseMLException {
        try {
            return zzbw(file.getAbsolutePath());
        } catch (Exception e) {
            this.zzawc.zze(file);
            throw new FirebaseMLException("Failed to load newly downloaded model.", 14, e);
        }
    }

    private final MappedByteBuffer zzmq() throws FirebaseMLException {
        String zzmm = this.zzawc.zzmm();
        if (zzmm == null) {
            zzass.m807d("RemoteModelLoader", "No existing model file");
            return null;
        }
        try {
            return zzbw(zzmm);
        } catch (Exception e) {
            this.zzawc.zze(new File(zzmm));
            zzob.zzc(this.firebaseApp).zzi(this.zzavo);
            throw new FirebaseMLException("Failed to load an already downloaded model.", 14, e);
        }
    }

    private final MappedByteBuffer zzbw(String str) throws FirebaseMLException {
        return this.zzawd.zzbv(str);
    }
}

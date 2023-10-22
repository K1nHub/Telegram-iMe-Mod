package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class zzon {
    private static final GmsLogger zzass = new GmsLogger("ModelLoader", "");
    private final zzpk zzaup;
    public final zzoj zzauq;
    private final zzop zzaur;
    protected int zzaus = zzos.zzauz;

    public zzon(zzpk zzpkVar, zzoj zzojVar, zzop zzopVar) {
        Preconditions.checkArgument((zzpkVar == null && zzojVar == null) ? false : true, "At least one of RemoteModelLoader or LocalModelLoader must be non-null.");
        Preconditions.checkNotNull(zzopVar);
        this.zzaup = zzpkVar;
        this.zzauq = zzojVar;
        this.zzaur = zzopVar;
    }

    public final synchronized void zza(zzoq zzoqVar) throws FirebaseMLException {
        Exception exc;
        boolean z;
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        Exception e = null;
        try {
            z = zza(zzoqVar, arrayList);
            exc = null;
        } catch (Exception e2) {
            exc = e2;
            z = false;
        }
        if (z) {
            this.zzaur.zze(arrayList);
            this.zzaus = zzos.zzava;
            return;
        }
        try {
            z2 = zzb(zzoqVar, arrayList);
        } catch (Exception e3) {
            e = e3;
        }
        if (z2) {
            this.zzaur.zze(arrayList);
            this.zzaus = zzos.zzavb;
            return;
        }
        arrayList.add(zzmc.NO_VALID_MODEL);
        this.zzaur.zze(arrayList);
        this.zzaus = zzos.zzauz;
        if (exc != null) {
            String valueOf = String.valueOf(zzlx());
            throw new FirebaseMLException(valueOf.length() != 0 ? "Remote model load failed with the model options: ".concat(valueOf) : new String("Remote model load failed with the model options: "), 14, exc);
        } else if (e != null) {
            String valueOf2 = String.valueOf(zzlx());
            throw new FirebaseMLException(valueOf2.length() != 0 ? "Local model load failed with the model options: ".concat(valueOf2) : new String("Local model load failed with the model options: "), 14, e);
        } else {
            String valueOf3 = String.valueOf(zzlx());
            throw new FirebaseMLException(valueOf3.length() != 0 ? "Cannot load any model with the model options: ".concat(valueOf3) : new String("Cannot load any model with the model options: "), 14);
        }
    }

    public final synchronized boolean zzlw() {
        return this.zzaus == zzos.zzava;
    }

    private final synchronized boolean zza(zzoq zzoqVar, List<zzmc> list) throws FirebaseMLException {
        zzpk zzpkVar = this.zzaup;
        if (zzpkVar != null) {
            try {
                MappedByteBuffer load = zzpkVar.load();
                if (load != null) {
                    try {
                        zzoqVar.zza(load);
                        zzass.m1099d("ModelLoader", "Remote model source is loaded successfully");
                        return true;
                    } catch (RuntimeException e) {
                        list.add(zzmc.REMOTE_MODEL_INVALID);
                        throw e;
                    }
                }
                zzass.m1099d("ModelLoader", "Remote model source can NOT be loaded, try local model.");
                list.add(zzmc.REMOTE_MODEL_LOADER_LOADS_NO_MODEL);
            } catch (FirebaseMLException e2) {
                zzass.m1099d("ModelLoader", "Remote model source can NOT be loaded, try local model.");
                list.add(zzmc.REMOTE_MODEL_LOADER_ERROR);
                throw e2;
            }
        }
        return false;
    }

    private final synchronized boolean zzb(zzoq zzoqVar, List<zzmc> list) throws FirebaseMLException {
        MappedByteBuffer load;
        zzoj zzojVar = this.zzauq;
        if (zzojVar == null || (load = zzojVar.load()) == null) {
            return false;
        }
        try {
            zzoqVar.zza(load);
            zzass.m1099d("ModelLoader", "Local model source is loaded successfully");
            return true;
        } catch (RuntimeException e) {
            list.add(zzmc.LOCAL_MODEL_INVALID);
            throw e;
        }
    }

    private final String zzlx() {
        zzoj zzojVar = this.zzauq;
        String modelName = zzojVar == null ? "unspecified" : zzojVar.zzlv().getModelName();
        zzpk zzpkVar = this.zzaup;
        return String.format("Local model name: %s. Remote model name: %s. ", modelName, zzpkVar != null ? zzpkVar.zzmp().getUniqueModelNameForPersist() : "unspecified");
    }
}

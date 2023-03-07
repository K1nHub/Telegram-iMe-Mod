package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.vision.common.FirebaseVisionImage;
import com.google.firebase.p021ml.vision.text.FirebaseVisionText;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzrb extends zzql<FirebaseVisionText> {
    private static final Map<String, zzrb> zzatg = new HashMap();

    public static synchronized zzrb zze(FirebaseApp firebaseApp) {
        zzrb zzrbVar;
        synchronized (zzrb.class) {
            Preconditions.checkNotNull(firebaseApp, "FirebaseApp can not be null.");
            Preconditions.checkNotNull(firebaseApp.getPersistenceKey(), "Firebase app name must not be null");
            Map<String, zzrb> map = zzatg;
            zzrbVar = map.get(firebaseApp.getPersistenceKey());
            if (zzrbVar == null) {
                zzrbVar = new zzrb(firebaseApp);
                map.put(firebaseApp.getPersistenceKey(), zzrbVar);
            }
        }
        return zzrbVar;
    }

    private zzrb(FirebaseApp firebaseApp) {
        super(firebaseApp, new zzra(firebaseApp));
        zznv.zza(firebaseApp, 1).zza(zzlu.zzs.zzjl().zza(zzlu.zzak.zzla()), zzmd.ON_DEVICE_TEXT_CREATE);
    }

    public final Task<FirebaseVisionText> processImage(FirebaseVisionImage firebaseVisionImage) {
        return super.zza(firebaseVisionImage, false, true);
    }
}

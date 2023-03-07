package com.google.android.gms.internal.firebase_ml;

import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.vision.Frame;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.common.FirebaseMLException;
import com.google.firebase.p021ml.common.modeldownload.FirebaseLocalModel;
import com.google.firebase.p021ml.common.modeldownload.FirebaseModelManager;
import com.google.firebase.p021ml.common.modeldownload.FirebaseRemoteModel;
import com.google.firebase.p021ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler;
import com.google.firebase.p021ml.vision.automl.internal.OnDeviceAutoMLImageLabelerOptionsParcel;
import com.google.firebase.p021ml.vision.automl.internal.zzh;
import com.google.firebase.p021ml.vision.label.FirebaseVisionImageLabel;
import com.google.firebase.p021ml.vision.label.FirebaseVisionOnDeviceAutoMLImageLabelerOptions;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class zzqw implements zzno<List<FirebaseVisionImageLabel>, zzqp>, zznx {
    private static final AtomicBoolean zzaxr = new AtomicBoolean(true);
    private final FirebaseApp firebaseApp;
    private final FirebaseLocalModel zzaui;
    private final FirebaseRemoteModel zzavo;
    private final zznv zzavr;
    private final AtomicBoolean zzaxu = new AtomicBoolean(false);
    private final FirebaseVisionOnDeviceAutoMLImageLabelerOptions zzbda;
    private IOnDeviceAutoMLImageLabeler zzbdb;

    public zzqw(FirebaseApp firebaseApp, FirebaseVisionOnDeviceAutoMLImageLabelerOptions firebaseVisionOnDeviceAutoMLImageLabelerOptions) {
        this.firebaseApp = firebaseApp;
        this.zzbda = firebaseVisionOnDeviceAutoMLImageLabelerOptions;
        this.zzavr = zznv.zza(firebaseApp, 5);
        FirebaseModelManager firebaseModelManager = FirebaseModelManager.getInstance();
        if (!TextUtils.isEmpty(firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmw())) {
            this.zzavo = firebaseModelManager.getNonBaseRemoteModel(firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmw());
        } else {
            this.zzavo = null;
        }
        if (!TextUtils.isEmpty(firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmv())) {
            this.zzaui = firebaseModelManager.getLocalModel(firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmv());
        } else {
            this.zzaui = null;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final zznx zzll() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final synchronized List<FirebaseVisionImageLabel> zza(zzqp zzqpVar) throws FirebaseMLException {
        Preconditions.checkNotNull(zzqpVar, "Mobile vision input can not be null");
        Preconditions.checkNotNull(zzqpVar.zzbay, "Input frame can not be null");
        boolean z = this.zzaxu.get();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzbdb == null) {
            zza(zzmc.UNKNOWN_ERROR, elapsedRealtime, z, zzqpVar);
            Log.e("ODAutoMLImgLabelerTask", "On device AutoML Image Labeler is not initialized.");
            throw new FirebaseMLException("Image labeler not initialized.", 13);
        } else if (zzqpVar.zzbay.getBitmap() == null) {
            Log.e("ODAutoMLImgLabelerTask", "No image data found.");
            throw new FirebaseMLException("No image data found.", 3);
        } else {
            try {
                IObjectWrapper wrap = ObjectWrapper.wrap(zzqpVar.zzbay.getBitmap());
                IOnDeviceAutoMLImageLabeler iOnDeviceAutoMLImageLabeler = this.zzbdb;
                Frame.Metadata metadata = zzqpVar.zzbay.getMetadata();
                com.google.firebase.p021ml.vision.automl.internal.zzf[] zza = iOnDeviceAutoMLImageLabeler.zza(wrap, new zzh(metadata.getWidth(), metadata.getHeight(), metadata.getId(), metadata.getTimestampMillis(), metadata.getRotation()));
                zza(zzmc.NO_ERROR, elapsedRealtime, z, zzqpVar);
                if (zza == null) {
                    return zzlh.zzih();
                }
                ArrayList arrayList = new ArrayList();
                for (com.google.firebase.p021ml.vision.automl.internal.zzf zzfVar : zza) {
                    arrayList.add(FirebaseVisionImageLabel.zza(zzfVar));
                }
                zzaxr.set(false);
                return arrayList;
            } catch (RemoteException e) {
                zza(zzmc.UNKNOWN_ERROR, elapsedRealtime, z, zzqpVar);
                Log.e("ODAutoMLImgLabelerTask", "Error calling on device auto ml inference.", e);
                throw new FirebaseMLException("Cannot run on device automl image labeler.", 13, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void zzln() throws FirebaseMLException {
        try {
            try {
                try {
                    if (this.zzbdb == null) {
                        com.google.firebase.p021ml.vision.automl.internal.zza asInterface = com.google.firebase.p021ml.vision.automl.internal.zzd.asInterface(DynamiteModule.load(this.firebaseApp.getApplicationContext(), DynamiteModule.PREFER_LOCAL, "com.google.firebase.ml.vision.dynamite.automl").instantiate("com.google.firebase.ml.vision.automl.OnDeviceAutoMLImageLabelerCreator"));
                        if (asInterface == null) {
                            Log.e("ODAutoMLImgLabelerTask", "Error when creating on device AutoML Image Labeler creator.");
                            throw new FirebaseMLException("Can not create on device AutoML Image Labeler.", 14);
                        }
                        IObjectWrapper wrap = ObjectWrapper.wrap(this.firebaseApp);
                        FirebaseVisionOnDeviceAutoMLImageLabelerOptions firebaseVisionOnDeviceAutoMLImageLabelerOptions = this.zzbda;
                        this.zzbdb = asInterface.newOnDeviceAutoMLImageLabeler(wrap, new OnDeviceAutoMLImageLabelerOptionsParcel(firebaseVisionOnDeviceAutoMLImageLabelerOptions.getConfidenceThreshold(), firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmv(), firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmw()));
                    }
                    try {
                        this.zzbdb.zzln();
                        this.zzaxu.set(this.zzbdb.zzlw());
                    } catch (RemoteException e) {
                        Log.e("ODAutoMLImgLabelerTask", "Error while loading the AutoML image labeling model.", e);
                        throw new FirebaseMLException("Cannot load the AutoML image labeling model.", 14, e);
                    }
                } catch (DynamiteModule.LoadingException e2) {
                    Log.e("ODAutoMLImgLabelerTask", "Error when loading automl module.", e2);
                    throw new FirebaseMLException("Cannot load automl module. Please add dependency firebase-ml-vision-automl.", 14);
                }
            } catch (RemoteException e3) {
                Log.e("ODAutoMLImgLabelerTask", "Error when creating on device AutoML Image Labeler.", e3);
                throw new FirebaseMLException("Can not create on device AutoML Image Labeler.", 14, e3);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final void release() {
        try {
            IOnDeviceAutoMLImageLabeler iOnDeviceAutoMLImageLabeler = this.zzbdb;
            if (iOnDeviceAutoMLImageLabeler != null) {
                iOnDeviceAutoMLImageLabeler.close();
            }
            zzaxr.set(true);
        } catch (RemoteException e) {
            Log.e("ODAutoMLImgLabelerTask", "Error closing on device AutoML Image Labeler", e);
        }
    }

    private final void zza(final zzmc zzmcVar, final long j, final boolean z, final zzqp zzqpVar) {
        this.zzavr.zza(new zzny(this, j, zzmcVar, zzqpVar, z) { // from class: com.google.android.gms.internal.firebase_ml.zzqy
            private final long zzaxy;
            private final boolean zzayb;
            private final zzmc zzbab;
            private final zzqp zzbac;
            private final zzqw zzbdc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzbdc = this;
                this.zzaxy = j;
                this.zzbab = zzmcVar;
                this.zzbac = zzqpVar;
                this.zzayb = z;
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzny
            public final zzlu.zzs.zza zzlo() {
                return this.zzbdc.zza(this.zzaxy, this.zzbab, this.zzbac, this.zzayb);
            }
        }, zzmd.AUTOML_IMAGE_LABELING_RUN);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzlu.zzs.zza zza(long j, zzmc zzmcVar, zzqp zzqpVar, boolean z) {
        FirebaseRemoteModel firebaseRemoteModel;
        zzlu.zzb.zza zza = zzlu.zzb.zzil().zza(zzlu.zzu.zzjp().zzk(SystemClock.elapsedRealtime() - j).zzd(zzmcVar).zzp(zzaxr.get()).zzq(true).zzr(true)).zza(zzqm.zzc(zzqpVar));
        if (z && (firebaseRemoteModel = this.zzavo) != null) {
            zza.zza(zzox.zza(firebaseRemoteModel, zzor.AUTOML));
        } else {
            FirebaseLocalModel firebaseLocalModel = this.zzaui;
            if (firebaseLocalModel != null) {
                zza.zza(firebaseLocalModel.zza(zzor.AUTOML));
            }
        }
        return zzlu.zzs.zzjl().zza(zza);
    }
}

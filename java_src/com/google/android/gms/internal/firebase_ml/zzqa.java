package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.vision.barcode.Barcode;
import com.google.android.gms.vision.barcode.BarcodeDetector;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.common.FirebaseMLException;
import com.google.firebase.p021ml.vision.barcode.FirebaseVisionBarcode;
import com.google.firebase.p021ml.vision.barcode.FirebaseVisionBarcodeDetectorOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class zzqa implements zzno<List<FirebaseVisionBarcode>, zzqp>, zznx {
    private static boolean zzazs = true;
    private final Context zzauh;
    private final zznv zzavr;
    private final FirebaseVisionBarcodeDetectorOptions zzazt;
    private BarcodeDetector zzazu;
    private zzqk zzazv = new zzqk();

    public zzqa(FirebaseApp firebaseApp, FirebaseVisionBarcodeDetectorOptions firebaseVisionBarcodeDetectorOptions) {
        Preconditions.checkNotNull(firebaseApp, "FirebaseApp can not be null");
        Preconditions.checkNotNull(firebaseVisionBarcodeDetectorOptions, "FirebaseVisionBarcodeDetectorOptions can not be null");
        this.zzauh = firebaseApp.getApplicationContext();
        this.zzazt = firebaseVisionBarcodeDetectorOptions;
        this.zzavr = zznv.zza(firebaseApp, 1);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final zznx zzll() {
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void zzln() {
        if (this.zzazu == null) {
            this.zzazu = new BarcodeDetector.Builder(this.zzauh).setBarcodeFormats(this.zzazt.zznh()).build();
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void release() {
        BarcodeDetector barcodeDetector = this.zzazu;
        if (barcodeDetector != null) {
            barcodeDetector.release();
            this.zzazu = null;
        }
        zzazs = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final synchronized List<FirebaseVisionBarcode> zza(zzqp zzqpVar) throws FirebaseMLException {
        ArrayList arrayList;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        BarcodeDetector barcodeDetector = this.zzazu;
        if (barcodeDetector == null) {
            zza(zzmc.UNKNOWN_ERROR, elapsedRealtime, zzqpVar, (List<FirebaseVisionBarcode>) null);
            throw new FirebaseMLException("Model source is unavailable. Please load the model resource first.", 13);
        } else if (!barcodeDetector.isOperational()) {
            zza(zzmc.MODEL_NOT_DOWNLOADED, elapsedRealtime, zzqpVar, (List<FirebaseVisionBarcode>) null);
            throw new FirebaseMLException("Waiting for the barcode detection model to be downloaded. Please wait.", 14);
        } else {
            this.zzazv.zzb(zzqpVar);
            SparseArray<Barcode> detect = this.zzazu.detect(zzqpVar.zzbay);
            arrayList = new ArrayList();
            for (int i = 0; i < detect.size(); i++) {
                Barcode barcode = detect.get(detect.keyAt(i));
                if (barcode != null) {
                    arrayList.add(new FirebaseVisionBarcode(barcode));
                }
            }
            zza(zzmc.NO_ERROR, elapsedRealtime, zzqpVar, arrayList);
            zzazs = false;
        }
        return arrayList;
    }

    private final void zza(final zzmc zzmcVar, final long j, final zzqp zzqpVar, final List<FirebaseVisionBarcode> list) {
        this.zzavr.zza(new zzny(this, j, zzmcVar, zzqpVar, list) { // from class: com.google.android.gms.internal.firebase_ml.zzqb
            private final long zzaxy;
            private final zzqa zzbaa;
            private final zzmc zzbab;
            private final zzqp zzbac;
            private final List zzbad;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzbaa = this;
                this.zzaxy = j;
                this.zzbab = zzmcVar;
                this.zzbac = zzqpVar;
                this.zzbad = list;
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzny
            public final zzlu.zzs.zza zzlo() {
                return this.zzbaa.zza(this.zzaxy, this.zzbab, this.zzbac, this.zzbad);
            }
        }, zzmd.ON_DEVICE_BARCODE_DETECT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzlu.zzs.zza zza(long j, zzmc zzmcVar, zzqp zzqpVar, List list) {
        zzlu.zzaa.zzc zzc = zzlu.zzaa.zzkd().zzd(zzlu.zzu.zzjp().zzk(SystemClock.elapsedRealtime() - j).zzd(zzmcVar).zzp(zzazs).zzq(true).zzr(true)).zzb(this.zzazt.zzni()).zzc(zzqm.zzc(zzqpVar));
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                FirebaseVisionBarcode firebaseVisionBarcode = (FirebaseVisionBarcode) it.next();
                arrayList.add(firebaseVisionBarcode.zznf());
                arrayList2.add(firebaseVisionBarcode.zzng());
            }
            zzc.zzn(arrayList).zzo(arrayList2);
        }
        return zzlu.zzs.zzjl().zza(zzc);
    }
}

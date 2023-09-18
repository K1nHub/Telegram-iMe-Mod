package com.google.firebase.p020ml.vision.barcode;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.firebase_ml.zzrl;
import com.google.android.gms.internal.firebase_ml.zztc;
import com.google.android.gms.internal.firebase_ml.zzuu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.firebase.ml.vision.barcode.FirebaseVisionBarcodeDetectorOptions */
/* loaded from: classes4.dex */
public class FirebaseVisionBarcodeDetectorOptions {
    private static final Map<Integer, zztc> zzazk;
    private final int zzazr;

    public final int zznh() {
        return this.zzazr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof FirebaseVisionBarcodeDetectorOptions) && this.zzazr == ((FirebaseVisionBarcodeDetectorOptions) obj).zzazr;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zzazr));
    }

    public final zzrl.zza zzni() {
        ArrayList arrayList = new ArrayList();
        if (this.zzazr == 0) {
            arrayList.addAll(zzazk.values());
        } else {
            for (Map.Entry<Integer, zztc> entry : zzazk.entrySet()) {
                if ((this.zzazr & entry.getKey().intValue()) != 0) {
                    arrayList.add(entry.getValue());
                }
            }
        }
        return (zzrl.zza) ((zzuu) zzrl.zza.zzom().zzu(arrayList).zzrq());
    }

    static {
        HashMap hashMap = new HashMap();
        zzazk = hashMap;
        hashMap.put(1, zztc.CODE_128);
        hashMap.put(2, zztc.CODE_39);
        hashMap.put(4, zztc.CODE_93);
        hashMap.put(8, zztc.CODABAR);
        hashMap.put(16, zztc.DATA_MATRIX);
        hashMap.put(32, zztc.EAN_13);
        hashMap.put(64, zztc.EAN_8);
        hashMap.put(128, zztc.ITF);
        hashMap.put(256, zztc.QR_CODE);
        hashMap.put(512, zztc.UPC_A);
        hashMap.put(1024, zztc.UPC_E);
        hashMap.put(2048, zztc.PDF417);
        hashMap.put(4096, zztc.AZTEC);
    }
}

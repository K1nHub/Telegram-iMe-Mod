package com.google.firebase.p020ml.vision.barcode;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.vision.barcode.Barcode;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.firebase.ml.vision.barcode.FirebaseVisionBarcode */
/* loaded from: classes4.dex */
public class FirebaseVisionBarcode {
    private static final Map<Integer, zzlu.zzaa.zza> zzazk;
    private static final Map<Integer, zzlu.zzaa.zzb> zzazl;
    private final Barcode zzazm;

    public FirebaseVisionBarcode(Barcode barcode) {
        this.zzazm = (Barcode) Preconditions.checkNotNull(barcode);
    }

    public int getFormat() {
        int i = this.zzazm.format;
        if (i > 4096 || i == 0) {
            return -1;
        }
        return i;
    }

    public int getValueType() {
        return this.zzazm.valueFormat;
    }

    public final zzlu.zzaa.zza zznf() {
        zzlu.zzaa.zza zzaVar = zzazk.get(Integer.valueOf(getFormat()));
        return zzaVar == null ? zzlu.zzaa.zza.FORMAT_UNKNOWN : zzaVar;
    }

    public final zzlu.zzaa.zzb zzng() {
        zzlu.zzaa.zzb zzbVar = zzazl.get(Integer.valueOf(getValueType()));
        return zzbVar == null ? zzlu.zzaa.zzb.TYPE_UNKNOWN : zzbVar;
    }

    static {
        HashMap hashMap = new HashMap();
        zzazk = hashMap;
        HashMap hashMap2 = new HashMap();
        zzazl = hashMap2;
        hashMap.put(-1, zzlu.zzaa.zza.FORMAT_UNKNOWN);
        hashMap.put(1, zzlu.zzaa.zza.FORMAT_CODE_128);
        hashMap.put(2, zzlu.zzaa.zza.FORMAT_CODE_39);
        hashMap.put(4, zzlu.zzaa.zza.FORMAT_CODE_93);
        hashMap.put(8, zzlu.zzaa.zza.FORMAT_CODABAR);
        hashMap.put(16, zzlu.zzaa.zza.FORMAT_DATA_MATRIX);
        hashMap.put(32, zzlu.zzaa.zza.FORMAT_EAN_13);
        hashMap.put(64, zzlu.zzaa.zza.FORMAT_EAN_8);
        hashMap.put(128, zzlu.zzaa.zza.FORMAT_ITF);
        hashMap.put(256, zzlu.zzaa.zza.FORMAT_QR_CODE);
        hashMap.put(512, zzlu.zzaa.zza.FORMAT_UPC_A);
        hashMap.put(1024, zzlu.zzaa.zza.FORMAT_UPC_E);
        hashMap.put(2048, zzlu.zzaa.zza.FORMAT_PDF417);
        hashMap.put(4096, zzlu.zzaa.zza.FORMAT_AZTEC);
        hashMap2.put(0, zzlu.zzaa.zzb.TYPE_UNKNOWN);
        hashMap2.put(1, zzlu.zzaa.zzb.TYPE_CONTACT_INFO);
        hashMap2.put(2, zzlu.zzaa.zzb.TYPE_EMAIL);
        hashMap2.put(3, zzlu.zzaa.zzb.TYPE_ISBN);
        hashMap2.put(4, zzlu.zzaa.zzb.TYPE_PHONE);
        hashMap2.put(5, zzlu.zzaa.zzb.TYPE_PRODUCT);
        hashMap2.put(6, zzlu.zzaa.zzb.TYPE_SMS);
        hashMap2.put(7, zzlu.zzaa.zzb.TYPE_TEXT);
        hashMap2.put(8, zzlu.zzaa.zzb.TYPE_URL);
        hashMap2.put(9, zzlu.zzaa.zzb.TYPE_WIFI);
        hashMap2.put(10, zzlu.zzaa.zzb.TYPE_GEO);
        hashMap2.put(11, zzlu.zzaa.zzb.TYPE_CALENDAR_EVENT);
        hashMap2.put(12, zzlu.zzaa.zzb.TYPE_DRIVER_LICENSE);
    }
}

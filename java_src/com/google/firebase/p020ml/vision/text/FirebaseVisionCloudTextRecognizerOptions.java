package com.google.firebase.p020ml.vision.text;

import com.google.android.gms.common.internal.Objects;
import java.util.List;
/* renamed from: com.google.firebase.ml.vision.text.FirebaseVisionCloudTextRecognizerOptions */
/* loaded from: classes3.dex */
public class FirebaseVisionCloudTextRecognizerOptions {
    private final boolean zzazz;
    private final List<String> zzbbl;
    private final int zzbdp;

    public List<String> getHintedLanguages() {
        return this.zzbbl;
    }

    public final boolean isEnforceCertFingerprintMatch() {
        return this.zzazz;
    }

    public int getModelType() {
        return this.zzbdp;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseVisionCloudTextRecognizerOptions) {
            FirebaseVisionCloudTextRecognizerOptions firebaseVisionCloudTextRecognizerOptions = (FirebaseVisionCloudTextRecognizerOptions) obj;
            return this.zzbbl.equals(firebaseVisionCloudTextRecognizerOptions.getHintedLanguages()) && this.zzbdp == firebaseVisionCloudTextRecognizerOptions.zzbdp && this.zzazz == firebaseVisionCloudTextRecognizerOptions.zzazz;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.zzbbl, Integer.valueOf(this.zzbdp), Boolean.valueOf(this.zzazz));
    }
}

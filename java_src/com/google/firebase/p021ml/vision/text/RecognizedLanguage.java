package com.google.firebase.p021ml.vision.text;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.firebase_ml.zzjb;
/* renamed from: com.google.firebase.ml.vision.text.RecognizedLanguage */
/* loaded from: classes3.dex */
public class RecognizedLanguage {
    private final String languageCode;

    public String getLanguageCode() {
        return this.languageCode;
    }

    private RecognizedLanguage(String str) {
        this.languageCode = str;
    }

    public static RecognizedLanguage zza(zzjb zzjbVar) {
        if (zzjbVar == null || zzjbVar.getLanguageCode() == null || zzjbVar.getLanguageCode().isEmpty()) {
            return null;
        }
        return new RecognizedLanguage(zzjbVar.getLanguageCode());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RecognizedLanguage) {
            RecognizedLanguage recognizedLanguage = (RecognizedLanguage) obj;
            String str = this.languageCode;
            if (str == null) {
                return recognizedLanguage.languageCode == null;
            }
            return str.equals(recognizedLanguage.languageCode);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.languageCode);
    }
}

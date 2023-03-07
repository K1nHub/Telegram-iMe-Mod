package com.smedialink.storage.data.network.model.response.translate;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TranslationResponse.kt */
/* loaded from: classes3.dex */
public final class TranslationResponse {
    private final String detectedSourceLanguage;
    private final String translatedText;

    public static /* synthetic */ TranslationResponse copy$default(TranslationResponse translationResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = translationResponse.translatedText;
        }
        if ((i & 2) != 0) {
            str2 = translationResponse.detectedSourceLanguage;
        }
        return translationResponse.copy(str, str2);
    }

    public final String component1() {
        return this.translatedText;
    }

    public final String component2() {
        return this.detectedSourceLanguage;
    }

    public final TranslationResponse copy(String translatedText, String detectedSourceLanguage) {
        Intrinsics.checkNotNullParameter(translatedText, "translatedText");
        Intrinsics.checkNotNullParameter(detectedSourceLanguage, "detectedSourceLanguage");
        return new TranslationResponse(translatedText, detectedSourceLanguage);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TranslationResponse) {
            TranslationResponse translationResponse = (TranslationResponse) obj;
            return Intrinsics.areEqual(this.translatedText, translationResponse.translatedText) && Intrinsics.areEqual(this.detectedSourceLanguage, translationResponse.detectedSourceLanguage);
        }
        return false;
    }

    public int hashCode() {
        return (this.translatedText.hashCode() * 31) + this.detectedSourceLanguage.hashCode();
    }

    public String toString() {
        return "TranslationResponse(translatedText=" + this.translatedText + ", detectedSourceLanguage=" + this.detectedSourceLanguage + ')';
    }

    public TranslationResponse(String translatedText, String detectedSourceLanguage) {
        Intrinsics.checkNotNullParameter(translatedText, "translatedText");
        Intrinsics.checkNotNullParameter(detectedSourceLanguage, "detectedSourceLanguage");
        this.translatedText = translatedText;
        this.detectedSourceLanguage = detectedSourceLanguage;
    }

    public final String getTranslatedText() {
        return this.translatedText;
    }

    public final String getDetectedSourceLanguage() {
        return this.detectedSourceLanguage;
    }
}

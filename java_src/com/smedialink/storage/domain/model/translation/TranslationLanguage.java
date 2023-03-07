package com.smedialink.storage.domain.model.translation;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TranslationLanguage.kt */
/* loaded from: classes3.dex */
public final class TranslationLanguage {
    private final String languageCode;

    public static /* synthetic */ TranslationLanguage copy$default(TranslationLanguage translationLanguage, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = translationLanguage.languageCode;
        }
        return translationLanguage.copy(str);
    }

    public final String component1() {
        return this.languageCode;
    }

    public final TranslationLanguage copy(String languageCode) {
        Intrinsics.checkNotNullParameter(languageCode, "languageCode");
        return new TranslationLanguage(languageCode);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TranslationLanguage) && Intrinsics.areEqual(this.languageCode, ((TranslationLanguage) obj).languageCode);
    }

    public int hashCode() {
        return this.languageCode.hashCode();
    }

    public String toString() {
        return "TranslationLanguage(languageCode=" + this.languageCode + ')';
    }

    public TranslationLanguage(String languageCode) {
        Intrinsics.checkNotNullParameter(languageCode, "languageCode");
        this.languageCode = languageCode;
    }

    public final String getLanguageCode() {
        return this.languageCode;
    }
}

package com.iMe.model.translation;

import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3419R;
/* compiled from: TranslationLanguageUiModel.kt */
/* loaded from: classes3.dex */
public final class TranslationLanguageUiModel {
    public static final Companion Companion = new Companion(null);
    private final String displayLanguage;
    private final String languageCode;

    public static /* synthetic */ TranslationLanguageUiModel copy$default(TranslationLanguageUiModel translationLanguageUiModel, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = translationLanguageUiModel.languageCode;
        }
        if ((i & 2) != 0) {
            str2 = translationLanguageUiModel.displayLanguage;
        }
        return translationLanguageUiModel.copy(str, str2);
    }

    public final String component1() {
        return this.languageCode;
    }

    public final String component2() {
        return this.displayLanguage;
    }

    public final TranslationLanguageUiModel copy(String str, String displayLanguage) {
        Intrinsics.checkNotNullParameter(displayLanguage, "displayLanguage");
        return new TranslationLanguageUiModel(str, displayLanguage);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TranslationLanguageUiModel) {
            TranslationLanguageUiModel translationLanguageUiModel = (TranslationLanguageUiModel) obj;
            return Intrinsics.areEqual(this.languageCode, translationLanguageUiModel.languageCode) && Intrinsics.areEqual(this.displayLanguage, translationLanguageUiModel.displayLanguage);
        }
        return false;
    }

    public int hashCode() {
        String str = this.languageCode;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.displayLanguage.hashCode();
    }

    public String toString() {
        return "TranslationLanguageUiModel(languageCode=" + this.languageCode + ", displayLanguage=" + this.displayLanguage + ')';
    }

    public TranslationLanguageUiModel(String str, String displayLanguage) {
        Intrinsics.checkNotNullParameter(displayLanguage, "displayLanguage");
        this.languageCode = str;
        this.displayLanguage = displayLanguage;
    }

    public final String getLanguageCode() {
        return this.languageCode;
    }

    public final String getDisplayLanguage() {
        return this.displayLanguage;
    }

    public final boolean isAutoDetection() {
        return this.languageCode == null;
    }

    /* compiled from: TranslationLanguageUiModel.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TranslationLanguageUiModel getAutoDetectionLanguage(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            return new TranslationLanguageUiModel(null, resourceManager.getString(C3419R.string.translation_dialog_auto_language));
        }

        public final TranslationLanguageUiModel createByLangCode(String languageCode, String displayLangCode) {
            Intrinsics.checkNotNullParameter(languageCode, "languageCode");
            Intrinsics.checkNotNullParameter(displayLangCode, "displayLangCode");
            String displayLanguage = new Locale(languageCode).getDisplayLanguage(new Locale(displayLangCode));
            Intrinsics.checkNotNullExpressionValue(displayLanguage, "Locale(languageCode).get…(Locale(displayLangCode))");
            return new TranslationLanguageUiModel(languageCode, displayLanguage);
        }
    }
}

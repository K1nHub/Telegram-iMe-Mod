package com.iMe.mapper.translation;

import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.storage.domain.model.translation.TranslationLanguage;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TranslationUiMapping.kt */
/* loaded from: classes3.dex */
public final class TranslationUiMappingKt {
    public static final TranslationLanguageUiModel mapToUI(TranslationLanguage translationLanguage, String currentLangCode) {
        Intrinsics.checkNotNullParameter(translationLanguage, "<this>");
        Intrinsics.checkNotNullParameter(currentLangCode, "currentLangCode");
        String languageCode = translationLanguage.getLanguageCode();
        String displayLanguage = new Locale(translationLanguage.getLanguageCode()).getDisplayLanguage(new Locale(currentLangCode));
        Intrinsics.checkNotNullExpressionValue(displayLanguage, "Locale(languageCode).get…(Locale(currentLangCode))");
        return new TranslationLanguageUiModel(languageCode, displayLanguage);
    }
}

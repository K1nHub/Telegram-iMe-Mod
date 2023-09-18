package com.iMe.storage.data.network.model.response.translate;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TranslationLanguagesResponse.kt */
/* loaded from: classes4.dex */
public final class TranslationLanguagesResponse {
    private final List<String> languageCodes;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TranslationLanguagesResponse copy$default(TranslationLanguagesResponse translationLanguagesResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = translationLanguagesResponse.languageCodes;
        }
        return translationLanguagesResponse.copy(list);
    }

    public final List<String> component1() {
        return this.languageCodes;
    }

    public final TranslationLanguagesResponse copy(List<String> languageCodes) {
        Intrinsics.checkNotNullParameter(languageCodes, "languageCodes");
        return new TranslationLanguagesResponse(languageCodes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TranslationLanguagesResponse) && Intrinsics.areEqual(this.languageCodes, ((TranslationLanguagesResponse) obj).languageCodes);
    }

    public int hashCode() {
        return this.languageCodes.hashCode();
    }

    public String toString() {
        return "TranslationLanguagesResponse(languageCodes=" + this.languageCodes + ')';
    }

    public TranslationLanguagesResponse(List<String> languageCodes) {
        Intrinsics.checkNotNullParameter(languageCodes, "languageCodes");
        this.languageCodes = languageCodes;
    }

    public final List<String> getLanguageCodes() {
        return this.languageCodes;
    }
}

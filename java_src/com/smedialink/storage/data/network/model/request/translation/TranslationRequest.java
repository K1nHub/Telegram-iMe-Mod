package com.smedialink.storage.data.network.model.request.translation;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TranslationRequest.kt */
/* loaded from: classes3.dex */
public final class TranslationRequest {
    private final String sourceLanguage;
    private final String targetLanguage;
    private final String text;

    public static /* synthetic */ TranslationRequest copy$default(TranslationRequest translationRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = translationRequest.text;
        }
        if ((i & 2) != 0) {
            str2 = translationRequest.targetLanguage;
        }
        if ((i & 4) != 0) {
            str3 = translationRequest.sourceLanguage;
        }
        return translationRequest.copy(str, str2, str3);
    }

    public final String component1() {
        return this.text;
    }

    public final String component2() {
        return this.targetLanguage;
    }

    public final String component3() {
        return this.sourceLanguage;
    }

    public final TranslationRequest copy(String text, String targetLanguage, String str) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(targetLanguage, "targetLanguage");
        return new TranslationRequest(text, targetLanguage, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TranslationRequest) {
            TranslationRequest translationRequest = (TranslationRequest) obj;
            return Intrinsics.areEqual(this.text, translationRequest.text) && Intrinsics.areEqual(this.targetLanguage, translationRequest.targetLanguage) && Intrinsics.areEqual(this.sourceLanguage, translationRequest.sourceLanguage);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.text.hashCode() * 31) + this.targetLanguage.hashCode()) * 31;
        String str = this.sourceLanguage;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "TranslationRequest(text=" + this.text + ", targetLanguage=" + this.targetLanguage + ", sourceLanguage=" + this.sourceLanguage + ')';
    }

    public TranslationRequest(String text, String targetLanguage, String str) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(targetLanguage, "targetLanguage");
        this.text = text;
        this.targetLanguage = targetLanguage;
        this.sourceLanguage = str;
    }

    public /* synthetic */ TranslationRequest(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3);
    }

    public final String getText() {
        return this.text;
    }

    public final String getTargetLanguage() {
        return this.targetLanguage;
    }

    public final String getSourceLanguage() {
        return this.sourceLanguage;
    }
}

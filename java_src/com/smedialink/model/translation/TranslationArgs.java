package com.smedialink.model.translation;

import com.smedialink.storage.domain.model.dialogs.DialogTranslationSettings;
import kotlin.jvm.internal.Intrinsics;
import org.fork.enums.TranslationDialogType;
/* compiled from: TranslationArgs.kt */
/* loaded from: classes3.dex */
public final class TranslationArgs {
    private String textToTranslate;
    private final DialogTranslationSettings translationSettings;
    private final TranslationDialogType type;

    public static /* synthetic */ TranslationArgs copy$default(TranslationArgs translationArgs, TranslationDialogType translationDialogType, String str, DialogTranslationSettings dialogTranslationSettings, int i, Object obj) {
        if ((i & 1) != 0) {
            translationDialogType = translationArgs.type;
        }
        if ((i & 2) != 0) {
            str = translationArgs.textToTranslate;
        }
        if ((i & 4) != 0) {
            dialogTranslationSettings = translationArgs.translationSettings;
        }
        return translationArgs.copy(translationDialogType, str, dialogTranslationSettings);
    }

    public final TranslationDialogType component1() {
        return this.type;
    }

    public final String component2() {
        return this.textToTranslate;
    }

    public final DialogTranslationSettings component3() {
        return this.translationSettings;
    }

    public final TranslationArgs copy(TranslationDialogType type, String textToTranslate, DialogTranslationSettings dialogTranslationSettings) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(textToTranslate, "textToTranslate");
        return new TranslationArgs(type, textToTranslate, dialogTranslationSettings);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TranslationArgs) {
            TranslationArgs translationArgs = (TranslationArgs) obj;
            return this.type == translationArgs.type && Intrinsics.areEqual(this.textToTranslate, translationArgs.textToTranslate) && Intrinsics.areEqual(this.translationSettings, translationArgs.translationSettings);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.type.hashCode() * 31) + this.textToTranslate.hashCode()) * 31;
        DialogTranslationSettings dialogTranslationSettings = this.translationSettings;
        return hashCode + (dialogTranslationSettings == null ? 0 : dialogTranslationSettings.hashCode());
    }

    public String toString() {
        return "TranslationArgs(type=" + this.type + ", textToTranslate=" + this.textToTranslate + ", translationSettings=" + this.translationSettings + ')';
    }

    public TranslationArgs(TranslationDialogType type, String textToTranslate, DialogTranslationSettings dialogTranslationSettings) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(textToTranslate, "textToTranslate");
        this.type = type;
        this.textToTranslate = textToTranslate;
        this.translationSettings = dialogTranslationSettings;
    }

    public final TranslationDialogType getType() {
        return this.type;
    }

    public final String getTextToTranslate() {
        return this.textToTranslate;
    }

    public final void setTextToTranslate(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.textToTranslate = str;
    }

    public final DialogTranslationSettings getTranslationSettings() {
        return this.translationSettings;
    }

    public final String getLangCodeByType() {
        if (this.type == TranslationDialogType.INCOMING) {
            DialogTranslationSettings dialogTranslationSettings = this.translationSettings;
            if (dialogTranslationSettings == null) {
                return null;
            }
            return dialogTranslationSettings.getInTextTranslateLangCode();
        }
        DialogTranslationSettings dialogTranslationSettings2 = this.translationSettings;
        if (dialogTranslationSettings2 == null) {
            return null;
        }
        return dialogTranslationSettings2.getOutTextTranslateLangCode();
    }
}

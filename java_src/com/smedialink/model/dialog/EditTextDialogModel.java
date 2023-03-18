package com.smedialink.model.dialog;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EditTextDialogModel.kt */
/* loaded from: classes3.dex */
public final class EditTextDialogModel {
    private final String hint;
    private final String negativeButtonText;
    private final String positiveButtonText;
    private final String presetText;
    private final boolean shouldHideKeyboardOnDismiss;
    private final String subtitle;
    private final String title;

    public static /* synthetic */ EditTextDialogModel copy$default(EditTextDialogModel editTextDialogModel, String str, String str2, String str3, String str4, boolean z, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = editTextDialogModel.title;
        }
        if ((i & 2) != 0) {
            str2 = editTextDialogModel.subtitle;
        }
        String str7 = str2;
        if ((i & 4) != 0) {
            str3 = editTextDialogModel.hint;
        }
        String str8 = str3;
        if ((i & 8) != 0) {
            str4 = editTextDialogModel.presetText;
        }
        String str9 = str4;
        if ((i & 16) != 0) {
            z = editTextDialogModel.shouldHideKeyboardOnDismiss;
        }
        boolean z2 = z;
        if ((i & 32) != 0) {
            str5 = editTextDialogModel.negativeButtonText;
        }
        String str10 = str5;
        if ((i & 64) != 0) {
            str6 = editTextDialogModel.positiveButtonText;
        }
        return editTextDialogModel.copy(str, str7, str8, str9, z2, str10, str6);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.subtitle;
    }

    public final String component3() {
        return this.hint;
    }

    public final String component4() {
        return this.presetText;
    }

    public final boolean component5() {
        return this.shouldHideKeyboardOnDismiss;
    }

    public final String component6() {
        return this.negativeButtonText;
    }

    public final String component7() {
        return this.positiveButtonText;
    }

    public final EditTextDialogModel copy(String str, String str2, String str3, String str4, boolean z, String str5, String str6) {
        return new EditTextDialogModel(str, str2, str3, str4, z, str5, str6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EditTextDialogModel) {
            EditTextDialogModel editTextDialogModel = (EditTextDialogModel) obj;
            return Intrinsics.areEqual(this.title, editTextDialogModel.title) && Intrinsics.areEqual(this.subtitle, editTextDialogModel.subtitle) && Intrinsics.areEqual(this.hint, editTextDialogModel.hint) && Intrinsics.areEqual(this.presetText, editTextDialogModel.presetText) && this.shouldHideKeyboardOnDismiss == editTextDialogModel.shouldHideKeyboardOnDismiss && Intrinsics.areEqual(this.negativeButtonText, editTextDialogModel.negativeButtonText) && Intrinsics.areEqual(this.positiveButtonText, editTextDialogModel.positiveButtonText);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.title;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.subtitle;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.hint;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.presetText;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        boolean z = this.shouldHideKeyboardOnDismiss;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode4 + i) * 31;
        String str5 = this.negativeButtonText;
        int hashCode5 = (i2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.positiveButtonText;
        return hashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public String toString() {
        return "EditTextDialogModel(title=" + this.title + ", subtitle=" + this.subtitle + ", hint=" + this.hint + ", presetText=" + this.presetText + ", shouldHideKeyboardOnDismiss=" + this.shouldHideKeyboardOnDismiss + ", negativeButtonText=" + this.negativeButtonText + ", positiveButtonText=" + this.positiveButtonText + ')';
    }

    public EditTextDialogModel(String str, String str2, String str3, String str4, boolean z, String str5, String str6) {
        this.title = str;
        this.subtitle = str2;
        this.hint = str3;
        this.presetText = str4;
        this.shouldHideKeyboardOnDismiss = z;
        this.negativeButtonText = str5;
        this.positiveButtonText = str6;
    }

    public /* synthetic */ EditTextDialogModel(String str, String str2, String str3, String str4, boolean z, String str5, String str6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? true : z, str5, str6);
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getSubtitle() {
        return this.subtitle;
    }

    public final String getHint() {
        return this.hint;
    }

    public final String getPresetText() {
        return this.presetText;
    }

    public final boolean getShouldHideKeyboardOnDismiss() {
        return this.shouldHideKeyboardOnDismiss;
    }

    public final String getNegativeButtonText() {
        return this.negativeButtonText;
    }

    public final String getPositiveButtonText() {
        return this.positiveButtonText;
    }
}

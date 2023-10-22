package com.iMe.model.dialog;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DialogModel.kt */
/* loaded from: classes3.dex */
public final class DialogModel {
    private final String message;
    private final String negativeButtonText;
    private final String positiveButtonText;
    private final String title;

    public DialogModel() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ DialogModel copy$default(DialogModel dialogModel, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = dialogModel.title;
        }
        if ((i & 2) != 0) {
            str2 = dialogModel.message;
        }
        if ((i & 4) != 0) {
            str3 = dialogModel.negativeButtonText;
        }
        if ((i & 8) != 0) {
            str4 = dialogModel.positiveButtonText;
        }
        return dialogModel.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.message;
    }

    public final String component3() {
        return this.negativeButtonText;
    }

    public final String component4() {
        return this.positiveButtonText;
    }

    public final DialogModel copy(String str, String str2, String str3, String str4) {
        return new DialogModel(str, str2, str3, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DialogModel) {
            DialogModel dialogModel = (DialogModel) obj;
            return Intrinsics.areEqual(this.title, dialogModel.title) && Intrinsics.areEqual(this.message, dialogModel.message) && Intrinsics.areEqual(this.negativeButtonText, dialogModel.negativeButtonText) && Intrinsics.areEqual(this.positiveButtonText, dialogModel.positiveButtonText);
        }
        return false;
    }

    public int hashCode() {
        String str = this.title;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.message;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.negativeButtonText;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.positiveButtonText;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "DialogModel(title=" + this.title + ", message=" + this.message + ", negativeButtonText=" + this.negativeButtonText + ", positiveButtonText=" + this.positiveButtonText + ')';
    }

    public DialogModel(String str, String str2, String str3, String str4) {
        this.title = str;
        this.message = str2;
        this.negativeButtonText = str3;
        this.positiveButtonText = str4;
    }

    public /* synthetic */ DialogModel(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4);
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getNegativeButtonText() {
        return this.negativeButtonText;
    }

    public final String getPositiveButtonText() {
        return this.positiveButtonText;
    }
}

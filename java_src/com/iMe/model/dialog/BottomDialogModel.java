package com.iMe.model.dialog;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BottomDialogModel.kt */
/* loaded from: classes3.dex */
public final class BottomDialogModel {
    private final Function0<Unit> buttonAction;
    private final String buttonText;
    private final int icon;
    private final int iconColor;
    private final String message;
    private final String title;

    public static /* synthetic */ BottomDialogModel copy$default(BottomDialogModel bottomDialogModel, int i, int i2, String str, String str2, String str3, Function0 function0, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = bottomDialogModel.icon;
        }
        if ((i3 & 2) != 0) {
            i2 = bottomDialogModel.iconColor;
        }
        int i4 = i2;
        if ((i3 & 4) != 0) {
            str = bottomDialogModel.title;
        }
        String str4 = str;
        if ((i3 & 8) != 0) {
            str2 = bottomDialogModel.message;
        }
        String str5 = str2;
        if ((i3 & 16) != 0) {
            str3 = bottomDialogModel.buttonText;
        }
        String str6 = str3;
        Function0<Unit> function02 = function0;
        if ((i3 & 32) != 0) {
            function02 = bottomDialogModel.buttonAction;
        }
        return bottomDialogModel.copy(i, i4, str4, str5, str6, function02);
    }

    public final int component1() {
        return this.icon;
    }

    public final int component2() {
        return this.iconColor;
    }

    public final String component3() {
        return this.title;
    }

    public final String component4() {
        return this.message;
    }

    public final String component5() {
        return this.buttonText;
    }

    public final Function0<Unit> component6() {
        return this.buttonAction;
    }

    public final BottomDialogModel copy(int i, int i2, String title, String message, String buttonText, Function0<Unit> buttonAction) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(buttonAction, "buttonAction");
        return new BottomDialogModel(i, i2, title, message, buttonText, buttonAction);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BottomDialogModel) {
            BottomDialogModel bottomDialogModel = (BottomDialogModel) obj;
            return this.icon == bottomDialogModel.icon && this.iconColor == bottomDialogModel.iconColor && Intrinsics.areEqual(this.title, bottomDialogModel.title) && Intrinsics.areEqual(this.message, bottomDialogModel.message) && Intrinsics.areEqual(this.buttonText, bottomDialogModel.buttonText) && Intrinsics.areEqual(this.buttonAction, bottomDialogModel.buttonAction);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.icon * 31) + this.iconColor) * 31) + this.title.hashCode()) * 31) + this.message.hashCode()) * 31) + this.buttonText.hashCode()) * 31) + this.buttonAction.hashCode();
    }

    public String toString() {
        return "BottomDialogModel(icon=" + this.icon + ", iconColor=" + this.iconColor + ", title=" + this.title + ", message=" + this.message + ", buttonText=" + this.buttonText + ", buttonAction=" + this.buttonAction + ')';
    }

    public BottomDialogModel(int i, int i2, String title, String message, String buttonText, Function0<Unit> buttonAction) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(buttonAction, "buttonAction");
        this.icon = i;
        this.iconColor = i2;
        this.title = title;
        this.message = message;
        this.buttonText = buttonText;
        this.buttonAction = buttonAction;
    }

    public /* synthetic */ BottomDialogModel(int i, int i2, String str, String str2, String str3, Function0 function0, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i3 & 2) != 0 ? -1 : i2, str, str2, str3, function0);
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getIconColor() {
        return this.iconColor;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final Function0<Unit> getButtonAction() {
        return this.buttonAction;
    }
}

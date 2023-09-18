package com.iMe.model.dialog;

import android.text.SpannableStringBuilder;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AnimatedSpannableDialogModel.kt */
/* loaded from: classes4.dex */
public final class AnimatedSpannableDialogModel {
    private final int animatedIcon;
    private final CharSequence buttonText;
    private final SpannableStringBuilder description;
    private final CharSequence title;

    public static /* synthetic */ AnimatedSpannableDialogModel copy$default(AnimatedSpannableDialogModel animatedSpannableDialogModel, int i, CharSequence charSequence, SpannableStringBuilder spannableStringBuilder, CharSequence charSequence2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = animatedSpannableDialogModel.animatedIcon;
        }
        if ((i2 & 2) != 0) {
            charSequence = animatedSpannableDialogModel.title;
        }
        if ((i2 & 4) != 0) {
            spannableStringBuilder = animatedSpannableDialogModel.description;
        }
        if ((i2 & 8) != 0) {
            charSequence2 = animatedSpannableDialogModel.buttonText;
        }
        return animatedSpannableDialogModel.copy(i, charSequence, spannableStringBuilder, charSequence2);
    }

    public final int component1() {
        return this.animatedIcon;
    }

    public final CharSequence component2() {
        return this.title;
    }

    public final SpannableStringBuilder component3() {
        return this.description;
    }

    public final CharSequence component4() {
        return this.buttonText;
    }

    public final AnimatedSpannableDialogModel copy(int i, CharSequence title, SpannableStringBuilder description, CharSequence buttonText) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        return new AnimatedSpannableDialogModel(i, title, description, buttonText);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AnimatedSpannableDialogModel) {
            AnimatedSpannableDialogModel animatedSpannableDialogModel = (AnimatedSpannableDialogModel) obj;
            return this.animatedIcon == animatedSpannableDialogModel.animatedIcon && Intrinsics.areEqual(this.title, animatedSpannableDialogModel.title) && Intrinsics.areEqual(this.description, animatedSpannableDialogModel.description) && Intrinsics.areEqual(this.buttonText, animatedSpannableDialogModel.buttonText);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.animatedIcon * 31) + this.title.hashCode()) * 31) + this.description.hashCode()) * 31) + this.buttonText.hashCode();
    }

    public String toString() {
        return "AnimatedSpannableDialogModel(animatedIcon=" + this.animatedIcon + ", title=" + ((Object) this.title) + ", description=" + ((Object) this.description) + ", buttonText=" + ((Object) this.buttonText) + ')';
    }

    public AnimatedSpannableDialogModel(int i, CharSequence title, SpannableStringBuilder description, CharSequence buttonText) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        this.animatedIcon = i;
        this.title = title;
        this.description = description;
        this.buttonText = buttonText;
    }

    public final int getAnimatedIcon() {
        return this.animatedIcon;
    }

    public final CharSequence getTitle() {
        return this.title;
    }

    public final SpannableStringBuilder getDescription() {
        return this.description;
    }

    public final CharSequence getButtonText() {
        return this.buttonText;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnimatedSpannableDialogModel(int i, CharSequence title, String description, CharSequence buttonText) {
        this(i, title, new SpannableStringBuilder(description), buttonText);
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
    }
}

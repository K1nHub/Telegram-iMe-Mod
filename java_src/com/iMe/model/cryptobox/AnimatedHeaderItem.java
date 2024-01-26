package com.iMe.model.cryptobox;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AnimatedHeaderItem.kt */
/* loaded from: classes3.dex */
public final class AnimatedHeaderItem extends NoChildNode {
    private final int animationResId;
    private final Button button;
    private final String descriptionText;

    public static /* synthetic */ AnimatedHeaderItem copy$default(AnimatedHeaderItem animatedHeaderItem, int i, String str, Button button, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = animatedHeaderItem.animationResId;
        }
        if ((i2 & 2) != 0) {
            str = animatedHeaderItem.descriptionText;
        }
        if ((i2 & 4) != 0) {
            button = animatedHeaderItem.button;
        }
        return animatedHeaderItem.copy(i, str, button);
    }

    public final int component1() {
        return this.animationResId;
    }

    public final String component2() {
        return this.descriptionText;
    }

    public final Button component3() {
        return this.button;
    }

    public final AnimatedHeaderItem copy(int i, String descriptionText, Button button) {
        Intrinsics.checkNotNullParameter(descriptionText, "descriptionText");
        return new AnimatedHeaderItem(i, descriptionText, button);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AnimatedHeaderItem) {
            AnimatedHeaderItem animatedHeaderItem = (AnimatedHeaderItem) obj;
            return this.animationResId == animatedHeaderItem.animationResId && Intrinsics.areEqual(this.descriptionText, animatedHeaderItem.descriptionText) && Intrinsics.areEqual(this.button, animatedHeaderItem.button);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.animationResId * 31) + this.descriptionText.hashCode()) * 31;
        Button button = this.button;
        return hashCode + (button == null ? 0 : button.hashCode());
    }

    public String toString() {
        return "AnimatedHeaderItem(animationResId=" + this.animationResId + ", descriptionText=" + this.descriptionText + ", button=" + this.button + ')';
    }

    public /* synthetic */ AnimatedHeaderItem(int i, String str, Button button, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i2 & 4) != 0 ? null : button);
    }

    public final int getAnimationResId() {
        return this.animationResId;
    }

    public final String getDescriptionText() {
        return this.descriptionText;
    }

    public final Button getButton() {
        return this.button;
    }

    public AnimatedHeaderItem(int i, String descriptionText, Button button) {
        Intrinsics.checkNotNullParameter(descriptionText, "descriptionText");
        this.animationResId = i;
        this.descriptionText = descriptionText;
        this.button = button;
    }

    /* compiled from: AnimatedHeaderItem.kt */
    /* loaded from: classes3.dex */
    public static final class Button {
        private final Integer iconResId;
        private final String text;

        public static /* synthetic */ Button copy$default(Button button, String str, Integer num, int i, Object obj) {
            if ((i & 1) != 0) {
                str = button.text;
            }
            if ((i & 2) != 0) {
                num = button.iconResId;
            }
            return button.copy(str, num);
        }

        public final String component1() {
            return this.text;
        }

        public final Integer component2() {
            return this.iconResId;
        }

        public final Button copy(String text, Integer num) {
            Intrinsics.checkNotNullParameter(text, "text");
            return new Button(text, num);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Button) {
                Button button = (Button) obj;
                return Intrinsics.areEqual(this.text, button.text) && Intrinsics.areEqual(this.iconResId, button.iconResId);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.text.hashCode() * 31;
            Integer num = this.iconResId;
            return hashCode + (num == null ? 0 : num.hashCode());
        }

        public String toString() {
            return "Button(text=" + this.text + ", iconResId=" + this.iconResId + ')';
        }

        public Button(String text, Integer num) {
            Intrinsics.checkNotNullParameter(text, "text");
            this.text = text;
            this.iconResId = num;
        }

        public /* synthetic */ Button(String str, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : num);
        }

        public final String getText() {
            return this.text;
        }

        public final Integer getIconResId() {
            return this.iconResId;
        }
    }
}

package com.iMe.p031ui.common;

import android.view.View;
import androidx.core.graphics.ColorUtils;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimationProperties;
/* compiled from: ColorBlenderAnimator.kt */
/* renamed from: com.iMe.ui.common.ColorBlenderAnimator */
/* loaded from: classes4.dex */
public final class ColorBlenderAnimator extends AnimationProperties.FloatProperty<View> {
    private float animationValue;
    private final int fromColorKey;
    private final int toColorKey;

    public ColorBlenderAnimator(int i, int i2) {
        super("animationValue");
        this.fromColorKey = i;
        this.toColorKey = i2;
    }

    @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
    public void setValue(View view, float f) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.animationValue = f;
        view.setBackgroundColor(ColorUtils.blendARGB(Theme.getColor(this.fromColorKey), Theme.getColor(this.toColorKey), f));
    }

    @Override // android.util.Property
    public Float get(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return Float.valueOf(this.animationValue);
    }
}

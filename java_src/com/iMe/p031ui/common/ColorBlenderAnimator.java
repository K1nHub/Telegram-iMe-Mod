package com.iMe.p031ui.common;

import android.view.View;
import androidx.core.graphics.ColorUtils;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.AnimationProperties;
/* compiled from: ColorBlenderAnimator.kt */
/* renamed from: com.iMe.ui.common.ColorBlenderAnimator */
/* loaded from: classes3.dex */
public final class ColorBlenderAnimator extends AnimationProperties.FloatProperty<View> {
    private float animationValue;
    private final String fromKey;
    private final String toKey;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorBlenderAnimator(String fromKey, String toKey) {
        super("animationValue");
        Intrinsics.checkNotNullParameter(fromKey, "fromKey");
        Intrinsics.checkNotNullParameter(toKey, "toKey");
        this.fromKey = fromKey;
        this.toKey = toKey;
    }

    @Override // org.telegram.p044ui.Components.AnimationProperties.FloatProperty
    public void setValue(View view, float f) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.animationValue = f;
        view.setBackgroundColor(ColorUtils.blendARGB(Theme.getColor(this.fromKey), Theme.getColor(this.toKey), f));
    }

    @Override // android.util.Property
    public Float get(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return Float.valueOf(this.animationValue);
    }
}

package com.iMe.p031ui.custom;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: CircleTokenView.kt */
/* renamed from: com.iMe.ui.custom.CircleTokenView */
/* loaded from: classes3.dex */
public final class CircleTokenView extends AppCompatImageView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CircleTokenView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ CircleTokenView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleTokenView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void setIconAndColor(int i, int i2) {
        setupView(i2, i);
    }

    private final void setupView(int i, int i2) {
        setScaleType(ImageView.ScaleType.CENTER);
        setImageResource(i2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i);
        setBackground(gradientDrawable);
        ViewCompat.setElevation(this, AndroidUtilities.m51dp(2.0f));
    }
}

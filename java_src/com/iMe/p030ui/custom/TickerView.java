package com.iMe.p030ui.custom;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TickerView.kt */
/* renamed from: com.iMe.ui.custom.TickerView */
/* loaded from: classes3.dex */
public final class TickerView extends AppCompatTextView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ TickerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        setupView();
        setupColors();
    }

    public final void setupColors() {
        setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
    }

    private final void setupView() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(AndroidUtilities.m105dp(2.0f));
        gradientDrawable.setStroke(AndroidUtilities.m105dp(1.0f), Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        setBackground(gradientDrawable);
        setTextSize(9.0f);
        setPadding(AndroidUtilities.m105dp(6.0f), AndroidUtilities.m105dp(2.0f), AndroidUtilities.m105dp(6.0f), AndroidUtilities.m105dp(2.0f));
    }
}

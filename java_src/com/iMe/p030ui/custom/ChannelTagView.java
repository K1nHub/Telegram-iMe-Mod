package com.iMe.p030ui.custom;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ChannelTagView.kt */
/* renamed from: com.iMe.ui.custom.ChannelTagView */
/* loaded from: classes3.dex */
public class ChannelTagView extends AppCompatTextView {
    public /* synthetic */ ChannelTagView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelTagView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        setupView();
    }

    private final void setupView() {
        int i = Theme.key_chats_actionBackground;
        setTextColor(Theme.getColor(i));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(AndroidUtilities.m108dp(2.0f));
        gradientDrawable.setStroke(AndroidUtilities.m108dp(1.0f), Theme.getColor(i));
        setBackground(gradientDrawable);
        setGravity(17);
        setTextSize(1, 10.0f);
        ViewExtKt.setHorizontalPadding(this, 6);
        ViewExtKt.setVerticalPadding(this, 2);
    }
}

package com.iMe.p031ui.shop.view.custom;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: BotCategoryTitleView.kt */
/* renamed from: com.iMe.ui.shop.view.custom.BotCategoryTitleView */
/* loaded from: classes3.dex */
public final class BotCategoryTitleView extends FrameLayout {
    private TextView title;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotCategoryTitleView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        TextView textView = new TextView(context);
        this.title = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.title.setTextSize(2, 16.0f);
        addView(this.title, LayoutHelper.createFrame(-1, -2.0f, 17, 16.0f, (float) BitmapDescriptorFactory.HUE_RED, 16.0f, (float) BitmapDescriptorFactory.HUE_RED));
    }

    public final void setText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.title.setText(text);
    }
}

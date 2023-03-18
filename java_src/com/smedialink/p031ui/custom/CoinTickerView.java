package com.smedialink.p031ui.custom;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: CoinTickerView.kt */
/* renamed from: com.smedialink.ui.custom.CoinTickerView */
/* loaded from: classes3.dex */
public final class CoinTickerView extends AppCompatTextView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CoinTickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ CoinTickerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoinTickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        setupView();
        setupColors();
    }

    public final void setTicker(TokenInfo info, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        setText(resourceManager.getString(info.getShortName()));
    }

    public final void setTicker(String shortName) {
        Intrinsics.checkNotNullParameter(shortName, "shortName");
        setText(shortName);
    }

    public final void setupColors() {
        setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
    }

    private final void setupView() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(AndroidUtilities.m51dp(2.0f));
        gradientDrawable.setStroke(AndroidUtilities.m51dp(1.0f), Theme.getColor("windowBackgroundWhiteGrayText2"));
        setBackground(gradientDrawable);
        setTextSize(9.0f);
        setPadding(AndroidUtilities.m51dp(6.0f), AndroidUtilities.m51dp(2.0f), AndroidUtilities.m51dp(6.0f), AndroidUtilities.m51dp(2.0f));
    }
}

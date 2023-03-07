package com.smedialink.p031ui.custom;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.smedialink.model.wallet.home.HorizontalActionButtonItem;
import com.tbuonomo.viewpagerdotsindicator.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: HorizontalActionButtonsView.kt */
/* renamed from: com.smedialink.ui.custom.HorizontalActionButtonsView */
/* loaded from: classes3.dex */
public final class HorizontalActionButtonsView extends LinearLayout {
    private final List<AppCompatTextView> buttons;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HorizontalActionButtonsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ HorizontalActionButtonsView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalActionButtonsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.buttons = new ArrayList();
        setOrientation(0);
    }

    public final void initButtons(List<HorizontalActionButtonItem> buttonsItems) {
        Intrinsics.checkNotNullParameter(buttonsItems, "buttonsItems");
        removeAllViewsInLayout();
        this.buttons.clear();
        for (final HorizontalActionButtonItem horizontalActionButtonItem : buttonsItems) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            appCompatTextView.setGravity(1);
            Resources resources = appCompatTextView.getResources();
            int i = C3158R.dimen.margin_half_small;
            ViewExtKt.setPaddingHorizontal(appCompatTextView, resources.getDimensionPixelOffset(i));
            ViewExtKt.setPaddingVertical(appCompatTextView, appCompatTextView.getResources().getDimensionPixelOffset(C3158R.dimen.margin_normal_2));
            com.smedialink.utils.extentions.common.ViewExtKt.singleLine(appCompatTextView);
            appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView.setText(LocaleController.getInternalString(horizontalActionButtonItem.getTextRes()));
            appCompatTextView.setTextSize(0, appCompatTextView.getResources().getDimension(C3158R.dimen.text_size_normal));
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, ContextCompat.getDrawable(appCompatTextView.getContext(), horizontalActionButtonItem.getIconRes()), (Drawable) null, (Drawable) null);
            appCompatTextView.setCompoundDrawablePadding(appCompatTextView.getResources().getDimensionPixelOffset(i));
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.custom.HorizontalActionButtonsView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HorizontalActionButtonsView.m1440initButtons$lambda2$lambda1$lambda0(HorizontalActionButtonItem.this, view);
                }
            });
            if (horizontalActionButtonItem.isEnabled()) {
                com.smedialink.utils.extentions.common.ViewExtKt.enable(appCompatTextView);
            } else {
                com.smedialink.utils.extentions.common.ViewExtKt.disable(appCompatTextView);
            }
            this.buttons.add(appCompatTextView);
            setupColors();
            addView(appCompatTextView, new LinearLayout.LayoutParams(0, -2, 1.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initButtons$lambda-2$lambda-1$lambda-0  reason: not valid java name */
    public static final void m1440initButtons$lambda2$lambda1$lambda0(HorizontalActionButtonItem item, View view) {
        Intrinsics.checkNotNullParameter(item, "$item");
        item.getOnClickAction().invoke();
    }

    public final void setupColors() {
        for (AppCompatTextView appCompatTextView : this.buttons) {
            com.smedialink.utils.extentions.common.ViewExtKt.setCompoundDrawablesColor(appCompatTextView, Theme.getColor("dialogIcon"));
            com.smedialink.utils.extentions.common.ViewExtKt.setRippleBackground(appCompatTextView, false);
            appCompatTextView.setTextColor(Theme.getColor("dialogTextBlack"));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.buttons.clear();
    }
}

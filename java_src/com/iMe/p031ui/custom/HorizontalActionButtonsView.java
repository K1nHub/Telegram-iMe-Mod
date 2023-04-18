package com.iMe.p031ui.custom;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.tbuonomo.viewpagerdotsindicator.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: HorizontalActionButtonsView.kt */
/* renamed from: com.iMe.ui.custom.HorizontalActionButtonsView */
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
            int i = C3242R.dimen.margin_half_small;
            ViewExtKt.setPaddingHorizontal(appCompatTextView, resources.getDimensionPixelOffset(i));
            ViewExtKt.setPaddingVertical(appCompatTextView, appCompatTextView.getResources().getDimensionPixelOffset(C3242R.dimen.margin_normal_2));
            com.iMe.utils.extentions.common.ViewExtKt.singleLine(appCompatTextView);
            appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView.setText(horizontalActionButtonItem.getText());
            appCompatTextView.setTextSize(0, appCompatTextView.getResources().getDimension(C3242R.dimen.text_size_normal));
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, horizontalActionButtonItem.getIconResId(), 0, 0);
            appCompatTextView.setCompoundDrawablePadding(appCompatTextView.getResources().getDimensionPixelOffset(i));
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.custom.HorizontalActionButtonsView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HorizontalActionButtonsView.initButtons$lambda$2$lambda$1$lambda$0(HorizontalActionButtonItem.this, view);
                }
            });
            if (horizontalActionButtonItem.isEnabled()) {
                com.iMe.utils.extentions.common.ViewExtKt.enable(appCompatTextView);
            } else {
                com.iMe.utils.extentions.common.ViewExtKt.disable(appCompatTextView);
            }
            this.buttons.add(appCompatTextView);
            setupColors();
            addView(appCompatTextView, new LinearLayout.LayoutParams(0, -2, 1.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initButtons$lambda$2$lambda$1$lambda$0(HorizontalActionButtonItem item, View view) {
        Intrinsics.checkNotNullParameter(item, "$item");
        item.getOnClickAction().invoke();
    }

    public final void setupColors() {
        for (AppCompatTextView appCompatTextView : this.buttons) {
            com.iMe.utils.extentions.common.ViewExtKt.setCompoundDrawablesColor(appCompatTextView, Theme.getColor("dialogIcon"));
            com.iMe.utils.extentions.common.ViewExtKt.setRippleBackground(appCompatTextView, false);
            appCompatTextView.setTextColor(Theme.getColor("dialogTextBlack"));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.buttons.clear();
    }
}

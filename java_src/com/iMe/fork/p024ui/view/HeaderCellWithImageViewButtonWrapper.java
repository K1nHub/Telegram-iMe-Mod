package com.iMe.fork.p024ui.view;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.HeaderCell;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: HeaderCellWithImageViewButtonWrapper.kt */
/* renamed from: com.iMe.fork.ui.view.HeaderCellWithImageViewButtonWrapper */
/* loaded from: classes3.dex */
public final class HeaderCellWithImageViewButtonWrapper extends FrameLayout {
    private final HeaderCell headerCell;
    private final Lazy imageView$delegate;

    public final HeaderCell getHeaderCell() {
        return this.headerCell;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeaderCellWithImageViewButtonWrapper(HeaderCell headerCell) {
        super(headerCell.getContext());
        Lazy lazy;
        int i;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int m53px;
        ViewGroup.MarginLayoutParams marginLayoutParams2;
        Intrinsics.checkNotNullParameter(headerCell, "headerCell");
        this.headerCell = headerCell;
        lazy = LazyKt__LazyJVMKt.lazy(new HeaderCellWithImageViewButtonWrapper$imageView$2(this));
        this.imageView$delegate = lazy;
        addView(headerCell);
        AppCompatImageView imageView = getImageView();
        boolean z = LocaleController.isRTL;
        int i2 = (z ? 3 : 5) | 80;
        if (z) {
            TextView textView = headerCell.getTextView();
            Intrinsics.checkNotNullExpressionValue(textView, "headerCell.textView");
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            i = AndroidUtilities.m53px((layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null) != null ? marginLayoutParams2.rightMargin : 0);
        } else {
            i = 0;
        }
        if (LocaleController.isRTL) {
            m53px = 0;
        } else {
            TextView textView2 = headerCell.getTextView();
            Intrinsics.checkNotNullExpressionValue(textView2, "headerCell.textView");
            ViewGroup.LayoutParams layoutParams2 = textView2.getLayoutParams();
            m53px = AndroidUtilities.m53px((layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null) != null ? marginLayoutParams.rightMargin : 0);
        }
        addView(imageView, LayoutHelper.createFrame(24, 24, i2, i, 0, m53px, 0));
        setupColors();
    }

    public final AppCompatImageView getImageView() {
        return (AppCompatImageView) this.imageView$delegate.getValue();
    }

    public final void setupColors() {
        HeaderCell headerCell = this.headerCell;
        headerCell.getTextView().setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
        headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        AppCompatImageView imageView = getImageView();
        ViewExtKt.setImageColor(imageView, Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
        ViewExtKt.setBoundedCircleRippleBackground(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCompatImageView initImageView() {
        AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
        int m54dp = AndroidUtilities.m54dp(2);
        appCompatImageView.setPadding(m54dp, m54dp, m54dp, m54dp);
        ViewExtKt.gone$default(appCompatImageView, false, 1, null);
        return appCompatImageView;
    }
}

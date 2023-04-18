package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.iMe.p031ui.custom.NetworkTypeView;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.HeaderCell;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: HeaderCellWithNetworkViewWrapper.kt */
/* renamed from: com.iMe.fork.ui.view.HeaderCellWithNetworkViewWrapper */
/* loaded from: classes3.dex */
public final class HeaderCellWithNetworkViewWrapper extends FrameLayout {
    private final HeaderCell headerCell;
    private final Lazy networkTypeView$delegate;

    public final HeaderCell getHeaderCell() {
        return this.headerCell;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeaderCellWithNetworkViewWrapper(HeaderCell headerCell) {
        super(headerCell.getContext());
        Lazy lazy;
        int i;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int m49px;
        ViewGroup.MarginLayoutParams marginLayoutParams2;
        Intrinsics.checkNotNullParameter(headerCell, "headerCell");
        this.headerCell = headerCell;
        lazy = LazyKt__LazyJVMKt.lazy(new HeaderCellWithNetworkViewWrapper$networkTypeView$2(this));
        this.networkTypeView$delegate = lazy;
        addView(headerCell);
        NetworkTypeView networkTypeView = getNetworkTypeView();
        boolean z = LocaleController.isRTL;
        int i2 = (z ? 3 : 5) | 80;
        if (z) {
            TextView textView = headerCell.getTextView();
            Intrinsics.checkNotNullExpressionValue(textView, "headerCell.textView");
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            i = AndroidUtilities.m49px((layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null) != null ? marginLayoutParams2.rightMargin : 0);
        } else {
            i = 0;
        }
        if (LocaleController.isRTL) {
            m49px = 0;
        } else {
            TextView textView2 = headerCell.getTextView();
            Intrinsics.checkNotNullExpressionValue(textView2, "headerCell.textView");
            ViewGroup.LayoutParams layoutParams2 = textView2.getLayoutParams();
            m49px = AndroidUtilities.m49px((layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null) != null ? marginLayoutParams.rightMargin : 0);
        }
        addView(networkTypeView, LayoutHelper.createFrame(-2, -2, i2, i, 0, m49px, 0));
    }

    public final NetworkTypeView getNetworkTypeView() {
        return (NetworkTypeView) this.networkTypeView$delegate.getValue();
    }

    public final void setupColors() {
        HeaderCell headerCell = this.headerCell;
        headerCell.getTextView().setTextColor(Theme.getColor("windowBackgroundWhiteBlueHeader"));
        headerCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
    }

    public final void setNetworkViewTopMargin(int i) {
        ViewExtKt.setMargins$default(getNetworkTypeView(), 0, AndroidUtilities.m50dp(i), 0, 0, 13, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NetworkTypeView initNetworkView() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        NetworkTypeView networkTypeView = new NetworkTypeView(context, null, 0, 6, null);
        ViewExtKt.gone(networkTypeView);
        return networkTypeView;
    }
}
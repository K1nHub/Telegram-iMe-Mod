package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.iMe.p031ui.custom.NetworkTypeView;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: HeaderCellWithNetwork.kt */
/* renamed from: com.iMe.fork.ui.view.HeaderCellWithNetwork */
/* loaded from: classes4.dex */
public final class HeaderCellWithNetwork extends FrameLayout {
    private final HeaderCell headerCell;
    private final Lazy networkTypeView$delegate;

    public final HeaderCell getHeaderCell() {
        return this.headerCell;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeaderCellWithNetwork(HeaderCell headerCell) {
        super(headerCell.getContext());
        Lazy lazy;
        int i;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int m71px;
        ViewGroup.MarginLayoutParams marginLayoutParams2;
        Intrinsics.checkNotNullParameter(headerCell, "headerCell");
        this.headerCell = headerCell;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NetworkTypeView>() { // from class: com.iMe.fork.ui.view.HeaderCellWithNetwork$networkTypeView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final NetworkTypeView invoke() {
                NetworkTypeView initNetworkView;
                initNetworkView = HeaderCellWithNetwork.this.initNetworkView();
                return initNetworkView;
            }
        });
        this.networkTypeView$delegate = lazy;
        addView(headerCell);
        NetworkTypeView networkTypeView = getNetworkTypeView();
        boolean z = LocaleController.isRTL;
        int i2 = (z ? 3 : 5) | 80;
        if (z) {
            TextView textView = headerCell.getTextView();
            Intrinsics.checkNotNullExpressionValue(textView, "headerCell.textView");
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            i = AndroidUtilities.m71px((layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null) != null ? marginLayoutParams2.rightMargin : 0);
        } else {
            i = 0;
        }
        if (LocaleController.isRTL) {
            m71px = 0;
        } else {
            TextView textView2 = headerCell.getTextView();
            Intrinsics.checkNotNullExpressionValue(textView2, "headerCell.textView");
            ViewGroup.LayoutParams layoutParams2 = textView2.getLayoutParams();
            m71px = AndroidUtilities.m71px((layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null) != null ? marginLayoutParams.rightMargin : 0);
        }
        addView(networkTypeView, LayoutHelper.createFrame(-2, -2, i2, i, 0, m71px, 0));
    }

    public final NetworkTypeView getNetworkTypeView() {
        return (NetworkTypeView) this.networkTypeView$delegate.getValue();
    }

    public final void setupColors() {
        HeaderCell headerCell = this.headerCell;
        headerCell.getTextView().setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
        headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
    }

    public final void setNetworkViewTopMargin(int i) {
        ViewExtKt.setMargins$default(getNetworkTypeView(), 0, AndroidUtilities.m72dp(i), 0, 0, 13, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NetworkTypeView initNetworkView() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        NetworkTypeView networkTypeView = new NetworkTypeView(context, null, 0, 6, null);
        ViewExtKt.gone$default(networkTypeView, false, 1, null);
        return networkTypeView;
    }
}

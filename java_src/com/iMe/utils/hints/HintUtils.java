package com.iMe.utils.hints;

import com.iMe.common.IdFabric$Menu;
import com.iMe.model.hint.HintModel;
import com.iMe.p031ui.custom.NetworkTypeView;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.INavigationLayout;
/* compiled from: HintUtils.kt */
/* loaded from: classes6.dex */
public final class HintUtils {
    private final HintFactory hintFactory = new HintFactory();

    public final void showChangeNetworkHint(INavigationLayout parentLayout) {
        Intrinsics.checkNotNullParameter(parentLayout, "parentLayout");
        NetworkTypeView networkTypeView = (NetworkTypeView) parentLayout.getView().findViewWithTag("network_type_view");
        if (networkTypeView == null) {
            return;
        }
        if (networkTypeView.getVisibility() == 0) {
            HintFactory hintFactory = this.hintFactory;
            String internalString = LocaleController.getInternalString(C3473R.string.wallet_network_type_hint);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…wallet_network_type_hint)");
            hintFactory.showHint(parentLayout, networkTypeView, new HintModel(internalString, 0, false, false, 14, null));
        }
    }

    public final void showStakingInfoHint(INavigationLayout parentLayout) {
        Intrinsics.checkNotNullParameter(parentLayout, "parentLayout");
        ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) parentLayout.getView().findViewWithTag(Integer.valueOf(IdFabric$Menu.STAKING_HELP));
        if (actionBarMenuItem == null) {
            return;
        }
        if (actionBarMenuItem.getVisibility() == 0) {
            HintFactory hintFactory = this.hintFactory;
            String internalString = LocaleController.getInternalString(C3473R.string.staking_info_hint);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.staking_info_hint)");
            hintFactory.showHint(parentLayout, actionBarMenuItem, new HintModel(internalString, 0, false, false, 14, null));
        }
    }

    public final void showSortingCreateadFolderOrTopic(INavigationLayout parentLayout) {
        Intrinsics.checkNotNullParameter(parentLayout, "parentLayout");
        ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) parentLayout.getView().findViewWithTag(Integer.valueOf(IdFabric$Menu.OPTIONS));
        if (actionBarMenuItem == null) {
            return;
        }
        if (actionBarMenuItem.getVisibility() == 0) {
            HintFactory hintFactory = this.hintFactory;
            String internalString = LocaleController.getInternalString(C3473R.string.folder_tabs_sorting_settings_item_title);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…ting_settings_item_title)");
            hintFactory.showHint(parentLayout, actionBarMenuItem, new HintModel(internalString, 0, false, false, 14, null));
        }
    }

    public final void hideHint() {
        this.hintFactory.hideHint();
    }
}

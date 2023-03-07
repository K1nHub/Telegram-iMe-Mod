package com.smedialink.p031ui.adapter.provider;

import android.view.View;
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BinanceAccountProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.BinanceAccountProvider$convert$1 */
/* loaded from: classes3.dex */
public final class BinanceAccountProvider$convert$1 extends Lambda implements Function1<ActionBarMenuItem, Unit> {
    final /* synthetic */ BinanceAccountProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinanceAccountProvider$convert$1(BinanceAccountProvider binanceAccountProvider) {
        super(1);
        this.this$0 = binanceAccountProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(ActionBarMenuItem actionBarMenuItem) {
        invoke2(actionBarMenuItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(final ActionBarMenuItem applyForView) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setLongClickEnabled(false);
        applyForView.setSubMenuOpenSide(2);
        applyForView.setIcon(C3158R.C3160drawable.ic_ab_other);
        ViewExtKt.setCircleRippleBackground(applyForView);
        applyForView.removeAllSubItems();
        int i = IdFabric$Menu.RECEIVE;
        int i2 = C3158R.C3160drawable.fork_ic_ask_transfer_24;
        resourceManager = this.this$0.resourceManager;
        applyForView.addSubItem(i, i2, resourceManager.getString(C3158R.string.wallet_binance_pay_action_receive));
        applyForView.addSubItem(IdFabric$Menu.LOGOUT, C3158R.C3160drawable.msg_leave, LocaleController.getString("LogOut", C3158R.string.LogOut));
        applyForView.redrawPopup(Theme.getColor("actionBarDefaultSubmenuBackground"));
        applyForView.setPopupItemsColor(Theme.getColor("actionBarDefaultSubmenuItem"), false);
        applyForView.setPopupItemsColor(Theme.getColor("actionBarDefaultSubmenuItemIcon"), true);
        applyForView.setupPopupRadialSelectors(Theme.getColor("listSelectorSDK21"));
        applyForView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.adapter.provider.BinanceAccountProvider$convert$1$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BinanceAccountProvider$convert$1.m1396invoke$lambda0(ActionBarMenuItem.this, view);
            }
        });
        applyForView.setDelegate(this.this$0.getActionBarMenuItemDelegate());
        applyForView.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3158R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-0  reason: not valid java name */
    public static final void m1396invoke$lambda0(ActionBarMenuItem this_applyForView, View view) {
        Intrinsics.checkNotNullParameter(this_applyForView, "$this_applyForView");
        this_applyForView.toggleSubMenu();
    }
}

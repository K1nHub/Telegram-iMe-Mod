package com.iMe.p031ui.adapter.provider;

import android.view.View;
import com.iMe.common.IdFabric$Menu;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BinanceAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BinanceAccountProvider$convert$1 */
/* loaded from: classes.dex */
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
        applyForView.setIcon(C3473R.C3475drawable.ic_ab_other);
        ViewExtKt.setCircleRippleBackground(applyForView);
        applyForView.removeAllSubItems();
        int i = IdFabric$Menu.RECEIVE;
        int i2 = C3473R.C3475drawable.fork_ic_ask_transfer_24;
        resourceManager = this.this$0.resourceManager;
        applyForView.addSubItem(i, i2, resourceManager.getString(C3473R.string.wallet_binance_pay_action_receive));
        applyForView.addSubItem(IdFabric$Menu.LOGOUT, C3473R.C3475drawable.msg_leave, LocaleController.getString("LogOut", C3473R.string.LogOut));
        applyForView.redrawPopup(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
        applyForView.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem), false);
        applyForView.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon), true);
        applyForView.setupPopupRadialSelectors(Theme.getColor(Theme.key_listSelector));
        applyForView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.adapter.provider.BinanceAccountProvider$convert$1$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BinanceAccountProvider$convert$1.invoke$lambda$0(ActionBarMenuItem.this, view);
            }
        });
        applyForView.setDelegate(this.this$0.getActionBarMenuItemDelegate());
        applyForView.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3473R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(ActionBarMenuItem this_applyForView, View view) {
        Intrinsics.checkNotNullParameter(this_applyForView, "$this_applyForView");
        this_applyForView.toggleSubMenu();
    }
}

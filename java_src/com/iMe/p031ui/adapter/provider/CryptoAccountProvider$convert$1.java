package com.iMe.p031ui.adapter.provider;

import android.view.View;
import com.iMe.model.wallet.home.CryptoAccountItem;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$1 */
/* loaded from: classes.dex */
public final class CryptoAccountProvider$convert$1 extends Lambda implements Function1<ActionBarMenuItem, Unit> {
    final /* synthetic */ CryptoAccountItem $item;
    final /* synthetic */ CryptoAccountProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoAccountProvider$convert$1(CryptoAccountProvider cryptoAccountProvider, CryptoAccountItem cryptoAccountItem) {
        super(1);
        this.this$0 = cryptoAccountProvider;
        this.$item = cryptoAccountItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(ActionBarMenuItem actionBarMenuItem) {
        invoke2(actionBarMenuItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(final ActionBarMenuItem applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setLongClickEnabled(false);
        applyForView.setSubMenuOpenSide(2);
        applyForView.setIcon(C3290R.C3292drawable.ic_ab_other);
        ViewExtKt.setCircleRippleBackground(applyForView);
        this.this$0.setupMenuItems(applyForView, this.$item.getNetworkType(), this.$item.getAddress());
        applyForView.redrawPopup(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
        applyForView.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem), false);
        applyForView.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon), true);
        applyForView.setupPopupRadialSelectors(Theme.getColor(Theme.key_listSelector));
        applyForView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$1$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CryptoAccountProvider$convert$1.invoke$lambda$0(ActionBarMenuItem.this, view);
            }
        });
        applyForView.setDelegate(this.this$0.getActionBarMenuItemDelegate());
        applyForView.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3290R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(ActionBarMenuItem this_applyForView, View view) {
        Intrinsics.checkNotNullParameter(this_applyForView, "$this_applyForView");
        this_applyForView.toggleSubMenu();
    }
}

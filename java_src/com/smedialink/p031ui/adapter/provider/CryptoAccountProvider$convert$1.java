package com.smedialink.p031ui.adapter.provider;

import android.view.View;
import com.smedialink.model.wallet.home.CryptoAccountItem;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoAccountProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.CryptoAccountProvider$convert$1 */
/* loaded from: classes3.dex */
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
        applyForView.setIcon(C3286R.C3288drawable.ic_ab_other);
        ViewExtKt.setCircleRippleBackground(applyForView);
        this.this$0.setupMenuItems(applyForView, this.$item.getNetworkType(), this.$item.getAddress());
        applyForView.redrawPopup(Theme.getColor("actionBarDefaultSubmenuBackground"));
        applyForView.setPopupItemsColor(Theme.getColor("actionBarDefaultSubmenuItem"), false);
        applyForView.setPopupItemsColor(Theme.getColor("actionBarDefaultSubmenuItemIcon"), true);
        applyForView.setupPopupRadialSelectors(Theme.getColor("listSelectorSDK21"));
        applyForView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.adapter.provider.CryptoAccountProvider$convert$1$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CryptoAccountProvider$convert$1.invoke$lambda$0(ActionBarMenuItem.this, view);
            }
        });
        applyForView.setDelegate(this.this$0.getActionBarMenuItemDelegate());
        applyForView.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3286R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(ActionBarMenuItem this_applyForView, View view) {
        Intrinsics.checkNotNullParameter(this_applyForView, "$this_applyForView");
        this_applyForView.toggleSubMenu();
    }
}

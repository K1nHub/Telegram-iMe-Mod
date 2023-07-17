package com.iMe.p031ui.adapter.provider;

import android.view.View;
import com.iMe.model.wallet.home.CryptoAccountItem;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.Theme;
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
        applyForView.setIcon(C3417R.C3419drawable.ic_ab_other);
        applyForView.setIconColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
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
        final CryptoAccountProvider cryptoAccountProvider = this.this$0;
        applyForView.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$1$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                CryptoAccountProvider$convert$1.invoke$lambda$1(CryptoAccountProvider.this, i);
            }
        });
        applyForView.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3417R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(ActionBarMenuItem this_applyForView, View view) {
        Intrinsics.checkNotNullParameter(this_applyForView, "$this_applyForView");
        this_applyForView.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(CryptoAccountProvider this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getOnMenuItemClickAction().invoke(Integer.valueOf(i));
    }
}

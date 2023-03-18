package com.smedialink.p031ui.wallet.home.p032v2.details;

import android.view.View;
import com.smedialink.model.wallet.home.pay.BinanceTransactionsGroup;
import com.smedialink.navigation.common.router.base.BaseNavigationRouter;
import com.smedialink.navigation.common.router.base.NavigationRouter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$initPageTabs$1$1 */
/* loaded from: classes3.dex */
public final class WalletTokenDetailsFragment$initPageTabs$1$1 extends Lambda implements Function0<View> {
    final /* synthetic */ BinanceTransactionsGroup $group;
    final /* synthetic */ WalletTokenDetailsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsFragment$initPageTabs$1$1(WalletTokenDetailsFragment walletTokenDetailsFragment, BinanceTransactionsGroup binanceTransactionsGroup) {
        super(0);
        this.this$0 = walletTokenDetailsFragment;
        this.$group = binanceTransactionsGroup;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        NavigationRouter navigationRouter;
        navigationRouter = this.this$0.getNavigationRouter();
        Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.smedialink.navigation.common.router.base.BaseNavigationRouter<com.smedialink.ui.base.mvp.MvpFragment>");
        return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(this.$group.getId());
    }
}

package com.iMe.p031ui.wallet.home.details;

import android.view.View;
import com.iMe.model.wallet.home.pay.BinanceTransactionsGroup;
import com.iMe.navigation.common.router.base.BaseNavigationRouter;
import com.iMe.navigation.common.router.base.NavigationRouter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$initPageTabs$1$1 */
/* loaded from: classes4.dex */
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
        Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>");
        return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(this.$group.getId());
    }
}

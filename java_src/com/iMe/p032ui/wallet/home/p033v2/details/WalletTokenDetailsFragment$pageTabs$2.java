package com.iMe.p032ui.wallet.home.p033v2.details;

import com.iMe.model.wallet.details.WalletTokenDetailsNavigationTab;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$pageTabs$2 */
/* loaded from: classes3.dex */
public final class WalletTokenDetailsFragment$pageTabs$2 extends Lambda implements Function0<List<? extends WalletTokenDetailsNavigationTab>> {
    final /* synthetic */ WalletTokenDetailsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsFragment$pageTabs$2(WalletTokenDetailsFragment walletTokenDetailsFragment) {
        super(0);
        this.this$0 = walletTokenDetailsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends WalletTokenDetailsNavigationTab> invoke() {
        List<? extends WalletTokenDetailsNavigationTab> initPageTabs;
        initPageTabs = this.this$0.initPageTabs();
        return initPageTabs;
    }
}

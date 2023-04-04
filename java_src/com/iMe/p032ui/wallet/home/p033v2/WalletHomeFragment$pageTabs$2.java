package com.iMe.p032ui.wallet.home.p033v2;

import com.iMe.model.wallet.home.navigation.WalletHomeNavigationTab;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.WalletHomeFragment$pageTabs$2 */
/* loaded from: classes3.dex */
public final class WalletHomeFragment$pageTabs$2 extends Lambda implements Function0<List<WalletHomeNavigationTab>> {
    final /* synthetic */ WalletHomeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeFragment$pageTabs$2(WalletHomeFragment walletHomeFragment) {
        super(0);
        this.this$0 = walletHomeFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<WalletHomeNavigationTab> invoke() {
        List<WalletHomeNavigationTab> initPageTabs;
        initPageTabs = this.this$0.initPageTabs();
        return initPageTabs;
    }
}

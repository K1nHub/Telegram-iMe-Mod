package com.iMe.p031ui.wallet.home.p032v2.tabs;

import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.wallet.home.p032v2.WalletHomeView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: WalletHomeTabFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.WalletHomeTabFragment */
/* loaded from: classes.dex */
public abstract class WalletHomeTabFragment extends MvpFragment {
    private WalletHomeView parentView;
    private final Lazy resourceManager$delegate;

    public abstract void handleBottomPadding(int i);

    public abstract void loadBalances();

    public abstract void loadTabInfo();

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public WalletHomeTabFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletHomeTabFragment$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
    }

    public final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void setParentView(WalletHomeView walletHomeView) {
        this.parentView = walletHomeView;
    }

    public final void selectTab(int i) {
        WalletHomeView walletHomeView = this.parentView;
        if (walletHomeView != null) {
            walletHomeView.onTabSelected(i);
        }
    }
}

package com.iMe.p031ui.wallet.home.tabs;

import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.wallet.home.WalletHomeView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: WalletHomeTabFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.WalletHomeTabFragment */
/* loaded from: classes6.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.wallet.home.tabs.WalletHomeTabFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
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

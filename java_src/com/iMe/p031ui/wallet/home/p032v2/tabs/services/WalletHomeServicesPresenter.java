package com.iMe.p031ui.wallet.home.p032v2.tabs.services;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.ServicesBasicItem;
import com.iMe.model.wallet.home.ServicesCategory;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3242R;
/* compiled from: WalletHomeServicesPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.services.WalletHomeServicesPresenter */
/* loaded from: classes4.dex */
public final class WalletHomeServicesPresenter extends BasePresenter<WalletHomeServicesView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final ResourceManager resourceManager;

    public WalletHomeServicesPresenter(CryptoAccessManager cryptoAccessManager, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.cryptoAccessManager = cryptoAccessManager;
        this.resourceManager = resourceManager;
    }

    public final void onStakingClick() {
        if (this.cryptoAccessManager.isWalletCreated(BlockchainType.EVM)) {
            ((WalletHomeServicesView) getViewState()).openStakingScreen();
        } else {
            ((WalletHomeServicesView) getViewState()).showRequiredWalletCreatedDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        initDefaultDashboardState();
    }

    private final void initDefaultDashboardState() {
        ((WalletHomeServicesView) getViewState()).firstScreenInitWithItems(configureBalancesWithHeaders());
    }

    private final List<BaseNode> configureBalancesWithHeaders() {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new HeaderItem(this.resourceManager.getString(C3242R.string.wallet_internal_point_basic_services)), new ServicesBasicItem(ServicesCategory.STAKING, C3242R.C3244drawable.fork_ic_internal_point_staking, C3242R.string.wallet_internal_point_staking_title, C3242R.string.wallet_internal_point_staking_subtitle), new ServicesBasicItem(ServicesCategory.CHANNELS, C3242R.C3244drawable.fork_ic_internal_point_channels_catalog, C3242R.string.wallet_internal_point_channels_catalog_title, C3242R.string.wallet_internal_point_channels_catalog_subtitle), new ServicesBasicItem(ServicesCategory.NEUROBOTS, C3242R.C3244drawable.fork_ic_internal_point_neurobots_store, C3242R.string.wallet_internal_point_neurobots_store_title, C3242R.string.wallet_internal_point_neurobots_store_subtitle), new HeaderItem(this.resourceManager.getString(C3242R.string.wallet_internal_point_subscriptions)), new ServicesBasicItem(ServicesCategory.PREMIUM, C3242R.C3244drawable.fork_ic_internal_point_premium_account, C3242R.string.wallet_internal_point_premium_account_title, C3242R.string.wallet_internal_point_premium_account_subtitle), new ServicesBasicItem(ServicesCategory.ADS, C3242R.C3244drawable.fork_ic_internal_point_ads, C3242R.string.wallet_internal_point_ads_title, C3242R.string.wallet_internal_point_ads_subtitle));
        return mutableListOf;
    }
}

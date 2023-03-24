package com.smedialink.p031ui.wallet.home.p032v2.tabs.services;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.model.wallet.home.ServicesBasicItem;
import com.smedialink.model.wallet.home.ServicesCategory;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3301R;
/* compiled from: WalletHomeServicesPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.services.WalletHomeServicesPresenter */
/* loaded from: classes3.dex */
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
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new HeaderItem(this.resourceManager.getString(C3301R.string.wallet_internal_point_basic_services)), new ServicesBasicItem(ServicesCategory.STAKING, C3301R.C3303drawable.fork_ic_internal_point_staking, C3301R.string.wallet_internal_point_staking_title, C3301R.string.wallet_internal_point_staking_subtitle), new ServicesBasicItem(ServicesCategory.CHANNELS, C3301R.C3303drawable.fork_ic_internal_point_channels_catalog, C3301R.string.wallet_internal_point_channels_catalog_title, C3301R.string.wallet_internal_point_channels_catalog_subtitle), new ServicesBasicItem(ServicesCategory.NEUROBOTS, C3301R.C3303drawable.fork_ic_internal_point_neurobots_store, C3301R.string.wallet_internal_point_neurobots_store_title, C3301R.string.wallet_internal_point_neurobots_store_subtitle), new HeaderItem(this.resourceManager.getString(C3301R.string.wallet_internal_point_subscriptions)), new ServicesBasicItem(ServicesCategory.PREMIUM, C3301R.C3303drawable.fork_ic_internal_point_premium_account, C3301R.string.wallet_internal_point_premium_account_title, C3301R.string.wallet_internal_point_premium_account_subtitle), new ServicesBasicItem(ServicesCategory.ADS, C3301R.C3303drawable.fork_ic_internal_point_ads, C3301R.string.wallet_internal_point_ads_title, C3301R.string.wallet_internal_point_ads_subtitle));
        return mutableListOf;
    }
}

package com.iMe.p030ui.wallet.home.tabs.services;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.ServicesBasicItem;
import com.iMe.model.wallet.home.ServicesCategory;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3632R;
/* compiled from: WalletHomeServicesPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesPresenter */
/* loaded from: classes4.dex */
public final class WalletHomeServicesPresenter extends BasePresenter<WalletHomeServicesView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final ResourceManager resourceManager;

    /* compiled from: WalletHomeServicesPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesPresenter$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ServicesCategory.values().length];
            try {
                iArr[ServicesCategory.CRYPTOBOXES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ServicesCategory.STAKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ServicesCategory.CHANNELS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ServicesCategory.NEUROBOTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ServicesCategory.TELEGRAM_USERNAMES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ServicesCategory.TELEGRAM_PREMIUM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ServicesCategory.ADS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ServicesCategory.PREMIUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletHomeServicesPresenter(CryptoAccessManager cryptoAccessManager, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.cryptoAccessManager = cryptoAccessManager;
        this.resourceManager = resourceManager;
    }

    public final void onCategoryClick(ServicesCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        switch (WhenMappings.$EnumSwitchMapping$0[category.ordinal()]) {
            case 1:
                runWithWalletCheck(BlockchainType.EVM, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesPresenter$$ExternalSyntheticLambda2
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletHomeServicesPresenter.onCategoryClick$lambda$0(WalletHomeServicesPresenter.this);
                    }
                });
                return;
            case 2:
                runWithWalletCheck(BlockchainType.EVM, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesPresenter$$ExternalSyntheticLambda0
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletHomeServicesPresenter.onCategoryClick$lambda$1(WalletHomeServicesPresenter.this);
                    }
                });
                return;
            case 3:
                ((WalletHomeServicesView) getViewState()).openChannelsCatalogScreen();
                return;
            case 4:
                ((WalletHomeServicesView) getViewState()).openActionIntroScreen(105);
                return;
            case 5:
                runWithWalletCheck(BlockchainType.TON, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesPresenter$$ExternalSyntheticLambda3
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletHomeServicesPresenter.onCategoryClick$lambda$2(WalletHomeServicesPresenter.this);
                    }
                });
                return;
            case 6:
                runWithWalletCheck(BlockchainType.TON, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesPresenter$$ExternalSyntheticLambda1
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletHomeServicesPresenter.onCategoryClick$lambda$3(WalletHomeServicesPresenter.this);
                    }
                });
                return;
            case 7:
                ((WalletHomeServicesView) getViewState()).openActionIntroScreen(106);
                return;
            case 8:
                ((WalletHomeServicesView) getViewState()).openActionIntroScreen(107);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCategoryClick$lambda$0(WalletHomeServicesPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletHomeServicesView) this$0.getViewState()).openCryptoBoxesScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCategoryClick$lambda$1(WalletHomeServicesPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletHomeServicesView) this$0.getViewState()).openStakingScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCategoryClick$lambda$2(WalletHomeServicesPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletHomeServicesView) this$0.getViewState()).openTelegramUsernamesScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCategoryClick$lambda$3(WalletHomeServicesPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletHomeServicesView) this$0.getViewState()).openTelegramPremiumScreen();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        initDefaultDashboardState();
    }

    private final void initDefaultDashboardState() {
        ((WalletHomeServicesView) getViewState()).firstScreenInitWithItems(configureBalancesWithHeaders());
    }

    private final List<BaseNode> configureBalancesWithHeaders() {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new HeaderItem(this.resourceManager.getString(C3632R.string.wallet_internal_point_basic_services)), new ServicesBasicItem(ServicesCategory.CRYPTOBOXES, C3632R.C3634drawable.fork_ic_internal_point_cryptoboxes, C3632R.string.wallet_internal_point_cryptoboxes_title, C3632R.string.wallet_internal_point_cryptoboxes_subtitle), new ServicesBasicItem(ServicesCategory.STAKING, C3632R.C3634drawable.fork_ic_internal_point_staking, C3632R.string.wallet_internal_point_staking_title, C3632R.string.wallet_internal_point_staking_subtitle), new ServicesBasicItem(ServicesCategory.NEUROBOTS, C3632R.C3634drawable.fork_ic_internal_point_neurobots_store, C3632R.string.wallet_internal_point_neurobots_store_title, C3632R.string.wallet_internal_point_neurobots_store_subtitle), new HeaderItem(this.resourceManager.getString(C3632R.string.wallet_internal_point_ton_services)), new ServicesBasicItem(ServicesCategory.TELEGRAM_PREMIUM, C3632R.C3634drawable.fork_ic_internal_point_telegram_premium, C3632R.string.wallet_internal_point_telegram_premium_title, C3632R.string.wallet_internal_point_telegram_premium_subtitle), new ServicesBasicItem(ServicesCategory.TELEGRAM_USERNAMES, C3632R.C3634drawable.fork_ic_internal_point_telegram_usernames, C3632R.string.wallet_internal_point_telegram_usernames_title, C3632R.string.wallet_internal_point_telegram_usernames_subtitle), new HeaderItem(this.resourceManager.getString(C3632R.string.wallet_internal_point_subscriptions)), new ServicesBasicItem(ServicesCategory.PREMIUM, C3632R.C3634drawable.fork_ic_internal_point_premium_account, C3632R.string.wallet_internal_point_premium_account_title, C3632R.string.wallet_internal_point_premium_account_subtitle), new ServicesBasicItem(ServicesCategory.ADS, C3632R.C3634drawable.fork_ic_internal_point_ads, C3632R.string.wallet_internal_point_ads_title, C3632R.string.wallet_internal_point_ads_subtitle));
        return mutableListOf;
    }

    private final void runWithWalletCheck(BlockchainType blockchainType, Callbacks$Callback callbacks$Callback) {
        if (this.cryptoAccessManager.isWalletCreated(blockchainType)) {
            callbacks$Callback.invoke();
        } else {
            ((WalletHomeServicesView) getViewState()).showRequiredWalletCreatedDialog(blockchainType);
        }
    }
}

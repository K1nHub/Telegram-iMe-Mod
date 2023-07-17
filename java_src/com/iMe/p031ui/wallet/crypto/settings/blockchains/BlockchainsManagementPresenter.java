package com.iMe.p031ui.wallet.crypto.settings.blockchains;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.DateFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
/* compiled from: BlockchainsManagementPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter */
/* loaded from: classes4.dex */
public final class BlockchainsManagementPresenter extends BasePresenter<BlockchainsManagementView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;

    /* compiled from: BlockchainsManagementPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BlockchainType.values().length];
            try {
                iArr[BlockchainType.EVM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BlockchainType.TON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BlockchainType.TRON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BlockchainType.BITCOIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BlockchainsManagementPresenter(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
    }

    public final void onWalletItemClick(BlockchainWalletItem walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        ((BlockchainsManagementView) getViewState()).showWalletDetailsDialog(walletItem, getInfoDialogModel(walletItem.getBlockchainType()));
    }

    public final void showResetAllWalletsDialog() {
        ((BlockchainsManagementView) getViewState()).showResetAllWalletsConfirmationDialog(new DialogModel(this.resourceManager.getString(C3417R.string.wallet_reset_all_title), this.resourceManager.getString(C3417R.string.wallet_reset_all_description), LocaleController.getString("Cancel", C3417R.string.Cancel), LocaleController.getString("Reset", C3417R.string.Reset)));
    }

    public final void resetAllWallets() {
        handleWalletDeletionResult(this.cryptoWalletInteractor.deleteAllWallets());
    }

    public final void resetWallet(BlockchainWalletItem walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        handleWalletDeletionResult(CryptoWalletInteractor.deleteWallet$default(this.cryptoWalletInteractor, walletItem.getBlockchainType(), false, false, 6, null));
    }

    public final void showWalletBackup(BlockchainWalletItem walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        Wallet wallet2 = this.cryptoAccessManager.getWallet(walletItem.getBlockchainType());
        if (wallet2 == null) {
            return;
        }
        ((BlockchainsManagementView) getViewState()).openBackupScreen(wallet2);
    }

    public final void showInfoDialog(BlockchainWalletItem walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        ((BlockchainsManagementView) getViewState()).showWalletInfoDialog(getInfoDialogModel(walletItem.getBlockchainType()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        showWallets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showWallets() {
        int collectionSizeOrDefault;
        List<BlockchainWalletItem> mutableList;
        BlockchainsManagementView blockchainsManagementView = (BlockchainsManagementView) getViewState();
        List<Wallet> allWallets = this.cryptoAccessManager.getAllWallets();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(allWallets, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Wallet wallet2 : allWallets) {
            arrayList.add(new BlockchainWalletItem(wallet2.getBlockchainType(), wallet2.getAddress(), getWalletCreationDateText(wallet2.getBlockchainType()), StringExtKt.splitBySpace(wallet2.getMnemonic())));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        blockchainsManagementView.setupWalletsItems(mutableList);
    }

    private final <T> void handleWalletDeletionResult(Observable<Result<T>> observable) {
        Observable<Result<T>> observeOn = observable.observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observable\n             …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2175x42676ad(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2176x42676ae((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final DialogModel getInfoDialogModel(BlockchainType blockchainType) {
        int i = WhenMappings.$EnumSwitchMapping$0[blockchainType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new DialogModel(this.resourceManager.getString(C3417R.string.wallet_details_info_bitcoin_title), this.resourceManager.getString(C3417R.string.wallet_details_info_bitcoin_description), null, LocaleController.getString("OK", C3417R.string.OK), 4, null);
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return new DialogModel(this.resourceManager.getString(C3417R.string.wallet_details_info_tron_title), this.resourceManager.getString(C3417R.string.wallet_details_info_tron_description), null, LocaleController.getString("OK", C3417R.string.OK), 4, null);
            }
            return new DialogModel(this.resourceManager.getString(C3417R.string.wallet_details_info_ton_title), this.resourceManager.getString(C3417R.string.wallet_details_info_ton_description), null, LocaleController.getString("OK", C3417R.string.OK), 4, null);
        }
        return new DialogModel(this.resourceManager.getString(C3417R.string.wallet_details_info_evm_title), this.resourceManager.getString(C3417R.string.wallet_details_info_evm_description), null, LocaleController.getString("OK", C3417R.string.OK), 4, null);
    }

    private final String getWalletCreationDateText(BlockchainType blockchainType) {
        String dataByBlockchain = this.cryptoPreferenceHelper.getWalletCreationDates().getDataByBlockchain(blockchainType);
        Long longOrNull = dataByBlockchain != null ? StringsKt__StringNumberConversionsKt.toLongOrNull(dataByBlockchain) : null;
        return DateFormatter.format$default(DateFormatter.DateType.DATE_AND_TIME, new Date(longOrNull != null ? longOrNull.longValue() : DateExtKt.now()), null, 4, null);
    }
}

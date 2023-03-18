package com.smedialink.p031ui.wallet.crypto.settings.blockchains;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.settings.BlockchainWalletItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.smedialink.utils.formatter.DateFormatter;
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
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
/* compiled from: BlockchainsManagementPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter */
/* loaded from: classes3.dex */
public final class BlockchainsManagementPresenter extends BasePresenter<BlockchainsManagementView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;

    /* compiled from: BlockchainsManagementPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter$WhenMappings */
    /* loaded from: classes3.dex */
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
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BlockchainsManagementPresenter(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
    }

    public final void onWalletItemClick(BlockchainWalletItem walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        ((BlockchainsManagementView) getViewState()).showWalletDetailsDialog(walletItem, getInfoDialogModel(walletItem.getBlockchainType()));
    }

    public final void showResetAllWalletsDialog() {
        ((BlockchainsManagementView) getViewState()).showResetAllWalletsConfirmationDialog(new DialogModel(this.resourceManager.getString(C3286R.string.wallet_reset_all_title), this.resourceManager.getString(C3286R.string.wallet_reset_all_description), LocaleController.getString("Cancel", C3286R.string.Cancel), LocaleController.getString("Reset", C3286R.string.Reset)));
    }

    public final void resetAllWallets() {
        handleWalletDeletionResult(CryptoWalletInteractor.deleteAllWallets$default(this.cryptoWalletInteractor, false, 1, null));
    }

    public final void resetWallet(BlockchainWalletItem walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        handleWalletDeletionResult(CryptoWalletInteractor.deleteWallet$default(this.cryptoWalletInteractor, walletItem.getBlockchainType(), false, 2, null));
    }

    public final void showWalletBackup(BlockchainWalletItem walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        ((BlockchainsManagementView) getViewState()).openBackupScreen(walletItem.getSecretWords(), walletItem.getAddress());
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
        for (Wallet wallet : allWallets) {
            arrayList.add(new BlockchainWalletItem(wallet.getBlockchainType(), wallet.getAddress(), getWalletCreationDateText(wallet.getBlockchainType()), StringExtKt.splitBySpace(wallet.getMnemonic())));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        blockchainsManagementView.setupWalletsItems(mutableList);
    }

    private final <T> void handleWalletDeletionResult(Observable<Result<T>> observable) {
        Observable<Result<T>> observeOn = observable.observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observable\n             …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2080x42676ad(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2081x42676ae((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final DialogModel getInfoDialogModel(BlockchainType blockchainType) {
        int i = WhenMappings.$EnumSwitchMapping$0[blockchainType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return new DialogModel(this.resourceManager.getString(C3286R.string.wallet_details_info_ton_title), this.resourceManager.getString(C3286R.string.wallet_details_info_ton_description), null, LocaleController.getString("OK", C3286R.string.OK), 4, null);
            }
            throw new NoWhenBranchMatchedException();
        }
        return new DialogModel(this.resourceManager.getString(C3286R.string.wallet_details_info_evm_title), this.resourceManager.getString(C3286R.string.wallet_details_info_evm_description), null, LocaleController.getString("OK", C3286R.string.OK), 4, null);
    }

    private final String getWalletCreationDateText(BlockchainType blockchainType) {
        String dataByBlockchain = this.cryptoPreferenceHelper.getWalletCreationDates().getDataByBlockchain(blockchainType);
        Long longOrNull = dataByBlockchain != null ? StringsKt__StringNumberConversionsKt.toLongOrNull(dataByBlockchain) : null;
        return DateFormatter.format$default(DateFormatter.DateType.DATE_AND_TIME, new Date(longOrNull != null ? longOrNull.longValue() : DateExtKt.now()), null, 4, null);
    }
}

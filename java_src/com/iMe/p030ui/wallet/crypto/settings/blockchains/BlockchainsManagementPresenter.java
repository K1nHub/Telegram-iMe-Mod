package com.iMe.p030ui.wallet.crypto.settings.blockchains;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.wallet.create.WalletCreateManager;
import com.iMe.manager.wallet.create.WalletCreateManagerDelegate;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extensions.CryptoExtKt;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.DateFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import timber.log.Timber;
/* compiled from: BlockchainsManagementPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter */
/* loaded from: classes3.dex */
public final class BlockchainsManagementPresenter extends BasePresenter<BlockchainsManagementView> implements WalletCreateManagerDelegate {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final WalletCreateManager walletCreateManager;

    /* compiled from: BlockchainsManagementPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter$WhenMappings */
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

    public void startChooseWalletOptionsFlow(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.walletCreateManager.startChooseWalletOptionsFlow(blockchainType);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerDelegate
    public void startWalletCreationFlow(WalletCreationType walletCreationType, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        this.walletCreateManager.startWalletCreationFlow(walletCreationType, blockchainType);
    }

    public BlockchainsManagementPresenter(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, WalletCreateManager walletCreateManager) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletCreateManager, "walletCreateManager");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.walletCreateManager = walletCreateManager;
    }

    public final void onWalletItemClick(BlockchainManagementItem.Wallet walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        ((BlockchainsManagementView) getViewState()).showWalletDetailsDialog(walletItem, getInfoDialogModel(walletItem.getBlockchainType()));
    }

    public final void resetAllWallets() {
        handleWalletDeletionResult(this.cryptoWalletInteractor.deleteAllWallets());
    }

    public final void resetWallet(BlockchainManagementItem.Wallet walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        handleWalletDeletionResult(CryptoWalletInteractor.deleteWallet$default(this.cryptoWalletInteractor, walletItem.getBlockchainType(), false, false, 6, null));
    }

    public final void showWalletBackup(BlockchainManagementItem.Wallet walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        Wallet wallet2 = this.cryptoAccessManager.getWallet(walletItem.getBlockchainType());
        if (wallet2 == null) {
            return;
        }
        ((BlockchainsManagementView) getViewState()).openBackupScreen(wallet2);
    }

    public final void showInfoDialog(BlockchainManagementItem.Wallet walletItem) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        ((BlockchainsManagementView) getViewState()).showWalletInfoDialog(getInfoDialogModel(walletItem.getBlockchainType()));
    }

    public final void onActionButtonItemClick(BlockchainManagementItem.ActionButton item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item instanceof BlockchainManagementItem.ActionButton.AddWallet) {
            startChooseWalletOptionsFlow(((BlockchainManagementItem.ActionButton.AddWallet) item).getBlockchainType());
        } else if (item instanceof BlockchainManagementItem.ActionButton.ResetAllWallets) {
            showResetAllWalletsDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        WalletCreateManager walletCreateManager = this.walletCreateManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        walletCreateManager.attachViewState((WalletCreateManagerView) viewState);
        showWallets();
        listenEvents();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showWallets() {
        int mapCapacity;
        int coerceAtLeast;
        List filterNotNull;
        int collectionSizeOrDefault;
        List plus;
        List plus2;
        List plus3;
        List<BaseNode> mutableList;
        int lastIndex;
        BlockchainType[] values = BlockchainType.values();
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(values.length);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (BlockchainType blockchainType : values) {
            linkedHashMap.put(blockchainType, this.cryptoAccessManager.getWallet(blockchainType));
        }
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(linkedHashMap.values());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(filterNotNull, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = filterNotNull.iterator();
        int i = 0;
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Wallet wallet2 = (Wallet) next;
            BlockchainType blockchainType2 = wallet2.getBlockchainType();
            String address = wallet2.getAddress();
            String walletCreationDateText = getWalletCreationDateText(wallet2.getBlockchainType());
            List<String> mnemonicAsList = CryptoExtKt.mnemonicAsList(wallet2);
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(filterNotNull);
            if (lastIndex != i) {
                z = false;
            }
            arrayList.add(new BlockchainManagementItem.Wallet(blockchainType2, address, walletCreationDateText, mnemonicAsList, z));
            i = i2;
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) ((Collection) arrayList), (Object) BlockchainManagementItem.Section.INSTANCE);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((Wallet) entry.getValue()) == null) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList2 = new ArrayList(linkedHashMap2.size());
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            arrayList2.add(new BlockchainManagementItem.ActionButton.AddWallet((BlockchainType) entry2.getKey()));
        }
        plus2 = CollectionsKt___CollectionsKt.plus((Collection) plus, (Iterable) arrayList2);
        plus3 = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) ((Collection) plus2), (Object) BlockchainManagementItem.ActionButton.ResetAllWallets.INSTANCE);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) plus3);
        ((BlockchainsManagementView) getViewState()).setupWalletsItems(mutableList);
    }

    private final <T> void handleWalletDeletionResult(Observable<Result<T>> observable) {
        Observable<Result<T>> observeOn = observable.observeOn(this.schedulersProvider.mo1013ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observable\n            .…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends T>, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2(obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Result<? extends T> it) {
                CryptoAccessManager cryptoAccessManager;
                RxEventBus rxEventBus;
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends T> result = it;
                if (result instanceof Result.Error) {
                    resourceManager = BlockchainsManagementPresenter.this.resourceManager;
                    ((BlockchainsManagementView) BlockchainsManagementPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                } else if (result instanceof Result.Success) {
                    cryptoAccessManager = BlockchainsManagementPresenter.this.cryptoAccessManager;
                    if (!cryptoAccessManager.getAllWallets().isEmpty()) {
                        BlockchainsManagementPresenter.this.showWallets();
                        return;
                    }
                    ((BlockchainsManagementView) BlockchainsManagementPresenter.this.getViewState()).finishScreen();
                    rxEventBus = BlockchainsManagementPresenter.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.AllWalletsReset.INSTANCE);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final DialogModel getInfoDialogModel(BlockchainType blockchainType) {
        int i = WhenMappings.$EnumSwitchMapping$0[blockchainType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new DialogModel(this.resourceManager.getString(C3632R.string.wallet_details_info_bitcoin_title), this.resourceManager.getString(C3632R.string.wallet_details_info_bitcoin_description), null, LocaleController.getString("OK", C3632R.string.OK), 4, null);
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return new DialogModel(this.resourceManager.getString(C3632R.string.wallet_details_info_tron_title), this.resourceManager.getString(C3632R.string.wallet_details_info_tron_description), null, LocaleController.getString("OK", C3632R.string.OK), 4, null);
            }
            return new DialogModel(this.resourceManager.getString(C3632R.string.wallet_details_info_ton_title), this.resourceManager.getString(C3632R.string.wallet_details_info_ton_description), null, LocaleController.getString("OK", C3632R.string.OK), 4, null);
        }
        return new DialogModel(this.resourceManager.getString(C3632R.string.wallet_details_info_evm_title), this.resourceManager.getString(C3632R.string.wallet_details_info_evm_description), null, LocaleController.getString("OK", C3632R.string.OK), 4, null);
    }

    private final String getWalletCreationDateText(BlockchainType blockchainType) {
        String dataByBlockchain = this.cryptoPreferenceHelper.getWalletCreationDates().getDataByBlockchain(blockchainType);
        Long longOrNull = dataByBlockchain != null ? StringsKt__StringNumberConversionsKt.toLongOrNull(dataByBlockchain) : null;
        return DateFormatter.format$default(DateFormatter.DateType.DATE_AND_TIME, new Date(longOrNull != null ? longOrNull.longValue() : DateExtKt.now()), null, null, 12, null);
    }

    private final void showResetAllWalletsDialog() {
        ((BlockchainsManagementView) getViewState()).showResetAllWalletsConfirmationDialog(new DialogModel(this.resourceManager.getString(C3632R.string.wallet_reset_all_title), this.resourceManager.getString(C3632R.string.wallet_reset_all_description), this.resourceManager.getString(C3632R.string.common_cancel), LocaleController.getString("Reset", C3632R.string.Reset)));
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.class).observeOn(rxEventBus.getSchedulersProvider().mo1013ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents domainRxEvents) {
                m1647invoke(domainRxEvents);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1647invoke(DomainRxEvents it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents domainRxEvents = it;
                if (Intrinsics.areEqual(domainRxEvents, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(domainRxEvents, DomainRxEvents.WalletRestored.INSTANCE)) {
                    BlockchainsManagementPresenter.this.showWallets();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}

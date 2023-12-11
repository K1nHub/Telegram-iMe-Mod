package com.iMe.p030ui.wallet.donations;

import com.iMe.common.TelegramConstants;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.mapper.transaction.TransactionUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.wallet.SendCryptoQRData;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.wallet.CryptoHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ManageLinksActivity;
import timber.log.Timber;
/* compiled from: WalletDonationsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.donations.WalletDonationsPresenter */
/* loaded from: classes3.dex */
public final class WalletDonationsPresenter extends BasePresenter<WalletDonationsView> {
    private final CryptoAccessManager accessManager;
    private Result<String> addressInfoResultState;
    private long apiChatId;
    private Result<TokenBalance> balanceResultState;
    private final long chatId;
    private int connectionState;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private String currentDonationsAddress;
    private final DonationsInteractor donationsInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final int screenType;
    private List<TransactionItem> transactions;
    private Result<? extends List<? extends Transaction>> transactionsResultState;
    private TokenBalance walletBalance;

    public WalletDonationsPresenter(long j, int i, DonationsInteractor donationsInteractor, RxEventBus rxEventBus, CryptoAccessManager accessManager, ResourceManager resourceManager, SchedulersProvider schedulersProvider, CryptoWalletInteractor cryptoWalletInteractor) {
        Intrinsics.checkNotNullParameter(donationsInteractor, "donationsInteractor");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(accessManager, "accessManager");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        this.chatId = j;
        this.screenType = i;
        this.donationsInteractor = donationsInteractor;
        this.rxEventBus = rxEventBus;
        this.accessManager = accessManager;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.currentDonationsAddress = "";
        this.transactions = new ArrayList();
        this.connectionState = -1;
        this.apiChatId = -1L;
    }

    public final void checkLoadedDataOnConnectionChanged(int i) {
        if (this.connectionState != i) {
            this.connectionState = i;
            if (i == 3) {
                if (!(this.addressInfoResultState instanceof Result.Success)) {
                    loadDonationAddress();
                } else if ((this.balanceResultState instanceof Result.Success) && (this.transactionsResultState instanceof Result.Success)) {
                } else {
                    loadWalletInformation();
                }
            }
        }
    }

    public final boolean isLoadingDonationInformation() {
        return (this.transactionsResultState instanceof Result.Loading) || (this.balanceResultState instanceof Result.Loading);
    }

    public final TokenBalance getDonationBalance() {
        return this.walletBalance;
    }

    public final String getCurrentDonationsAddress() {
        Result<String> result = this.addressInfoResultState;
        if ((result instanceof Result.Loading) || result == null) {
            return this.resourceManager.getString(C3632R.string.common_progress_state_title);
        }
        return this.currentDonationsAddress;
    }

    public final void unlinkWalletAddress() {
        ((WalletDonationsView) getViewState()).showConfirmDialog(getUnlinkWalletAddressDialogModel(this.currentDonationsAddress), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletDonationsPresenter.unlinkWalletAddress$lambda$0(WalletDonationsPresenter.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unlinkWalletAddress$lambda$0(WalletDonationsPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.disableDonation();
    }

    public final void linkCryptoWalletAddress() {
        Wallet.EVM evm = (Wallet.EVM) this.accessManager.getWallet(BlockchainType.EVM);
        final String address = evm != null ? evm.getAddress() : null;
        if (address == null) {
            address = "";
        }
        ((WalletDonationsView) getViewState()).showConfirmDialog(getLinkAddressDialogModel(address, true), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletDonationsPresenter.linkCryptoWalletAddress$lambda$1(WalletDonationsPresenter.this, address);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void linkCryptoWalletAddress$lambda$1(WalletDonationsPresenter this$0, String walletAddress) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletAddress, "$walletAddress");
        this$0.saveDonationAddress(walletAddress);
    }

    public final void linkAddress(final String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        if ((address.length() > 0) && Intrinsics.areEqual(address, this.currentDonationsAddress)) {
            ((WalletDonationsView) getViewState()).showToast(this.resourceManager.getString(C3632R.string.channel_donations_the_same_address_error));
        } else if (CryptoHelper.isWithEthereumPrefix(address)) {
            extractAddressForLink(address);
        } else {
            Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(address, BlockchainType.EVM).observeOn(this.schedulersProvider.mo1010ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
            Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                    m1705invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1705invoke(Result<? extends Boolean> it) {
                    ResourceManager resourceManager;
                    ResourceManager resourceManager2;
                    DialogModel linkAddressDialogModel;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends Boolean> result = it;
                    if (!(result instanceof Result.Success)) {
                        if (result instanceof Result.Error) {
                            resourceManager = WalletDonationsPresenter.this.resourceManager;
                            ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                        }
                    } else if (((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                        linkAddressDialogModel = WalletDonationsPresenter.this.getLinkAddressDialogModel(address, false);
                        final WalletDonationsPresenter walletDonationsPresenter = WalletDonationsPresenter.this;
                        final String str = address;
                        ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showConfirmDialog(linkAddressDialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$linkAddress$1$1
                            @Override // com.iMe.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                WalletDonationsPresenter.this.saveDonationAddress(str);
                            }
                        });
                    } else {
                        resourceManager2 = WalletDonationsPresenter.this.resourceManager;
                        ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showToast(resourceManager2.getString(C3632R.string.channel_donations_incorrect_address_error));
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$2
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
            })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
        }
    }

    public final boolean isCryptoAddressCreated() {
        return this.accessManager.isCurrentBlockchainWalletCreated();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if (this.screenType == ManageLinksActivity.CHANNEL_ADMIN_DONATIONS) {
            this.apiChatId = TelegramConstants.INSTANCE.prepareChatIdForBotAPI(this.chatId);
            loadDonationAddress();
        }
    }

    private final void extractAddressForLink(String str) {
        Observable<Result<SendCryptoQRData>> observeOn = CryptoHelper.extractAddressAndAmount(str, BlockchainType.EVM, this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddressAndAmount(…(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends SendCryptoQRData>, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$extractAddressForLink$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SendCryptoQRData> result) {
                m1704invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1704invoke(Result<? extends SendCryptoQRData> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends SendCryptoQRData> result = it;
                if (result instanceof Result.Success) {
                    WalletDonationsPresenter.this.linkAddress(((SendCryptoQRData) ((Result.Success) result).getData()).getAddress());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$extractAddressForLink$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }

    private final boolean isDonationEnabled() {
        return this.currentDonationsAddress.length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadWalletInformation() {
        if (isDonationEnabled()) {
            loadDonationTransactions();
            loadDonationWalletBalance();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadDonationAddress() {
        Observable<Result<String>> observeOn = this.donationsInteractor.getDonationAddress(this.apiChatId).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1706invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1706invoke(Result<? extends String> it) {
                String str;
                ResourceManager resourceManager;
                String str2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                WalletDonationsPresenter.this.addressInfoResultState = result;
                if (result instanceof Result.Success) {
                    WalletDonationsPresenter.this.currentDonationsAddress = (String) ((Result.Success) result).getData();
                    str2 = WalletDonationsPresenter.this.currentDonationsAddress;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).onDonationsAddressLoaded(str2);
                    WalletDonationsPresenter.this.loadWalletInformation();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() != FirebaseFunctionsErrorHandler.CryptoErrorStatus.DONATIONS_NOT_CONFIGURED_YET) {
                        resourceManager = WalletDonationsPresenter.this.resourceManager;
                        ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                    }
                    str = WalletDonationsPresenter.this.currentDonationsAddress;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).onDonationsAddressLoaded(str);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$2
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

    private final void loadDonationTransactions() {
        Observable observeOn = DonationsInteractor.getDonationTransactionHistory$default(this.donationsInteractor, this.apiChatId, null, 0, null, 14, null).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends Transaction>>, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Transaction>> result) {
                m1707invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1707invoke(Result<? extends List<? extends Transaction>> it) {
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                List mutableList;
                List<TransactionItem> list;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends Transaction>> result = it;
                WalletDonationsPresenter.this.transactionsResultState = result;
                if (result instanceof Result.Success) {
                    WalletDonationsPresenter walletDonationsPresenter = WalletDonationsPresenter.this;
                    Iterable<Transaction> iterable = (Iterable) ((Result.Success) result).getData();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (Transaction transaction : iterable) {
                        arrayList.add(TransactionUiMappingKt.mapToUI(transaction));
                    }
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                    walletDonationsPresenter.transactions = mutableList;
                    list = WalletDonationsPresenter.this.transactions;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).onDonationsTransactionsLoaded(list);
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletDonationsPresenter.this.resourceManager;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).updateScreenAfterLoad();
                } else if (result instanceof Result.Loading) {
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).updateScreenAfterLoad();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$2
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

    private final void disableDonation() {
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.disableDonation(this.apiChatId).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$disableDonation$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1703invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1703invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                List list;
                List<TransactionItem> list2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    WalletDonationsPresenter.this.currentDonationsAddress = "";
                    WalletDonationsPresenter.this.walletBalance = null;
                    list = WalletDonationsPresenter.this.transactions;
                    list.clear();
                    list2 = WalletDonationsPresenter.this.transactions;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).onDonationsTransactionsLoaded(list2);
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).updateScreenAfterLoad();
                    WalletDonationsPresenter.this.updateChatDonateAvailable();
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletDonationsPresenter.this.resourceManager;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$disableDonation$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveDonationAddress(final String str) {
        Wallet.EVM evm = (Wallet.EVM) this.accessManager.getWallet(BlockchainType.EVM);
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.enableDonationFor(this.apiChatId, str, Intrinsics.areEqual(evm != null ? evm.getAddress() : null, str)).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1709invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1709invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                String str2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    WalletDonationsPresenter.this.currentDonationsAddress = str;
                    str2 = WalletDonationsPresenter.this.currentDonationsAddress;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).onDonationsAddressLoaded(str2);
                    WalletDonationsPresenter.this.loadWalletInformation();
                    WalletDonationsPresenter.this.updateChatDonateAvailable();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.CryptoErrorStatus.DONATIONS_ADDRESS_ALREADY_LINKED) {
                        WalletDonationsPresenter.this.loadDonationAddress();
                    }
                    resourceManager = WalletDonationsPresenter.this.resourceManager;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$2
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

    private final void loadDonationWalletBalance() {
        Observable observeOn = DonationsInteractor.getDonationWalletBalance$default(this.donationsInteractor, this.apiChatId, null, 2, null).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TokenBalance>, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$loadDonationWalletBalance$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
                m1708invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1708invoke(Result<? extends TokenBalance> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TokenBalance> result = it;
                WalletDonationsPresenter.this.balanceResultState = result;
                if (result instanceof Result.Success) {
                    WalletDonationsPresenter.this.walletBalance = (TokenBalance) ((Result.Success) result).getData();
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletDonationsPresenter.this.resourceManager;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
                ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).updateScreenAfterLoad();
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$loadDonationWalletBalance$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateChatDonateAvailable() {
        this.rxEventBus.publish(new DomainRxEvents.DonationAddressUpdated(this.chatId));
    }

    private final DialogModel getUnlinkWalletAddressDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3632R.string.channel_donations_unlink_address_dialog_title), this.resourceManager.getString(C3632R.string.channel_donations_unlink_address_dialog_description, str), this.resourceManager.getString(C3632R.string.common_cancel), this.resourceManager.getString(C3632R.string.channel_donations_unlink_address_dialog_positive_button));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogModel getLinkAddressDialogModel(String str, boolean z) {
        int i;
        if (z) {
            i = C3632R.string.channel_donations_link_non_castodial_wallet_address_dialog_title;
        } else {
            i = C3632R.string.channel_donations_link_address_dialog_title;
        }
        return new DialogModel(this.resourceManager.getString(i), this.resourceManager.getString(C3632R.string.channel_donations_link_address_dialog_description, str), this.resourceManager.getString(C3632R.string.common_cancel), this.resourceManager.getString(C3632R.string.channel_donations_link_address_dialog_positive_button));
    }
}

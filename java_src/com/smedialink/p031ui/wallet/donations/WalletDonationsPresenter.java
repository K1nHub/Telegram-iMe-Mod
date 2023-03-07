package com.smedialink.p031ui.wallet.donations;

import com.smedialink.common.TelegramConstants;
import com.smedialink.mapper.transaction.TransactionUiMappingKt;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.transaction.TransactionItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.helper.wallet.CryptoHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3158R;
import org.telegram.p048ui.ManageLinksActivity;
import org.web3j.crypto.WalletUtils;
import timber.log.Timber;
/* compiled from: WalletDonationsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.donations.WalletDonationsPresenter */
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
            return this.resourceManager.getString(C3158R.string.common_progress_state_title);
        }
        return this.currentDonationsAddress;
    }

    public final void unlinkWalletAddress() {
        ((WalletDonationsView) getViewState()).showConfirmDialog(getUnlinkWalletAddressDialogModel(this.currentDonationsAddress), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$$ExternalSyntheticLambda0
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletDonationsPresenter.m1626unlinkWalletAddress$lambda0(WalletDonationsPresenter.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: unlinkWalletAddress$lambda-0  reason: not valid java name */
    public static final void m1626unlinkWalletAddress$lambda0(WalletDonationsPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.disableDonation();
    }

    public final void linkCryptoWalletAddress() {
        Wallet.EVM evm = (Wallet.EVM) this.accessManager.getWallet(BlockchainType.EVM);
        final String address = evm == null ? null : evm.getAddress();
        if (address == null) {
            address = "";
        }
        ((WalletDonationsView) getViewState()).showConfirmDialog(getLinkAddressDialogModel(address, true), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$$ExternalSyntheticLambda2
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletDonationsPresenter.m1625linkCryptoWalletAddress$lambda1(WalletDonationsPresenter.this, address);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: linkCryptoWalletAddress$lambda-1  reason: not valid java name */
    public static final void m1625linkCryptoWalletAddress$lambda1(WalletDonationsPresenter this$0, String walletAddress) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletAddress, "$walletAddress");
        this$0.saveDonationAddress(walletAddress);
    }

    public final void linkAddress(final String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        if ((address.length() > 0) && Intrinsics.areEqual(address, this.currentDonationsAddress)) {
            ((WalletDonationsView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.channel_donations_the_same_address_error));
        } else if (CryptoHelper.isWithEthereumPrefix(address)) {
            extractAddressForLink(address);
        } else if (WalletUtils.isValidAddress(address)) {
            ((WalletDonationsView) getViewState()).showConfirmDialog(getLinkAddressDialogModel(address, false), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$$ExternalSyntheticLambda1
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletDonationsPresenter.m1624linkAddress$lambda2(WalletDonationsPresenter.this, address);
                }
            });
        } else {
            ((WalletDonationsView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.channel_donations_incorrect_address_error));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: linkAddress$lambda-2  reason: not valid java name */
    public static final void m1624linkAddress$lambda2(WalletDonationsPresenter this$0, String address) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(address, "$address");
        this$0.saveDonationAddress(address);
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
        Observable<Result<String>> observeOn = CryptoHelper.extractAddress(str, BlockchainType.EVM, this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddress(\n        …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$extractAddressForLink$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    WalletDonationsPresenter.this.linkAddress((String) ((Result.Success) result).getData());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$extractAddressForLink$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        }), "viewState: BaseView? = n…  onError.invoke()\n    })");
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
        Observable<Result<String>> observeOn = this.donationsInteractor.getDonationAddress(this.apiChatId).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                String str;
                ResourceManager resourceManager;
                String str2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                WalletDonationsPresenter.this.addressInfoResultState = result;
                if (result instanceof Result.Success) {
                    WalletDonationsPresenter.this.currentDonationsAddress = (String) ((Result.Success) result).getData();
                    str2 = WalletDonationsPresenter.this.currentDonationsAddress;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).onDonationsAddressLoaded(str2);
                    WalletDonationsPresenter.this.loadWalletInformation();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() != FirebaseFunctionsErrorHandler.CryptoErrorStatus.DONATIONS_NOT_CONFIGURED_YET) {
                        ErrorModel error2 = error.getError();
                        resourceManager = WalletDonationsPresenter.this.resourceManager;
                        ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showToast(error2.getMessage(resourceManager));
                    }
                    str = WalletDonationsPresenter.this.currentDonationsAddress;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).onDonationsAddressLoaded(str);
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadDonationTransactions() {
        Observable observeOn = DonationsInteractor.getDonationTransactionHistory$default(this.donationsInteractor, this.apiChatId, null, 0, null, 14, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                List mutableList;
                List<TransactionItem> list;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
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
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletDonationsPresenter.this.resourceManager;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).updateScreenAfterLoad();
                } else if (result instanceof Result.Loading) {
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).updateScreenAfterLoad();
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void disableDonation() {
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.disableDonation(this.apiChatId).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$disableDonation$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                List list;
                List<TransactionItem> list2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
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
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletDonationsPresenter.this.resourceManager;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$disableDonation$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void saveDonationAddress(final String str) {
        Wallet.EVM evm = (Wallet.EVM) this.accessManager.getWallet(BlockchainType.EVM);
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.enableDonationFor(this.apiChatId, str, Intrinsics.areEqual(evm == null ? null : evm.getAddress(), str)).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                String str2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
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
                    ErrorModel error2 = error.getError();
                    resourceManager = WalletDonationsPresenter.this.resourceManager;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showToast(error2.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadDonationWalletBalance() {
        Observable observeOn = DonationsInteractor.getDonationWalletBalance$default(this.donationsInteractor, this.apiChatId, null, 2, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$loadDonationWalletBalance$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                WalletDonationsPresenter.this.balanceResultState = result;
                if (result instanceof Result.Success) {
                    WalletDonationsPresenter.this.walletBalance = (TokenBalance) ((Result.Success) result).getData();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletDonationsPresenter.this.resourceManager;
                    ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
                ((WalletDonationsView) WalletDonationsPresenter.this.getViewState()).updateScreenAfterLoad();
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$loadDonationWalletBalance$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateChatDonateAvailable() {
        this.rxEventBus.publish(new DomainRxEvents.DonationAddressUpdated(this.chatId));
    }

    private final DialogModel getUnlinkWalletAddressDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3158R.string.channel_donations_unlink_address_dialog_title), this.resourceManager.getString(C3158R.string.channel_donations_unlink_address_dialog_description, str), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.channel_donations_unlink_address_dialog_positive_button));
    }

    private final DialogModel getLinkAddressDialogModel(String str, boolean z) {
        int i;
        if (z) {
            i = C3158R.string.channel_donations_link_non_castodial_wallet_address_dialog_title;
        } else {
            i = C3158R.string.channel_donations_link_address_dialog_title;
        }
        return new DialogModel(this.resourceManager.getString(i), this.resourceManager.getString(C3158R.string.channel_donations_link_address_dialog_description, str), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.channel_donations_link_address_dialog_positive_button));
    }
}

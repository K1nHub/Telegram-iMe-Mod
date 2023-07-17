package com.iMe.p031ui.wallet.donations;

import com.iMe.common.TelegramConstants;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.wallet.CryptoHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ManageLinksActivity;
/* compiled from: WalletDonationsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.donations.WalletDonationsPresenter */
/* loaded from: classes4.dex */
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
            return this.resourceManager.getString(C3417R.string.common_progress_state_title);
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

    public final void linkAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        if ((address.length() > 0) && Intrinsics.areEqual(address, this.currentDonationsAddress)) {
            ((WalletDonationsView) getViewState()).showToast(this.resourceManager.getString(C3417R.string.channel_donations_the_same_address_error));
        } else if (CryptoHelper.isWithEthereumPrefix(address)) {
            extractAddressForLink(address);
        } else {
            Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(address, BlockchainType.EVM).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
            Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2252x3596b839(this, address)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2253x3596b83a(null))), "viewState: BaseView? = n…Error.invoke()\n        })");
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
        Observable<Result<String>> observeOn = CryptoHelper.extractAddress(str, BlockchainType.EVM, this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddress(\n        …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2250x82948e4f(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2251x82948e50(null))), "viewState: BaseView? = n…Error.invoke()\n        })");
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
        Observable<Result<String>> observeOn = this.donationsInteractor.getDonationAddress(this.apiChatId).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2254x23f668db(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2255x23f668dc((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadDonationTransactions() {
        Observable observeOn = DonationsInteractor.getDonationTransactionHistory$default(this.donationsInteractor, this.apiChatId, null, 0, null, 14, null).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2256x571632f4(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2257x571632f5((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void disableDonation() {
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.disableDonation(this.apiChatId).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2248x93b9a39(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2249x93b9a3a((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveDonationAddress(String str) {
        Wallet.EVM evm = (Wallet.EVM) this.accessManager.getWallet(BlockchainType.EVM);
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.enableDonationFor(this.apiChatId, str, Intrinsics.areEqual(evm != null ? evm.getAddress() : null, str)).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2260x322e1e4(this, str)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2261x322e1e5((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadDonationWalletBalance() {
        Observable observeOn = DonationsInteractor.getDonationWalletBalance$default(this.donationsInteractor, this.apiChatId, null, 2, null).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2258x2935900a(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2259x2935900b((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateChatDonateAvailable() {
        this.rxEventBus.publish(new DomainRxEvents.DonationAddressUpdated(this.chatId));
    }

    private final DialogModel getUnlinkWalletAddressDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3417R.string.channel_donations_unlink_address_dialog_title), this.resourceManager.getString(C3417R.string.channel_donations_unlink_address_dialog_description, str), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.channel_donations_unlink_address_dialog_positive_button));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogModel getLinkAddressDialogModel(String str, boolean z) {
        int i;
        if (z) {
            i = C3417R.string.channel_donations_link_non_castodial_wallet_address_dialog_title;
        } else {
            i = C3417R.string.channel_donations_link_address_dialog_title;
        }
        return new DialogModel(this.resourceManager.getString(i), this.resourceManager.getString(C3417R.string.channel_donations_link_address_dialog_description, str), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.channel_donations_link_address_dialog_positive_button));
    }
}

package com.iMe.p031ui.wallet.transaction.details;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.ActionItem;
import com.iMe.model.wallet.transaction.CryptoBoxActionItem;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.model.wallet.transaction.TransactionActionItem;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor;
import com.iMe.storage.domain.interactor.crypto.cancel.CancelInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxActionStatus;
import com.iMe.storage.domain.model.staking.StakingOperationStatus;
import com.iMe.storage.domain.model.staking.StakingOperationType;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.model.wallet.transaction.TransactionType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.DateFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3558R;
import timber.log.Timber;
/* compiled from: WalletTransactionDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter */
/* loaded from: classes4.dex */
public final class WalletTransactionDetailsPresenter extends BasePresenter<WalletTransactionDetailsView> {
    private final BoostInteractor boostInteractor;
    private final CancelInteractor cancelInteractor;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final WalletTransactionDetailsScreenType screenType;
    private final TelegramGateway telegramGateway;

    /* compiled from: WalletTransactionDetailsPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionDirection.values().length];
            try {
                iArr[TransactionDirection.f459IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionDirection.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionDirection.SELF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletTransactionDetailsPresenter(WalletTransactionDetailsScreenType screenType, CancelInteractor cancelInteractor, BoostInteractor boostInteractor, ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper, SchedulersProvider schedulersProvider, TelegramGateway telegramGateway) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(cancelInteractor, "cancelInteractor");
        Intrinsics.checkNotNullParameter(boostInteractor, "boostInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.screenType = screenType;
        this.cancelInteractor = cancelInteractor;
        this.boostInteractor = boostInteractor;
        this.resourceManager = resourceManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.schedulersProvider = schedulersProvider;
        this.telegramGateway = telegramGateway;
    }

    public final void shareTransaction() {
        ((WalletTransactionDetailsView) getViewState()).shareTransactionInfo(getScanUrl());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.StakingOperationDetails) {
            StakingOperationItem item = ((WalletTransactionDetailsScreenType.StakingOperationDetails) walletTransactionDetailsScreenType).getItem();
            WalletTransactionDetailsView walletTransactionDetailsView = (WalletTransactionDetailsView) getViewState();
            int icon = item.getIcon();
            String formatISODate = StringExtKt.formatISODate(item.getCreatedAt(), DateFormatter.DateType.DATE_AND_TIME);
            String transactionTitle = item.getTransactionTitle(this.resourceManager);
            String amount = item.getAmount(this.resourceManager);
            String string = this.resourceManager.getString(C3558R.string.wallet_transaction_details_transaction_hash_title);
            String txHash = item.getTxHash();
            walletTransactionDetailsView.setupScreenWithData(icon, transactionTitle, amount, string, txHash.length() == 0 ? "-" : txHash, null, item.getStatusText(this.resourceManager), formatISODate, ((WalletTransactionDetailsScreenType.StakingOperationDetails) this.screenType).getNetwork().getFullName(), getFee(), isFeeEnabled(), getScanUrl().length() > 0, item.getToken().getAvatarUrl());
        } else if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.CryptoBoxActionDetails) {
            CryptoBoxActionItem item2 = ((WalletTransactionDetailsScreenType.CryptoBoxActionDetails) walletTransactionDetailsScreenType).getItem();
            WalletTransactionDetailsView walletTransactionDetailsView2 = (WalletTransactionDetailsView) getViewState();
            int icon2 = item2.getIcon();
            String formatISODate2 = StringExtKt.formatISODate(item2.getCreatedAt(), DateFormatter.DateType.DATE_AND_TIME);
            String transactionTitle2 = item2.getTransactionTitle(this.resourceManager);
            String amount2 = item2.getAmount();
            String string2 = this.resourceManager.getString(C3558R.string.wallet_transaction_details_transaction_hash_title);
            String txHash2 = item2.getTxHash();
            walletTransactionDetailsView2.setupScreenWithData(icon2, transactionTitle2, amount2, string2, txHash2.length() == 0 ? "-" : txHash2, null, item2.getStatusText(this.resourceManager), formatISODate2, ((WalletTransactionDetailsScreenType.CryptoBoxActionDetails) this.screenType).getNetwork().getFullName(), getFee(), isFeeEnabled(), getScanUrl().length() > 0, item2.getToken().getAvatarUrl());
        } else if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
            TransactionItem item3 = ((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem();
            WalletTransactionDetailsView walletTransactionDetailsView3 = (WalletTransactionDetailsView) getViewState();
            int transactionIcon = item3.getTransactionIcon();
            String formatISODate3 = StringExtKt.formatISODate(item3.getTransaction().getCreatedAt(), DateFormatter.DateType.DATE_AND_TIME);
            String transactionTitle3 = item3.getTransactionTitle(this.resourceManager);
            String amount3 = item3.getAmount(this.resourceManager);
            String recipientOrSenderOrElseTitle = getRecipientOrSenderOrElseTitle(item3.getTransaction());
            String recipientOrSenderOrElseValue = getRecipientOrSenderOrElseValue(item3.getTransaction());
            Transaction transaction = ((WalletTransactionDetailsScreenType.TransactionDetails) this.screenType).getItem().getTransaction();
            Transaction.Crypto.Transfer transfer = transaction instanceof Transaction.Crypto.Transfer ? (Transaction.Crypto.Transfer) transaction : null;
            String payloadMessage = transfer != null ? transfer.getPayloadMessage() : null;
            String string3 = this.resourceManager.getString(item3.getTransaction().getProcessingType().getTitle());
            boolean isFeeEnabled = isFeeEnabled();
            walletTransactionDetailsView3.setupScreenWithData(transactionIcon, transactionTitle3, amount3, recipientOrSenderOrElseTitle, recipientOrSenderOrElseValue, payloadMessage, this.resourceManager.getString(item3.getTransaction().getStatus().getTitle()), formatISODate3, string3, getFee(), isFeeEnabled, getScanUrl().length() > 0, null);
        }
        setupTransactionActions(resolveTransactionAction());
    }

    private final String getRecipientOrSenderOrElseTitle(Transaction transaction) {
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            return this.resourceManager.getString(C3558R.string.wallet_transaction_details_simplex_order_id_title);
        }
        if (transaction instanceof Transaction.Crypto.Swap ? true : transaction instanceof Transaction.Crypto.Approve) {
            return this.resourceManager.getString(C3558R.string.wallet_transaction_details_transaction_hash_title);
        }
        int i = WhenMappings.$EnumSwitchMapping$0[transaction.getDirection().ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                return this.resourceManager.getString(C3558R.string.wallet_transaction_details_recipient_title);
            }
            throw new NoWhenBranchMatchedException();
        }
        return this.resourceManager.getString(C3558R.string.wallet_transaction_details_sender_title);
    }

    private final String getRecipientOrSenderOrElseValue(Transaction transaction) {
        if (transaction instanceof Transaction.Referral) {
            return this.resourceManager.getString(C3558R.string.wallet_transaction_details_sender_referral, ((Transaction.Referral) transaction).getInvitedUserId());
        }
        if (transaction instanceof Transaction.Lottery ? true : transaction instanceof Transaction.Registration) {
            return this.resourceManager.getString(C3558R.string.wallet_transaction_details_sender_bonus);
        }
        if (transaction instanceof Transaction.Transfer) {
            return ((Transaction.Transfer) transaction).getRecipientUserId();
        }
        if (transaction instanceof Transaction.Crypto.Swap) {
            return ((Transaction.Crypto.Swap) transaction).getTxHash();
        }
        if (transaction instanceof Transaction.Crypto.Approve) {
            return ((Transaction.Crypto.Approve) transaction).getTxHash();
        }
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            return ((Transaction.Crypto.SimplexPurchase) transaction).getOrderId();
        }
        if (transaction instanceof Transaction.Crypto.Transfer) {
            int i = WhenMappings.$EnumSwitchMapping$0[transaction.getDirection().ordinal()];
            if (i != 1) {
                if (i == 2 || i == 3) {
                    return ((Transaction.Crypto.Transfer) transaction).getRecipientAddress();
                }
                throw new NoWhenBranchMatchedException();
            }
            return ((Transaction.Crypto.Transfer) transaction).getSenderAddress();
        }
        return this.resourceManager.getString(C3558R.string.wallet_transaction_details_sender);
    }

    private final List<Pair<TransactionActionItem, Function0<Unit>>> resolveTransactionAction() {
        ArrayList arrayList = new ArrayList();
        if (canAskSupport()) {
            arrayList.add(TuplesKt.m103to(TransactionActionItem.Support.INSTANCE, new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    WalletTransactionDetailsPresenter.this.startAskSupport();
                }
            }));
        }
        if (canOpenProfile()) {
            arrayList.add(TuplesKt.m103to(TransactionActionItem.Profile.INSTANCE, new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$1$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    WalletTransactionDetailsPresenter.this.startProfileScreen();
                }
            }));
        }
        if (canOpenScanSite()) {
            Network.Explorer explorer = getOperationNetwork().getExplorer();
            arrayList.add(TuplesKt.m103to(new TransactionActionItem.OpenScan(this.resourceManager.getString(C3558R.string.wallet_transaction_details_action_open_etherscan, explorer.getName()), explorer.getLogoUrl()), new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$1$3$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    WalletTransactionDetailsPresenter.this.startBrowserWithUrl();
                }
            }));
        }
        if (canCopy()) {
            arrayList.add(TuplesKt.m103to(new TransactionActionItem.Copy(getCopyTitle()), new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$1$4
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    WalletTransactionDetailsPresenter.this.copyAddress();
                }
            }));
        }
        if (canCancelOrBoost()) {
            arrayList.add(TuplesKt.m103to(TransactionActionItem.Cancel.INSTANCE, new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$1$5
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    WalletTransactionDetailsPresenter.this.startCancelTransaction();
                }
            }));
        }
        if (canCancelOrBoost()) {
            arrayList.add(TuplesKt.m103to(TransactionActionItem.Boost.INSTANCE, new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$1$6
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    WalletTransactionDetailsPresenter.this.startBoostTransaction();
                }
            }));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCancelTransaction() {
        TransactionItem item;
        final Transaction transaction;
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        WalletTransactionDetailsScreenType.TransactionDetails transactionDetails = walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails ? (WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType : null;
        if (transactionDetails == null || (item = transactionDetails.getItem()) == null || (transaction = item.getTransaction()) == null || !(transaction instanceof Transaction.Crypto) || transaction.getStatus() != Status.PENDING) {
            return;
        }
        ((WalletTransactionDetailsView) getViewState()).showConfirmCancelDialog(getConfirmCancelDialogModel(), new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$startCancelTransaction$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                WalletTransactionDetailsPresenter.this.cancelTransaction(((Transaction.Crypto) transaction).getTxHash());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBoostTransaction() {
        TransactionItem item;
        final Transaction transaction;
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        WalletTransactionDetailsScreenType.TransactionDetails transactionDetails = walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails ? (WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType : null;
        if (transactionDetails == null || (item = transactionDetails.getItem()) == null || (transaction = item.getTransaction()) == null || !(transaction instanceof Transaction.Crypto) || transaction.getStatus() != Status.PENDING) {
            return;
        }
        ((WalletTransactionDetailsView) getViewState()).showConfirmBoostDialog(getConfirmBoostDialogModel(), new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$startBoostTransaction$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                WalletTransactionDetailsPresenter.this.boostTransaction(((Transaction.Crypto) transaction).getTxHash());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelTransaction(final String str) {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
            Observable<Result<String>> observeOn = this.cancelInteractor.cancelEthTransaction(((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction().getToken().getTicker(), str).observeOn(this.schedulersProvider.mo716ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "cancelInteractor\n       …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                    m1633invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1633invoke(Result<? extends String> it) {
                    ResourceManager resourceManager;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends String> result = it;
                    if (result instanceof Result.Success) {
                        ((WalletTransactionDetailsView) WalletTransactionDetailsPresenter.this.getViewState()).onSuccessCancelTransaction(str);
                    } else if (result instanceof Result.Error) {
                        resourceManager = WalletTransactionDetailsPresenter.this.resourceManager;
                        ((WalletTransactionDetailsView) WalletTransactionDetailsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$2
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
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void boostTransaction(final String str) {
        Observable<Result<String>> observeOn = this.boostInteractor.boostEthTransaction(str).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "boostInteractor\n        …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1632invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1632invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    ((WalletTransactionDetailsView) WalletTransactionDetailsPresenter.this.getViewState()).onSuccessBoostTransaction(str);
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletTransactionDetailsPresenter.this.resourceManager;
                    ((WalletTransactionDetailsView) WalletTransactionDetailsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final Network getOperationNetwork() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.StakingOperationDetails) {
            return ((WalletTransactionDetailsScreenType.StakingOperationDetails) walletTransactionDetailsScreenType).getNetwork();
        }
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.CryptoBoxActionDetails) {
            return ((WalletTransactionDetailsScreenType.CryptoBoxActionDetails) walletTransactionDetailsScreenType).getNetwork();
        }
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
            return getCryptoTransactionNetwork(((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction());
        }
        throw new NoWhenBranchMatchedException();
    }

    private final boolean isFeeEnabled() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.StakingOperationDetails) {
            if (((WalletTransactionDetailsScreenType.StakingOperationDetails) walletTransactionDetailsScreenType).getItem().getFee() == null) {
                return false;
            }
        } else if (!(walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.CryptoBoxActionDetails)) {
            if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
                Transaction transaction = ((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction();
                if (transaction.getDirection() != TransactionDirection.OUT && transaction.getDirection() != TransactionDirection.SELF && transaction.getType() != TransactionType.SWAP_CRYPTO) {
                    return false;
                }
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return true;
    }

    private final boolean canAskSupport() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        return (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) && (((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction() instanceof Transaction.Crypto.SimplexPurchase);
    }

    private final boolean canCancelOrBoost() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.StakingOperationDetails) {
            StakingOperationItem item = ((WalletTransactionDetailsScreenType.StakingOperationDetails) walletTransactionDetailsScreenType).getItem();
            if (item.getStatus() == StakingOperationStatus.PENDING) {
                if ((item.getTxHash().length() > 0) && item.getType() == StakingOperationType.DEPOSIT) {
                    return true;
                }
            }
        } else if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.CryptoBoxActionDetails) {
            CryptoBoxActionItem item2 = ((WalletTransactionDetailsScreenType.CryptoBoxActionDetails) walletTransactionDetailsScreenType).getItem();
            if (item2.getStatus() == CryptoBoxActionStatus.PENDING) {
                if (item2.getTxHash().length() > 0) {
                    return true;
                }
            }
        } else if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction();
            if (transaction.getStatus() == Status.PENDING && (transaction instanceof Transaction.Crypto)) {
                Transaction.Crypto crypto = (Transaction.Crypto) transaction;
                if (crypto.getNetwork().isEVM()) {
                    if ((crypto.getTxHash().length() > 0) && (transaction.getDirection() == TransactionDirection.OUT || transaction.getDirection() == TransactionDirection.SELF)) {
                        return true;
                    }
                }
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return false;
    }

    private final boolean canOpenProfile() {
        Long longOrNull;
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
            longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(getRecipientId(((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction()));
            if (hasUser(longOrNull)) {
                return true;
            }
        }
        return false;
    }

    private final boolean canCopy() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if ((walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) && (((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction() instanceof Transaction.Crypto.SimplexPurchase)) {
            return true;
        }
        return getCopyValue().length() > 0;
    }

    private final boolean canOpenScanSite() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.StakingOperationDetails) {
            if (((WalletTransactionDetailsScreenType.StakingOperationDetails) walletTransactionDetailsScreenType).getItem().getTxHash().length() > 0) {
                return true;
            }
        } else if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.CryptoBoxActionDetails) {
            if (((WalletTransactionDetailsScreenType.CryptoBoxActionDetails) walletTransactionDetailsScreenType).getItem().getTxHash().length() > 0) {
                return true;
            }
        } else if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction();
            if (transaction instanceof Transaction.Crypto.Approve) {
                if (((Transaction.Crypto.Approve) transaction).getTxHash().length() > 0) {
                    return true;
                }
            } else if (transaction instanceof Transaction.Crypto.Transfer) {
                if (((Transaction.Crypto.Transfer) transaction).getTxHash().length() > 0) {
                    return true;
                }
            } else if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
                if (((Transaction.Crypto.SimplexPurchase) transaction).getTxHash().length() > 0) {
                    return true;
                }
            } else if ((transaction instanceof Transaction.Crypto.Swap) && ((Transaction.Crypto.Swap) transaction).getTxHash().length() > 0) {
                return true;
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startAskSupport() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if ((walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) && (((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction() instanceof Transaction.Crypto.SimplexPurchase)) {
            ((WalletTransactionDetailsView) getViewState()).openUrl("https://support.simplex.com/hc/en-gb/categories/360002483279-I-am-buying-with-a-credit-debit-card");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBrowserWithUrl() {
        ((WalletTransactionDetailsView) getViewState()).openUrl(getScanUrl());
    }

    private final String getScanUrl() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.StakingOperationDetails) {
            return ((WalletTransactionDetailsScreenType.StakingOperationDetails) walletTransactionDetailsScreenType).getItem().getTxHash().length() > 0 ? ((WalletTransactionDetailsScreenType.StakingOperationDetails) this.screenType).getNetwork().getTxUrl(((WalletTransactionDetailsScreenType.StakingOperationDetails) this.screenType).getItem().getTxHash()) : "";
        } else if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.CryptoBoxActionDetails) {
            return ((WalletTransactionDetailsScreenType.CryptoBoxActionDetails) walletTransactionDetailsScreenType).getItem().getTxHash().length() > 0 ? ((WalletTransactionDetailsScreenType.CryptoBoxActionDetails) this.screenType).getNetwork().getTxUrl(((WalletTransactionDetailsScreenType.CryptoBoxActionDetails) this.screenType).getItem().getTxHash()) : "";
        } else if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction();
            if (transaction instanceof Transaction.Crypto) {
                Transaction.Crypto crypto = (Transaction.Crypto) transaction;
                return crypto.getTxHash().length() > 0 ? crypto.getNetwork().getTxUrl(crypto.getTxHash()) : "";
            }
            return "";
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private final Network getCryptoTransactionNetwork(Transaction transaction) {
        return transaction instanceof Transaction.Crypto ? ((Transaction.Crypto) transaction).getNetwork() : this.cryptoPreferenceHelper.getNetwork();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0007, code lost:
        r0 = kotlin.text.StringsKt__StringNumberConversionsKt.toLongOrNull(getRecipientId(((com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.TransactionDetails) r0).getItem().getTransaction()));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startProfileScreen() {
        /*
            r3 = this;
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType r0 = r3.screenType
            boolean r1 = r0 instanceof com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.TransactionDetails
            if (r1 != 0) goto L7
            return
        L7:
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType$TransactionDetails r0 = (com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.TransactionDetails) r0
            com.iMe.model.wallet.transaction.TransactionItem r0 = r0.getItem()
            com.iMe.storage.domain.model.wallet.transaction.Transaction r0 = r0.getTransaction()
            java.lang.String r0 = r3.getRecipientId(r0)
            java.lang.Long r0 = kotlin.text.StringsKt.toLongOrNull(r0)
            if (r0 == 0) goto L28
            long r0 = r0.longValue()
            moxy.MvpView r2 = r3.getViewState()
            com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView r2 = (com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView) r2
            r2.openProfileScreen(r0)
        L28:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsPresenter.startProfileScreen():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void copyAddress() {
        ((WalletTransactionDetailsView) getViewState()).actionCopyToClipboard(getCopyValue());
    }

    private final int getCopyTitle() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.StakingOperationDetails ? true : walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.CryptoBoxActionDetails) {
            return C3558R.string.wallet_transaction_details_action_copy_hash;
        }
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction();
            if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
                return C3558R.string.wallet_token_details_action_copy_order_id;
            }
            return transaction instanceof Transaction.Crypto.Swap ? true : transaction instanceof Transaction.Crypto.Approve ? C3558R.string.wallet_transaction_details_action_copy_hash : C3558R.string.wallet_transaction_details_action_copy_address;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final String getCopyValue() {
        WalletTransactionDetailsScreenType walletTransactionDetailsScreenType = this.screenType;
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.StakingOperationDetails) {
            return ((WalletTransactionDetailsScreenType.StakingOperationDetails) walletTransactionDetailsScreenType).getItem().getTxHash();
        }
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.CryptoBoxActionDetails) {
            return ((WalletTransactionDetailsScreenType.CryptoBoxActionDetails) walletTransactionDetailsScreenType).getItem().getTxHash();
        }
        if (walletTransactionDetailsScreenType instanceof WalletTransactionDetailsScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsScreenType.TransactionDetails) walletTransactionDetailsScreenType).getItem().getTransaction();
            return transaction instanceof Transaction.Referral ? true : transaction instanceof Transaction.Transfer ? getRecipientId(((WalletTransactionDetailsScreenType.TransactionDetails) this.screenType).getItem().getTransaction()) : transaction instanceof Transaction.Crypto.Transfer ? ((WalletTransactionDetailsScreenType.TransactionDetails) this.screenType).getItem().getRecipientAddress() : transaction instanceof Transaction.Crypto.Swap ? ((Transaction.Crypto.Swap) ((WalletTransactionDetailsScreenType.TransactionDetails) this.screenType).getItem().getTransaction()).getTxHash() : transaction instanceof Transaction.Crypto.Approve ? ((Transaction.Crypto.Approve) ((WalletTransactionDetailsScreenType.TransactionDetails) this.screenType).getItem().getTransaction()).getTxHash() : transaction instanceof Transaction.Crypto.SimplexPurchase ? ((Transaction.Crypto.SimplexPurchase) ((WalletTransactionDetailsScreenType.TransactionDetails) this.screenType).getItem().getTransaction()).getOrderId() : "";
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0062, code lost:
        if (((com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.CryptoBoxActionDetails) r6.screenType).getItem().getStatus() == com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxActionStatus.PENDING) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0031, code lost:
        if (((com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.StakingOperationDetails) r6.screenType).getItem().getStatus() == com.iMe.storage.domain.model.staking.StakingOperationStatus.PENDING) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String getFee() {
        /*
            r6 = this;
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType r0 = r6.screenType
            boolean r1 = r0 instanceof com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.StakingOperationDetails
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L36
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType$StakingOperationDetails r0 = (com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.StakingOperationDetails) r0
            com.iMe.model.wallet.transaction.StakingOperationItem r0 = r0.getItem()
            com.iMe.storage.domain.model.staking.StakingOperationCost r0 = r0.getFee()
            if (r0 != 0) goto L17
            java.lang.String r0 = ""
            return r0
        L17:
            com.iMe.storage.domain.model.staking.StakingValues r1 = r0.getValue()
            java.math.BigDecimal r1 = r1.getAsToken()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r0 = r0.getToken()
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType r4 = r6.screenType
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType$StakingOperationDetails r4 = (com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.StakingOperationDetails) r4
            com.iMe.model.wallet.transaction.StakingOperationItem r4 = r4.getItem()
            com.iMe.storage.domain.model.staking.StakingOperationStatus r4 = r4.getStatus()
            com.iMe.storage.domain.model.staking.StakingOperationStatus r5 = com.iMe.storage.domain.model.staking.StakingOperationStatus.PENDING
            if (r4 != r5) goto L34
            goto L86
        L34:
            r2 = r3
            goto L86
        L36:
            boolean r1 = r0 instanceof com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.CryptoBoxActionDetails
            if (r1 == 0) goto L65
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType$CryptoBoxActionDetails r0 = (com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.CryptoBoxActionDetails) r0
            com.iMe.model.wallet.transaction.CryptoBoxActionItem r0 = r0.getItem()
            java.math.BigDecimal r1 = r0.getFeeAmount()
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType r0 = r6.screenType
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType$CryptoBoxActionDetails r0 = (com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.CryptoBoxActionDetails) r0
            com.iMe.model.wallet.transaction.CryptoBoxActionItem r0 = r0.getItem()
            com.iMe.model.wallet.crypto.TokenItem r0 = r0.getFeeToken()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r0 = com.iMe.mapper.wallet.TokenUiMappingKt.mapToDomain(r0)
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType r4 = r6.screenType
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType$CryptoBoxActionDetails r4 = (com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.CryptoBoxActionDetails) r4
            com.iMe.model.wallet.transaction.CryptoBoxActionItem r4 = r4.getItem()
            com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxActionStatus r4 = r4.getStatus()
            com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxActionStatus r5 = com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxActionStatus.PENDING
            if (r4 != r5) goto L34
            goto L86
        L65:
            boolean r1 = r0 instanceof com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.TransactionDetails
            if (r1 == 0) goto Ld3
            com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType$TransactionDetails r0 = (com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType.TransactionDetails) r0
            com.iMe.model.wallet.transaction.TransactionItem r0 = r0.getItem()
            com.iMe.storage.domain.model.wallet.transaction.Transaction r0 = r0.getTransaction()
            java.math.BigDecimal r1 = r0.getFeeAmount()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r4 = r0.getFeeToken()
            com.iMe.storage.data.network.model.response.base.Status r0 = r0.getStatus()
            com.iMe.storage.data.network.model.response.base.Status r5 = com.iMe.storage.data.network.model.response.base.Status.PENDING
            if (r0 != r5) goto L84
            goto L85
        L84:
            r2 = r3
        L85:
            r0 = r4
        L86:
            java.math.BigDecimal r3 = r1.stripTrailingZeros()
            java.math.BigDecimal r4 = java.math.BigDecimal.ZERO
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 == 0) goto L9b
            com.iMe.storage.domain.utils.system.ResourceManager r0 = r6.resourceManager
            int r1 = org.telegram.messenger.C3558R.string.fee_nothing
            java.lang.String r0 = r0.getString(r1)
            goto Ld2
        L9b:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            int r4 = r0.getDecimals()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.String r1 = com.iMe.utils.formatter.BalanceFormatter.formatBalance(r1, r4)
            r3.append(r1)
            r1 = 32
            r3.append(r1)
            java.lang.String r0 = r0.getTicker()
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            if (r2 == 0) goto Ld2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 126(0x7e, float:1.77E-43)
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
        Ld2:
            return r0
        Ld3:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsPresenter.getFee():java.lang.String");
    }

    private final String getRecipientId(Transaction transaction) {
        return transaction instanceof Transaction.Transfer ? ((Transaction.Transfer) transaction).getRecipientUserId() : transaction instanceof Transaction.Referral ? ((Transaction.Referral) transaction).getInvitedUserId() : "";
    }

    private final boolean hasUser(Long l) {
        if (l == null) {
            return false;
        }
        return this.telegramGateway.hasUser(l.longValue());
    }

    private final DialogModel getConfirmCancelDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3558R.string.wallet_cancel_transaction_title), this.resourceManager.getString(C3558R.string.wallet_cancel_transaction_description), this.resourceManager.getString(C3558R.string.common_cancel), this.resourceManager.getString(C3558R.string.common_confirm));
    }

    private final DialogModel getConfirmBoostDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3558R.string.wallet_boost_transaction_title), this.resourceManager.getString(C3558R.string.wallet_boost_transaction_description), this.resourceManager.getString(C3558R.string.common_cancel), this.resourceManager.getString(C3558R.string.common_confirm));
    }

    private final void setupTransactionActions(List<Pair<TransactionActionItem, Function0<Unit>>> list) {
        int collectionSizeOrDefault;
        List mutableList;
        int collectionSizeOrDefault2;
        List<ActionItem> mutableList2;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((TransactionActionItem) ((Pair) it.next()).getFirst());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add((Function0) ((Pair) it2.next()).getSecond());
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) mutableList);
        ((WalletTransactionDetailsView) getViewState()).setupTransactionActions(mutableList2, arrayList2);
    }
}

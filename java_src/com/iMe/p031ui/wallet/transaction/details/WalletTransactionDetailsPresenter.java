package com.iMe.p031ui.wallet.transaction.details;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.ActionItem;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.model.wallet.transaction.TransactionActionItem;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog;
import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor;
import com.iMe.storage.domain.interactor.crypto.cancel.CancelInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.staking.StakingOperationCost;
import com.iMe.storage.domain.model.staking.StakingOperationStatus;
import com.iMe.storage.domain.model.staking.StakingOperationType;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.model.wallet.transaction.TransactionType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3419R;
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
    private final WalletTransactionDetailsBottomSheetDialog.ScreenType screenType;
    private final TelegramGateway telegramGateway;

    /* compiled from: WalletTransactionDetailsPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionDirection.values().length];
            try {
                iArr[TransactionDirection.f449IN.ordinal()] = 1;
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

    public WalletTransactionDetailsPresenter(WalletTransactionDetailsBottomSheetDialog.ScreenType screenType, CancelInteractor cancelInteractor, BoostInteractor boostInteractor, ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper, SchedulersProvider schedulersProvider, TelegramGateway telegramGateway) {
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
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            StakingOperationItem item = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getItem();
            WalletTransactionDetailsView walletTransactionDetailsView = (WalletTransactionDetailsView) getViewState();
            int icon = item.getIcon();
            String formatISODate = StringExtKt.formatISODate(item.getCreatedAt(), DateFormatter.DateType.DATE_AND_TIME);
            String transactionTitle = item.getTransactionTitle(this.resourceManager);
            String amount = item.getAmount(this.resourceManager);
            String string = this.resourceManager.getString(C3419R.string.wallet_transaction_details_transaction_hash_title);
            String txHash = item.getTxHash();
            if (txHash.length() == 0) {
                txHash = "-";
            }
            String str = txHash;
            String fullName = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) this.screenType).getNetwork().getFullName();
            boolean isFeeEnabled = isFeeEnabled();
            walletTransactionDetailsView.setupScreenWithData(icon, transactionTitle, amount, string, str, null, item.getStatusText(this.resourceManager), formatISODate, fullName, getFee(), isFeeEnabled, getScanUrl().length() > 0, item.getToken().getAvatarUrl());
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            TransactionItem item2 = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem();
            WalletTransactionDetailsView walletTransactionDetailsView2 = (WalletTransactionDetailsView) getViewState();
            int transactionIcon = item2.getTransactionIcon();
            String formatISODate2 = StringExtKt.formatISODate(item2.getTransaction().getCreatedAt(), DateFormatter.DateType.DATE_AND_TIME);
            String transactionTitle2 = item2.getTransactionTitle(this.resourceManager);
            String amount2 = item2.getAmount(this.resourceManager);
            String recipientOrSenderOrElseTitle = getRecipientOrSenderOrElseTitle(item2.getTransaction());
            String recipientOrSenderOrElseValue = getRecipientOrSenderOrElseValue(item2.getTransaction());
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) this.screenType).getItem().getTransaction();
            Transaction.Crypto.Transfer transfer = transaction instanceof Transaction.Crypto.Transfer ? (Transaction.Crypto.Transfer) transaction : null;
            String payloadMessage = transfer != null ? transfer.getPayloadMessage() : null;
            String string2 = this.resourceManager.getString(item2.getTransaction().getProcessingType().getTitle());
            boolean isFeeEnabled2 = isFeeEnabled();
            walletTransactionDetailsView2.setupScreenWithData(transactionIcon, transactionTitle2, amount2, recipientOrSenderOrElseTitle, recipientOrSenderOrElseValue, payloadMessage, this.resourceManager.getString(item2.getTransaction().getStatus().getTitle()), formatISODate2, string2, getFee(), isFeeEnabled2, getScanUrl().length() > 0, null);
        }
        setupTransactionActions(resolveTransactionAction());
    }

    private final String getRecipientOrSenderOrElseTitle(Transaction transaction) {
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            return this.resourceManager.getString(C3419R.string.wallet_transaction_details_simplex_order_id_title);
        }
        if (transaction instanceof Transaction.Crypto.Swap ? true : transaction instanceof Transaction.Crypto.Approve) {
            return this.resourceManager.getString(C3419R.string.wallet_transaction_details_transaction_hash_title);
        }
        int i = WhenMappings.$EnumSwitchMapping$0[transaction.getDirection().ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                return this.resourceManager.getString(C3419R.string.wallet_transaction_details_recipient_title);
            }
            throw new NoWhenBranchMatchedException();
        }
        return this.resourceManager.getString(C3419R.string.wallet_transaction_details_sender_title);
    }

    private final String getRecipientOrSenderOrElseValue(Transaction transaction) {
        if (transaction instanceof Transaction.Referral) {
            return this.resourceManager.getString(C3419R.string.wallet_transaction_details_sender_referral, ((Transaction.Referral) transaction).getInvitedUserId());
        }
        if (transaction instanceof Transaction.Lottery ? true : transaction instanceof Transaction.Registration) {
            return this.resourceManager.getString(C3419R.string.wallet_transaction_details_sender_bonus);
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
        return this.resourceManager.getString(C3419R.string.wallet_transaction_details_sender);
    }

    private final List<Pair<TransactionActionItem, Function0<Unit>>> resolveTransactionAction() {
        List mutableListOf;
        List filterNotNull;
        List<Pair<TransactionActionItem, Function0<Unit>>> mutableList;
        Pair[] pairArr = new Pair[6];
        pairArr[0] = canAskSupport() ? TuplesKt.m103to(TransactionActionItem.Support.INSTANCE, new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$1
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
        }) : null;
        pairArr[1] = canOpenProfile() ? TuplesKt.m103to(TransactionActionItem.Profile.INSTANCE, new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$2
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
        }) : null;
        pairArr[2] = canOpenScanSite() ? TuplesKt.m103to(new TransactionActionItem.OpenScan(getOpenTitle(), getScanIconUrl()), new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$3
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
        }) : null;
        pairArr[3] = canCopy() ? TuplesKt.m103to(new TransactionActionItem.Copy(getCopyTitle()), new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$4
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
        }) : null;
        pairArr[4] = canCancelOrBoost() ? TuplesKt.m103to(TransactionActionItem.Cancel.INSTANCE, new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$5
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
        }) : null;
        pairArr[5] = canCancelOrBoost() ? TuplesKt.m103to(TransactionActionItem.Boost.INSTANCE, new Function0<Unit>() { // from class: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$resolveTransactionAction$6
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
        }) : null;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(pairArr);
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(mutableListOf);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) filterNotNull);
        return mutableList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCancelTransaction() {
        TransactionItem item;
        final Transaction transaction;
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails transactionDetails = screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails ? (WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType : null;
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
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails transactionDetails = screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails ? (WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType : null;
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
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Observable<Result<String>> observeOn = this.cancelInteractor.cancelEthTransaction(((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction().getToken().getTicker(), str).observeOn(this.schedulersProvider.mo716ui());
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
                    m1594invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1594invoke(Result<? extends String> it) {
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
                public final void invoke2(Throwable th) {
                    Timber.m6e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 != null) {
                        String message = th.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView2.showToast(message);
                    }
                }
            }));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
                m1593invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1593invoke(Result<? extends String> it) {
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
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final String getOpenTitle() {
        Network networkTypeByProcessing;
        ResourceManager resourceManager = this.resourceManager;
        int i = C3419R.string.wallet_transaction_details_action_open_etherscan;
        Object[] objArr = new Object[1];
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            networkTypeByProcessing = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getNetwork();
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            networkTypeByProcessing = getNetworkTypeByProcessing(((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        objArr[0] = networkTypeByProcessing.getExplorer().getName();
        return resourceManager.getString(i, objArr);
    }

    private final String getScanIconUrl() {
        Network networkTypeByProcessing;
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            networkTypeByProcessing = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getNetwork();
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            networkTypeByProcessing = getNetworkTypeByProcessing(((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return networkTypeByProcessing.getExplorer().getLogoUrl();
    }

    private final boolean isFeeEnabled() {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            if (((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getItem().getFee() != null) {
                return true;
            }
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
            if (transaction.getDirection() == TransactionDirection.OUT || transaction.getDirection() == TransactionDirection.SELF || transaction.getType() == TransactionType.SWAP_CRYPTO) {
                return true;
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return false;
    }

    private final boolean canAskSupport() {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        return (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) && (((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction() instanceof Transaction.Crypto.SimplexPurchase);
    }

    private final boolean canCancelOrBoost() {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            StakingOperationItem item = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getItem();
            if (item.getStatus() == StakingOperationStatus.PENDING) {
                if ((item.getTxHash().length() > 0) && item.getType() == StakingOperationType.DEPOSIT) {
                    return true;
                }
            }
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
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
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(getRecipientId(((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction()));
            if (hasUser(longOrNull)) {
                return true;
            }
        }
        return false;
    }

    private final boolean canCopy() {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if ((screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) && (((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction() instanceof Transaction.Crypto.SimplexPurchase)) {
            return true;
        }
        return getCopyValue().length() > 0;
    }

    private final boolean canOpenScanSite() {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            if (((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getItem().getTxHash().length() > 0) {
                return true;
            }
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
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
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if ((screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) && (((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction() instanceof Transaction.Crypto.SimplexPurchase)) {
            ((WalletTransactionDetailsView) getViewState()).openUrl("https://support.simplex.com/hc/en-gb/categories/360002483279-I-am-buying-with-a-credit-debit-card");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBrowserWithUrl() {
        ((WalletTransactionDetailsView) getViewState()).openUrl(getScanUrl());
    }

    private final String getScanUrl() {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            return ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getItem().getTxHash().length() > 0 ? ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) this.screenType).getNetwork().getTxUrl(((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) this.screenType).getItem().getTxHash()) : "";
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
            if (transaction instanceof Transaction.Crypto) {
                Transaction.Crypto crypto = (Transaction.Crypto) transaction;
                return crypto.getTxHash().length() > 0 ? crypto.getNetwork().getTxUrl(crypto.getTxHash()) : "";
            }
            return "";
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private final Network getNetworkTypeByProcessing(Transaction transaction) {
        return transaction instanceof Transaction.Crypto ? ((Transaction.Crypto) transaction).getNetwork() : this.cryptoPreferenceHelper.getNetwork();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0007, code lost:
        r0 = kotlin.text.StringsKt__StringNumberConversionsKt.toLongOrNull(getRecipientId(((com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) r0).getItem().getTransaction()));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startProfileScreen() {
        /*
            r3 = this;
            com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$ScreenType r0 = r3.screenType
            boolean r1 = r0 instanceof com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails
            if (r1 != 0) goto L7
            return
        L7:
            com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails r0 = (com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) r0
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
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            return C3419R.string.wallet_transaction_details_action_copy_hash;
        }
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
            if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
                return C3419R.string.wallet_token_details_action_copy_order_id;
            }
            return transaction instanceof Transaction.Crypto.Swap ? true : transaction instanceof Transaction.Crypto.Approve ? C3419R.string.wallet_transaction_details_action_copy_hash : C3419R.string.wallet_transaction_details_action_copy_address;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final String getCopyValue() {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            return ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getItem().getTxHash();
        }
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
            return transaction instanceof Transaction.Referral ? true : transaction instanceof Transaction.Transfer ? getRecipientId(((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) this.screenType).getItem().getTransaction()) : transaction instanceof Transaction.Crypto.Transfer ? ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) this.screenType).getItem().getRecipientAddress() : transaction instanceof Transaction.Crypto.Swap ? ((Transaction.Crypto.Swap) ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) this.screenType).getItem().getTransaction()).getTxHash() : transaction instanceof Transaction.Crypto.Approve ? ((Transaction.Crypto.Approve) ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) this.screenType).getItem().getTransaction()).getTxHash() : transaction instanceof Transaction.Crypto.SimplexPurchase ? ((Transaction.Crypto.SimplexPurchase) ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) this.screenType).getItem().getTransaction()).getOrderId() : "";
        }
        throw new NoWhenBranchMatchedException();
    }

    private final String getFee() {
        BigDecimal feeAmount;
        TokenDetailed tokenDetailed;
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            StakingOperationCost fee = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getItem().getFee();
            if (fee == null) {
                return "";
            }
            feeAmount = fee.getValue().getAsToken();
            tokenDetailed = fee.getToken();
            if (((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) this.screenType).getItem().getStatus() != StakingOperationStatus.PENDING) {
                r2 = false;
            }
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
            feeAmount = transaction.getFeeAmount();
            TokenDetailed feeToken = transaction.getFeeToken();
            r2 = transaction.getStatus() == Status.PENDING;
            tokenDetailed = feeToken;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        if (Intrinsics.areEqual(feeAmount.stripTrailingZeros(), BigDecimal.ZERO)) {
            return this.resourceManager.getString(C3419R.string.fee_nothing);
        }
        String str = BalanceFormatter.formatBalance(feeAmount, Integer.valueOf(tokenDetailed.getDecimals())) + ' ' + tokenDetailed.getTicker();
        if (r2) {
            return '~' + str;
        }
        return str;
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
        return new DialogModel(this.resourceManager.getString(C3419R.string.wallet_cancel_transaction_title), this.resourceManager.getString(C3419R.string.wallet_cancel_transaction_description), this.resourceManager.getString(C3419R.string.common_cancel), this.resourceManager.getString(C3419R.string.common_confirm));
    }

    private final DialogModel getConfirmBoostDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3419R.string.wallet_boost_transaction_title), this.resourceManager.getString(C3419R.string.wallet_boost_transaction_description), this.resourceManager.getString(C3419R.string.common_cancel), this.resourceManager.getString(C3419R.string.common_confirm));
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

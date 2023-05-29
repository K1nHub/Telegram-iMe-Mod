package com.iMe.p031ui.wallet.transaction.details;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.ActionItem;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.model.wallet.transaction.TransactionActionItem;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog;
import com.iMe.storage.common.AppConfiguration$Crypto;
import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor;
import com.iMe.storage.domain.interactor.crypto.cancel.CancelInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.staking.StakingOperationCost;
import com.iMe.storage.domain.model.staking.StakingOperationStatus;
import com.iMe.storage.domain.model.staking.StakingOperationType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.model.wallet.transaction.TransactionType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3290R;
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
                iArr[TransactionDirection.f373IN.ordinal()] = 1;
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
            String string = this.resourceManager.getString(C3290R.string.wallet_transaction_details_transaction_hash_title);
            String txHash = item.getTxHash();
            if (txHash.length() == 0) {
                txHash = "-";
            }
            String str = txHash;
            String string2 = this.resourceManager.getString(((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) this.screenType).getNetworkType().getTitleResId());
            boolean isFeeEnabled = isFeeEnabled();
            walletTransactionDetailsView.setupScreenWithData(icon, transactionTitle, amount, string, str, null, item.getStatusText(this.resourceManager), formatISODate, string2, getFee(), isFeeEnabled, getScanUrl().length() > 0, Integer.valueOf(item.getStakingIconResId()));
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
            String string3 = this.resourceManager.getString(item2.getTransaction().getProcessingType().getTitle());
            boolean isFeeEnabled2 = isFeeEnabled();
            walletTransactionDetailsView2.setupScreenWithData(transactionIcon, transactionTitle2, amount2, recipientOrSenderOrElseTitle, recipientOrSenderOrElseValue, payloadMessage, this.resourceManager.getString(item2.getTransaction().getStatus().getTitle()), formatISODate2, string3, getFee(), isFeeEnabled2, getScanUrl().length() > 0, null);
        }
        setupTransactionActions(resolveTransactionAction());
    }

    private final String getRecipientOrSenderOrElseTitle(Transaction transaction) {
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            return this.resourceManager.getString(C3290R.string.wallet_transaction_details_simplex_order_id_title);
        }
        if (transaction instanceof Transaction.Crypto.Swap ? true : transaction instanceof Transaction.Crypto.Approve) {
            return this.resourceManager.getString(C3290R.string.wallet_transaction_details_transaction_hash_title);
        }
        int i = WhenMappings.$EnumSwitchMapping$0[transaction.getDirection().ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                return this.resourceManager.getString(C3290R.string.wallet_transaction_details_recipient_title);
            }
            throw new NoWhenBranchMatchedException();
        }
        return this.resourceManager.getString(C3290R.string.wallet_transaction_details_sender_title);
    }

    private final String getRecipientOrSenderOrElseValue(Transaction transaction) {
        if (transaction instanceof Transaction.Referral) {
            return this.resourceManager.getString(C3290R.string.wallet_transaction_details_sender_referral, ((Transaction.Referral) transaction).getInvitedUserId());
        }
        if (transaction instanceof Transaction.Lottery ? true : transaction instanceof Transaction.Registration) {
            return this.resourceManager.getString(C3290R.string.wallet_transaction_details_sender_bonus);
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
        return this.resourceManager.getString(C3290R.string.wallet_transaction_details_sender);
    }

    private final List<Pair<TransactionActionItem, Function0<Unit>>> resolveTransactionAction() {
        List mutableListOf;
        List filterNotNull;
        List<Pair<TransactionActionItem, Function0<Unit>>> mutableList;
        Pair[] pairArr = new Pair[7];
        pairArr[0] = canAskSupport() ? TuplesKt.m85to(TransactionActionItem.Support.INSTANCE, new WalletTransactionDetailsPresenter$resolveTransactionAction$1(this)) : null;
        pairArr[1] = canSend() ? TuplesKt.m85to(TransactionActionItem.Send.INSTANCE, new WalletTransactionDetailsPresenter$resolveTransactionAction$2(this)) : null;
        pairArr[2] = canOpenProfile() ? TuplesKt.m85to(TransactionActionItem.Profile.INSTANCE, new WalletTransactionDetailsPresenter$resolveTransactionAction$3(this)) : null;
        pairArr[3] = canOpenScanSite() ? TuplesKt.m85to(new TransactionActionItem.OpenScan(getScanIconResId(), getOpenTitle()), new WalletTransactionDetailsPresenter$resolveTransactionAction$4(this)) : null;
        pairArr[4] = canCopy() ? TuplesKt.m85to(new TransactionActionItem.Copy(getCopyTitle()), new WalletTransactionDetailsPresenter$resolveTransactionAction$5(this)) : null;
        pairArr[5] = canCancelOrBoost() ? TuplesKt.m85to(TransactionActionItem.Cancel.INSTANCE, new WalletTransactionDetailsPresenter$resolveTransactionAction$6(this)) : null;
        pairArr[6] = canCancelOrBoost() ? TuplesKt.m85to(TransactionActionItem.Boost.INSTANCE, new WalletTransactionDetailsPresenter$resolveTransactionAction$7(this)) : null;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(pairArr);
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(mutableListOf);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) filterNotNull);
        return mutableList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCancelTransaction() {
        TransactionItem item;
        Transaction transaction;
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails transactionDetails = screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails ? (WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType : null;
        if (transactionDetails == null || (item = transactionDetails.getItem()) == null || (transaction = item.getTransaction()) == null || !(transaction instanceof Transaction.Crypto) || transaction.getStatus() != Status.PENDING) {
            return;
        }
        ((WalletTransactionDetailsView) getViewState()).showConfirmCancelDialog(getConfirmCancelDialogModel(), new WalletTransactionDetailsPresenter$startCancelTransaction$1$1(this, transaction));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBoostTransaction() {
        TransactionItem item;
        Transaction transaction;
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails transactionDetails = screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails ? (WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType : null;
        if (transactionDetails == null || (item = transactionDetails.getItem()) == null || (transaction = item.getTransaction()) == null || !(transaction instanceof Transaction.Crypto) || transaction.getStatus() != Status.PENDING) {
            return;
        }
        ((WalletTransactionDetailsView) getViewState()).showConfirmBoostDialog(getConfirmBoostDialogModel(), new WalletTransactionDetailsPresenter$startBoostTransaction$1$1(this, transaction));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelTransaction(String str) {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Observable<Result<String>> observeOn = this.cancelInteractor.cancelEthTransaction(((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction().getTokenCode(), str).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "cancelInteractor\n       …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2424xbfdb298e(this, str)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2425xbfdb298f((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void boostTransaction(String str) {
        Observable<Result<String>> observeOn = this.boostInteractor.boostEthTransaction(str).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "boostInteractor\n        …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2422x2bc727d7(this, str)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2423x2bc727d8((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final String getOpenTitle() {
        NetworkType networkTypeByProcessing;
        ResourceManager resourceManager = this.resourceManager;
        int i = C3290R.string.wallet_transaction_details_action_open_etherscan;
        Object[] objArr = new Object[1];
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            networkTypeByProcessing = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getNetworkType();
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            networkTypeByProcessing = getNetworkTypeByProcessing(((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        objArr[0] = resourceManager.getString(networkTypeByProcessing.getScannerName());
        return resourceManager.getString(i, objArr);
    }

    private final int getScanIconResId() {
        NetworkType networkTypeByProcessing;
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            networkTypeByProcessing = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getNetworkType();
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            networkTypeByProcessing = getNetworkTypeByProcessing(((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return networkTypeByProcessing.getScannerIcon();
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

    private final boolean canSend() {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        return (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) && (((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction() instanceof Transaction.Crypto.Transfer);
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
                if (crypto.getNetworkType().isEVM()) {
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
    public final void startSendScreen() {
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
            if (transaction.getTokenCode().isCryptoTokens()) {
                ((WalletTransactionDetailsView) getViewState()).openSendScreen(transaction.getTokenCode(), getNetworkTypeByProcessing(transaction), ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) this.screenType).getItem().getRecipientAddress());
            } else {
                ((WalletTransactionDetailsView) getViewState()).showToast(this.resourceManager.getString(C3290R.string.wallet_feature_not_available));
            }
        }
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
        String formatScanTxUrl;
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            return ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getItem().getTxHash().length() > 0 ? AppConfiguration$Crypto.INSTANCE.formatScanTxUrl(((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) this.screenType).getNetworkType(), ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) this.screenType).getItem().getTxHash()) : "";
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
            if (transaction instanceof Transaction.Crypto.Transfer) {
                Transaction.Crypto.Transfer transfer = (Transaction.Crypto.Transfer) transaction;
                if (transfer.getTxHash().length() > 0) {
                    formatScanTxUrl = AppConfiguration$Crypto.INSTANCE.formatScanTxUrl(getNetworkTypeByProcessing(transaction), transfer.getTxHash());
                    return formatScanTxUrl;
                }
            }
            if (transaction instanceof Transaction.Crypto.Approve) {
                Transaction.Crypto.Approve approve = (Transaction.Crypto.Approve) transaction;
                if (approve.getTxHash().length() > 0) {
                    formatScanTxUrl = AppConfiguration$Crypto.INSTANCE.formatScanTxUrl(getNetworkTypeByProcessing(transaction), approve.getTxHash());
                    return formatScanTxUrl;
                }
            }
            if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
                Transaction.Crypto.SimplexPurchase simplexPurchase = (Transaction.Crypto.SimplexPurchase) transaction;
                if (simplexPurchase.getTxHash().length() > 0) {
                    formatScanTxUrl = AppConfiguration$Crypto.INSTANCE.formatScanTxUrl(getNetworkTypeByProcessing(transaction), simplexPurchase.getTxHash());
                    return formatScanTxUrl;
                }
            }
            if (transaction instanceof Transaction.Crypto.Swap) {
                Transaction.Crypto.Swap swap = (Transaction.Crypto.Swap) transaction;
                if (swap.getTxHash().length() > 0) {
                    formatScanTxUrl = AppConfiguration$Crypto.INSTANCE.formatScanTxUrl(getNetworkTypeByProcessing(transaction), swap.getTxHash());
                    return formatScanTxUrl;
                }
                return "";
            }
            return "";
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private final NetworkType getNetworkTypeByProcessing(Transaction transaction) {
        return transaction instanceof Transaction.Crypto ? ((Transaction.Crypto) transaction).getNetworkType() : this.cryptoPreferenceHelper.getNetworkType();
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
            return C3290R.string.wallet_transaction_details_action_copy_hash;
        }
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
            if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
                return C3290R.string.wallet_token_details_action_copy_order_id;
            }
            return transaction instanceof Transaction.Crypto.Swap ? true : transaction instanceof Transaction.Crypto.Approve ? C3290R.string.wallet_transaction_details_action_copy_hash : C3290R.string.wallet_transaction_details_action_copy_address;
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
        TokenCode tokenCode;
        WalletTransactionDetailsBottomSheetDialog.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) {
            StakingOperationCost fee = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) screenType).getItem().getFee();
            if (fee == null) {
                return "";
            }
            feeAmount = fee.getValue().getAsToken();
            tokenCode = TokenCode.Companion.map(fee.getToken().getTicker());
            if (((WalletTransactionDetailsBottomSheetDialog.ScreenType.StakingOperationDetails) this.screenType).getItem().getStatus() != StakingOperationStatus.PENDING) {
                r2 = false;
            }
        } else if (screenType instanceof WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) {
            Transaction transaction = ((WalletTransactionDetailsBottomSheetDialog.ScreenType.TransactionDetails) screenType).getItem().getTransaction();
            feeAmount = transaction.getFeeAmount();
            TokenCode feeTokenCode = transaction.getFeeTokenCode();
            r2 = transaction.getStatus() == Status.PENDING;
            tokenCode = feeTokenCode;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        if (Intrinsics.areEqual(feeAmount.stripTrailingZeros(), BigDecimal.ZERO)) {
            return this.resourceManager.getString(C3290R.string.fee_nothing);
        }
        TokenInfo map = TokenInfo.Companion.map(tokenCode);
        String str = BalanceFormatter.formatBalance(feeAmount, map.getDecimals()) + ' ' + this.resourceManager.getString(map.getShortName());
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
        return new DialogModel(this.resourceManager.getString(C3290R.string.wallet_cancel_transaction_title), this.resourceManager.getString(C3290R.string.wallet_cancel_transaction_description), this.resourceManager.getString(C3290R.string.common_cancel), this.resourceManager.getString(C3290R.string.common_confirm));
    }

    private final DialogModel getConfirmBoostDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3290R.string.wallet_boost_transaction_title), this.resourceManager.getString(C3290R.string.wallet_boost_transaction_description), this.resourceManager.getString(C3290R.string.common_cancel), this.resourceManager.getString(C3290R.string.common_confirm));
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

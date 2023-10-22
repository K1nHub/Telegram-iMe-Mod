package com.iMe.p030ui.wallet.cryptobox.conditions;

import com.iMe.manager.TelegramApi;
import com.iMe.manager.wallet.create.WalletCreateManager;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.cryptobox.CryptoBoxActionButtonType;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.crypto.cryptobox.CryptoBoxInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationData;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationResult;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationStatus;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxStatus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.telegram.ChatExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import com.iMe.utils.helper.wallet.WalletHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ChatObject;
import org.telegram.tgnet.TLRPC$Chat;
import timber.log.Timber;
/* compiled from: CryptoBoxConditionsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter */
/* loaded from: classes3.dex */
public final class CryptoBoxConditionsPresenter extends BasePresenter<CryptoBoxConditionsView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoBoxInfo cryptoBoxInfo;
    private final CryptoBoxInteractor cryptoBoxInteractor;
    private CryptoBoxActionButtonType currentButtonType;
    private final Network network;
    private CryptoBoxParticipationStatus participationStatus;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private TLRPC$Chat sourceChat;
    private final TelegramApi telegramApi;
    private final WalletCreateManager walletCreateManager;

    /* compiled from: CryptoBoxConditionsPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CryptoBoxParticipationStatus.values().length];
            try {
                iArr[CryptoBoxParticipationStatus.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CryptoBoxParticipationStatus.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CryptoBoxParticipationStatus.QUEUED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CryptoBoxParticipationStatus.PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CryptoBoxParticipationStatus.COMPLETED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public void startChooseWalletOptionsFlow(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.walletCreateManager.startChooseWalletOptionsFlow(blockchainType);
    }

    public CryptoBoxConditionsPresenter(TLRPC$Chat tLRPC$Chat, CryptoBoxInfo cryptoBoxInfo, CryptoAccessManager cryptoAccessManager, CryptoBoxInteractor cryptoBoxInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramApi telegramApi, WalletCreateManager walletCreateManager) {
        Intrinsics.checkNotNullParameter(cryptoBoxInfo, "cryptoBoxInfo");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoBoxInteractor, "cryptoBoxInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(walletCreateManager, "walletCreateManager");
        this.cryptoBoxInfo = cryptoBoxInfo;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoBoxInteractor = cryptoBoxInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.telegramApi = telegramApi;
        this.walletCreateManager = walletCreateManager;
        this.network = cryptoBoxInfo.getNetwork();
        this.currentButtonType = CryptoBoxActionButtonType.Loading.INSTANCE;
        this.sourceChat = tLRPC$Chat;
    }

    public final void onActionClick() {
        CryptoBoxActionButtonType cryptoBoxActionButtonType = this.currentButtonType;
        if (cryptoBoxActionButtonType instanceof CryptoBoxActionButtonType.C1528Ok ? true : cryptoBoxActionButtonType instanceof CryptoBoxActionButtonType.WithDescription.Forwarded) {
            ((CryptoBoxConditionsView) getViewState()).finishScreen();
        } else if (cryptoBoxActionButtonType instanceof CryptoBoxActionButtonType.WithDescription.Subscribe) {
            subscribeToRequiredChat();
        } else if (cryptoBoxActionButtonType instanceof CryptoBoxActionButtonType.WithDescription.ActivateWallet) {
            ((CryptoBoxConditionsView) getViewState()).startActivationFlow();
        } else if (cryptoBoxActionButtonType instanceof CryptoBoxActionButtonType.WithDescription.CreateWallet) {
            startChooseWalletOptionsFlow(this.network.getBlockchainType());
        } else if (cryptoBoxActionButtonType instanceof CryptoBoxActionButtonType.Taken) {
            ((CryptoBoxConditionsView) getViewState()).showToast(this.resourceManager.getString(C3630R.string.cryptobox_taken_description));
        } else if (cryptoBoxActionButtonType instanceof CryptoBoxActionButtonType.Get) {
            participate();
        }
    }

    public final void onViewOnScanClick() {
        ((CryptoBoxConditionsView) getViewState()).openAddressScan(this.cryptoBoxInfo.getContractUrl());
    }

    public final void onCopyNameClick() {
        CryptoBoxInfo cryptoBoxInfo = this.cryptoBoxInfo;
        ((CryptoBoxConditionsView) getViewState()).copyNameToClipboard(cryptoBoxInfo.getName() + ' ' + cryptoBoxInfo.getId());
    }

    public final void onAuthSuccess() {
        updateActionButtonType();
        loadParticipationData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        WalletCreateManager walletCreateManager = this.walletCreateManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        walletCreateManager.attachViewState((WalletCreateManagerView) viewState);
        CryptoBoxInfo cryptoBoxInfo = this.cryptoBoxInfo;
        CryptoBoxConditionsView cryptoBoxConditionsView = (CryptoBoxConditionsView) getViewState();
        String avatarUrl = cryptoBoxInfo.getRewardToken().getAvatarUrl();
        String logoUrl = cryptoBoxInfo.getNetwork().getLogoUrl();
        String fullName = cryptoBoxInfo.getFullName();
        String description = cryptoBoxInfo.getDescription();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        cryptoBoxConditionsView.renderScreenData(avatarUrl, logoUrl, fullName, description, balanceFormatter.formatTokenBalance(cryptoBoxInfo.getRewardValue(), cryptoBoxInfo.getRewardToken()), cryptoBoxInfo.getMembersText(), cryptoBoxInfo.getBalanceText(new CryptoBoxConditionsPresenter$onFirstViewAttach$1$1(balanceFormatter)), StringExtKt.formatISODate(cryptoBoxInfo.getCreatedAt(), DateFormatter.DateType.DATE_AND_TIME), cryptoBoxInfo.getNetwork().getExplorer());
        updateActionButtonType();
    }

    @Override // com.iMe.p030ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.walletCreateManager.onDetachViewState();
        super.onDestroy();
    }

    private final boolean isSourceChatCryptoBox() {
        TLRPC$Chat tLRPC$Chat = this.sourceChat;
        return tLRPC$Chat != null && ChatExtKt.getBotApiId(tLRPC$Chat) == this.cryptoBoxInfo.getChat().getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateActionButtonType() {
        CryptoBoxActionButtonType cryptoBoxActionButtonType;
        CryptoBoxParticipationStatus cryptoBoxParticipationStatus = this.participationStatus;
        if (this.sourceChat == null) {
            cryptoBoxActionButtonType = CryptoBoxActionButtonType.C1528Ok.INSTANCE;
        } else if (this.cryptoBoxInfo.getStatus() == CryptoBoxStatus.FINISHED) {
            cryptoBoxActionButtonType = CryptoBoxActionButtonType.Finished.INSTANCE;
        } else if (this.cryptoBoxInfo.getStatus() == CryptoBoxStatus.STOPPED) {
            cryptoBoxActionButtonType = CryptoBoxActionButtonType.Stopped.INSTANCE;
        } else if (!isSourceChatCryptoBox()) {
            cryptoBoxActionButtonType = CryptoBoxActionButtonType.WithDescription.Forwarded.INSTANCE;
        } else if (ChatObject.isNotInChat(this.sourceChat)) {
            cryptoBoxActionButtonType = new CryptoBoxActionButtonType.WithDescription.Subscribe(this.cryptoBoxInfo.getChat().getName(), NumberExtKt.orZero(getCryptoBoxChatId()));
        } else if (!WalletHelper.isAuthorized()) {
            cryptoBoxActionButtonType = CryptoBoxActionButtonType.WithDescription.ActivateWallet.INSTANCE;
        } else if (!this.cryptoAccessManager.isWalletCreated(this.network.getBlockchainType())) {
            cryptoBoxActionButtonType = CryptoBoxActionButtonType.WithDescription.CreateWallet.INSTANCE;
        } else if (cryptoBoxParticipationStatus == null) {
            loadParticipationData();
            cryptoBoxActionButtonType = CryptoBoxActionButtonType.Loading.INSTANCE;
        } else {
            int i = WhenMappings.$EnumSwitchMapping$0[cryptoBoxParticipationStatus.ordinal()];
            if (i == 1 || i == 2) {
                cryptoBoxActionButtonType = CryptoBoxActionButtonType.Get.INSTANCE;
            } else if (i == 3 || i == 4) {
                cryptoBoxActionButtonType = CryptoBoxActionButtonType.InProgress.INSTANCE;
            } else if (i != 5) {
                throw new NoWhenBranchMatchedException();
            } else {
                cryptoBoxActionButtonType = CryptoBoxActionButtonType.Taken.INSTANCE;
            }
        }
        ((CryptoBoxConditionsView) getViewState()).renderButton(cryptoBoxActionButtonType);
        this.currentButtonType = cryptoBoxActionButtonType;
    }

    private final void loadParticipationData() {
        Observable<Result<CryptoBoxParticipationData>> observeOn = this.cryptoBoxInteractor.getParticipationData(this.cryptoBoxInfo.getId()).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoBoxInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CryptoBoxParticipationData>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$loadParticipationData$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoBoxParticipationData> result) {
                m1676invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1676invoke(Result<? extends CryptoBoxParticipationData> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CryptoBoxParticipationData> result = it;
                if (result instanceof Result.Success) {
                    CryptoBoxConditionsPresenter.this.participationStatus = ((CryptoBoxParticipationData) ((Result.Success) result).getData()).getStatus();
                    CryptoBoxConditionsPresenter.this.updateActionButtonType();
                } else if (result instanceof Result.Error) {
                    resourceManager = CryptoBoxConditionsPresenter.this.resourceManager;
                    ((CryptoBoxConditionsView) CryptoBoxConditionsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$loadParticipationData$$inlined$subscribeWithErrorHandle$default$2
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

    private final void participate() {
        Observable<Result<CryptoBoxParticipationResult>> observeOn = this.cryptoBoxInteractor.participate(this.cryptoBoxInfo.getId()).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoBoxInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CryptoBoxParticipationResult>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$participate$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoBoxParticipationResult> result) {
                m1677invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1677invoke(Result<? extends CryptoBoxParticipationResult> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CryptoBoxParticipationResult> result = it;
                if (result instanceof Result.Success) {
                    ((CryptoBoxConditionsView) CryptoBoxConditionsPresenter.this.getViewState()).showParticipationSuccess();
                } else if (result instanceof Result.Error) {
                    resourceManager = CryptoBoxConditionsPresenter.this.resourceManager;
                    ((CryptoBoxConditionsView) CryptoBoxConditionsPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$participate$$inlined$subscribeWithErrorHandle$default$2
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

    private final void subscribeToRequiredChat() {
        Long cryptoBoxChatId = getCryptoBoxChatId();
        if (cryptoBoxChatId == null) {
            ((CryptoBoxConditionsView) getViewState()).showToast(this.resourceManager.getString(C3630R.string.common_error_unexpected));
            return;
        }
        Observable<TLRPC$Chat> chatInfoById = this.telegramApi.getChatInfoById(cryptoBoxChatId.longValue());
        final Function1<TLRPC$Chat, ObservableSource<? extends TLRPC$Chat>> function1 = new Function1<TLRPC$Chat, ObservableSource<? extends TLRPC$Chat>>() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$subscribeToRequiredChat$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends TLRPC$Chat> invoke(TLRPC$Chat chat) {
                TelegramApi telegramApi;
                Intrinsics.checkNotNullParameter(chat, "chat");
                telegramApi = CryptoBoxConditionsPresenter.this.telegramApi;
                return telegramApi.subscribeToChannel(chat);
            }
        };
        Observable observeOn = chatInfoById.flatMap(new Function() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToRequiredChat$lambda$5;
                subscribeToRequiredChat$lambda$5 = CryptoBoxConditionsPresenter.subscribeToRequiredChat$lambda$5(Function1.this, obj);
                return subscribeToRequiredChat$lambda$5;
            }
        }).observeOn(this.schedulersProvider.mo1009ui());
        final Function1<TLRPC$Chat, Unit> function12 = new Function1<TLRPC$Chat, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$subscribeToRequiredChat$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TLRPC$Chat tLRPC$Chat) {
                invoke2(tLRPC$Chat);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TLRPC$Chat tLRPC$Chat) {
                CryptoBoxConditionsPresenter cryptoBoxConditionsPresenter = CryptoBoxConditionsPresenter.this;
                tLRPC$Chat.left = false;
                cryptoBoxConditionsPresenter.sourceChat = tLRPC$Chat;
                CryptoBoxConditionsPresenter.this.updateActionButtonType();
            }
        };
        Consumer consumer = new Consumer() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CryptoBoxConditionsPresenter.subscribeToRequiredChat$lambda$6(Function1.this, obj);
            }
        };
        final Function1<Throwable, Unit> function13 = new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$subscribeToRequiredChat$3
            /* JADX INFO: Access modifiers changed from: package-private */
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
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                Timber.m6e(th);
                CryptoBoxConditionsView cryptoBoxConditionsView = (CryptoBoxConditionsView) CryptoBoxConditionsPresenter.this.getViewState();
                String message = th.getMessage();
                if (Intrinsics.areEqual(message, "CHAT_ID_INVALID")) {
                    resourceManager2 = CryptoBoxConditionsPresenter.this.resourceManager;
                    message = resourceManager2.getString(C3630R.string.cryptobox_participation_chat_unavailable);
                } else if (message == null) {
                    resourceManager = CryptoBoxConditionsPresenter.this.resourceManager;
                    message = resourceManager.getString(C3630R.string.common_error_unexpected);
                }
                cryptoBoxConditionsView.showToast(message);
            }
        };
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CryptoBoxConditionsPresenter.subscribeToRequiredChat$lambda$7(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun subscribeToR…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource subscribeToRequiredChat$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToRequiredChat$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToRequiredChat$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final Long getCryptoBoxChatId() {
        String removePrefix;
        Long longOrNull;
        removePrefix = StringsKt__StringsKt.removePrefix(String.valueOf(this.cryptoBoxInfo.getChat().getId()), "-100");
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(removePrefix);
        return longOrNull;
    }
}

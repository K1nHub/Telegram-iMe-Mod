package com.smedialink.p031ui.chat;

import android.util.SparseArray;
import com.smedialink.common.TelegramConstants;
import com.smedialink.manager.TelegramApi;
import com.smedialink.manager.crypto.pay.BinancePayProcessManager;
import com.smedialink.manager.crypto.pay.BinancePayProcessView;
import com.smedialink.manager.multireply.MultiReplyInteractor;
import com.smedialink.mapper.translation.TranslationUiMappingKt;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.translation.TranslationLanguageUiModel;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.common.AppConfiguration$Reaction;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.system.AndroidActivityHolder;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.smedialink.storage.domain.interactor.google.GoogleServicesInteractor;
import com.smedialink.storage.domain.interactor.translate.TranslationInteractor;
import com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.translation.TranslationLanguage;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.helper.reaction.ReactionHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Single;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.io.File;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.controller.DialogTranslationController;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth;
import timber.log.Timber;
/* compiled from: ChatPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.chat.ChatPresenter */
/* loaded from: classes3.dex */
public final class ChatPresenter extends BasePresenter<ChatView> {
    private final BinancePayProcessManager binancePayProcessManager;
    private final TLRPC$Chat chat;
    private final DonationsInteractor donationsInteractor;
    private final GoogleServicesInteractor googleServicesInteractor;
    private String messagesReaction;
    private final MultiReplyInteractor multiReplyInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final TelegramApi telegramApi;
    private final TelegramGateway telegramGateway;
    private final TranslationInteractor translationInteractor;
    private String uuidReaction;
    private final WalletSessionInteractor walletSessionInteractor;

    public ChatPresenter(TLRPC$Chat tLRPC$Chat, TelegramApi telegramApi, RxEventBus rxEventBus, ResourceManager resourceManager, WalletSessionInteractor walletSessionInteractor, DonationsInteractor donationsInteractor, SchedulersProvider schedulersProvider, GoogleServicesInteractor googleServicesInteractor, BinancePayProcessManager binancePayProcessManager, TelegramGateway telegramGateway, MultiReplyInteractor multiReplyInteractor, TranslationInteractor translationInteractor) {
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(walletSessionInteractor, "walletSessionInteractor");
        Intrinsics.checkNotNullParameter(donationsInteractor, "donationsInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(googleServicesInteractor, "googleServicesInteractor");
        Intrinsics.checkNotNullParameter(binancePayProcessManager, "binancePayProcessManager");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(multiReplyInteractor, "multiReplyInteractor");
        Intrinsics.checkNotNullParameter(translationInteractor, "translationInteractor");
        this.chat = tLRPC$Chat;
        this.telegramApi = telegramApi;
        this.rxEventBus = rxEventBus;
        this.resourceManager = resourceManager;
        this.walletSessionInteractor = walletSessionInteractor;
        this.donationsInteractor = donationsInteractor;
        this.schedulersProvider = schedulersProvider;
        this.googleServicesInteractor = googleServicesInteractor;
        this.binancePayProcessManager = binancePayProcessManager;
        this.telegramGateway = telegramGateway;
        this.multiReplyInteractor = multiReplyInteractor;
        this.translationInteractor = translationInteractor;
        this.uuidReaction = "";
        this.messagesReaction = "";
    }

    public final String getUuidReaction() {
        return this.uuidReaction;
    }

    public final String getMessagesReaction() {
        return this.messagesReaction;
    }

    public final void startBinancePayFlow(AndroidActivityHolder holder, String url) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(url, "url");
        this.binancePayProcessManager.loadAndPay(holder, url);
    }

    public final void getMultiReplyMessage(SparseArray<MessageObject>[] selectedMessages, TLRPC$Chat chat) {
        Intrinsics.checkNotNullParameter(selectedMessages, "selectedMessages");
        Intrinsics.checkNotNullParameter(chat, "chat");
        MultiReplyInteractor multiReplyInteractor = this.multiReplyInteractor;
        Single<Result<CharSequence>> observeOn = multiReplyInteractor.buildMultiReplyMessage(multiReplyInteractor.prepareSelectedMessages(selectedMessages), chat).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "multiReplyInteractor\n   …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((ChatView) ChatPresenter.this.getViewState()).onMultiReplyMessageBuilt((CharSequence) ((Result.Success) result).getData());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$2
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

    public final void processVoiceToText(final MessageObject messageObject, File file) {
        Intrinsics.checkNotNullParameter(messageObject, "messageObject");
        Intrinsics.checkNotNullParameter(file, "file");
        Observable<Result<String>> observeOn = this.googleServicesInteractor.getVoiceText(file, DialogTranslationController.Companion.getCurrentLocale()).timeout(1L, TimeUnit.MINUTES).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "googleServicesInteractor…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((ChatView) ChatPresenter.this.getViewState()).onVoiceToTextCompleted(messageObject, (String) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.UNAUTHORIZED) {
                        ((ChatView) ChatPresenter.this.getViewState()).showAppUpdateDialog();
                    } else {
                        ErrorModel error2 = error.getError();
                        resourceManager = ChatPresenter.this.resourceManager;
                        ((ChatView) ChatPresenter.this.getViewState()).showToast(error2.getMessage(resourceManager));
                    }
                    ((ChatView) ChatPresenter.this.getViewState()).onVoiceToTextCompleted(messageObject, null);
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$2
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

    public final void checkAndSendReaction(final Object data, final String str, final MessageObject messageObject) {
        Intrinsics.checkNotNullParameter(data, "data");
        int selectedAccountIndex = this.telegramGateway.getSelectedAccountIndex();
        if (ReactionHelper.checkReactionWork(selectedAccountIndex)) {
            ((ChatView) getViewState()).showReactionActivationAlert();
            return;
        }
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        this.uuidReaction = uuid;
        final String formatUuid = ReactionHelper.INSTANCE.formatUuid(uuid);
        if (ReactionHelper.checkBlacklistReaction(selectedAccountIndex)) {
            Observable<Boolean> unblockPeer = this.telegramApi.unblockPeer(AppConfiguration$Reaction.getBotId());
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = unblockPeer.subscribe(new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    ((Boolean) it).booleanValue();
                    ChatPresenter chatPresenter = ChatPresenter.this;
                    Object obj = data;
                    String str2 = str;
                    if (str2 == null) {
                        str2 = "";
                    }
                    chatPresenter.sendReactionMessage(obj, str2, formatUuid, messageObject);
                }
            }, new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$2
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
            return;
        }
        if (str == null) {
            str = "";
        }
        sendReactionMessage(data, str, formatUuid, messageObject);
    }

    public final void acceptTelegramAuthUrlAndGetTokens(final String url, final TLRPC$TL_messages_requestUrlAuth tLRPC$TL_messages_requestUrlAuth) {
        Intrinsics.checkNotNullParameter(url, "url");
        Observable observeOn = Observable.just(Boolean.TRUE).flatMap(new Function() { // from class: com.smedialink.ui.chat.ChatPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1435acceptTelegramAuthUrlAndGetTokens$lambda4;
                m1435acceptTelegramAuthUrlAndGetTokens$lambda4 = ChatPresenter.m1435acceptTelegramAuthUrlAndGetTokens$lambda4(TLRPC$TL_messages_requestUrlAuth.this, this, url, (Boolean) obj);
                return m1435acceptTelegramAuthUrlAndGetTokens$lambda4;
            }
        }).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "just(true)\n             …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$acceptTelegramAuthUrlAndGetTokens$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((ChatView) ChatPresenter.this.getViewState()).onSuccessGetAuthTokens((SessionTokens) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = ChatPresenter.this.resourceManager;
                    ((ChatView) ChatPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$acceptTelegramAuthUrlAndGetTokens$$inlined$subscribeWithErrorHandle$default$2
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
    /* renamed from: acceptTelegramAuthUrlAndGetTokens$lambda-4  reason: not valid java name */
    public static final ObservableSource m1435acceptTelegramAuthUrlAndGetTokens$lambda4(TLRPC$TL_messages_requestUrlAuth tLRPC$TL_messages_requestUrlAuth, final ChatPresenter this$0, String url, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(url, "$url");
        Intrinsics.checkNotNullParameter(it, "it");
        if (tLRPC$TL_messages_requestUrlAuth != null) {
            return this$0.telegramApi.acceptUrlAuth(url, tLRPC$TL_messages_requestUrlAuth).flatMap(new Function() { // from class: com.smedialink.ui.chat.ChatPresenter$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource m1436acceptTelegramAuthUrlAndGetTokens$lambda4$lambda3;
                    m1436acceptTelegramAuthUrlAndGetTokens$lambda4$lambda3 = ChatPresenter.m1436acceptTelegramAuthUrlAndGetTokens$lambda4$lambda3(ChatPresenter.this, (String) obj);
                    return m1436acceptTelegramAuthUrlAndGetTokens$lambda4$lambda3;
                }
            });
        }
        return this$0.walletSessionInteractor.login(url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: acceptTelegramAuthUrlAndGetTokens$lambda-4$lambda-3  reason: not valid java name */
    public static final ObservableSource m1436acceptTelegramAuthUrlAndGetTokens$lambda4$lambda3(ChatPresenter this$0, String authUrl) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(authUrl, "authUrl");
        return this$0.walletSessionInteractor.login(authUrl);
    }

    public final void loadTextTranslateLanguages() {
        final String supportedLanguage = this.telegramGateway.getCurrentLocaleInformation().getSupportedLanguage();
        Observable<Result<List<TranslationLanguage>>> observeOn = this.translationInteractor.languages().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                List sortedWith;
                List<TranslationLanguageUiModel> mutableList;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ChatView chatView = (ChatView) ChatPresenter.this.getViewState();
                    Iterable<TranslationLanguage> iterable = (Iterable) ((Result.Success) result).getData();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (TranslationLanguage translationLanguage : iterable) {
                        arrayList.add(TranslationUiMappingKt.mapToUI(translationLanguage, supportedLanguage));
                    }
                    final Collator collator = Collator.getInstance(new Locale(supportedLanguage));
                    Intrinsics.checkNotNullExpressionValue(collator, "getInstance(Locale(currentLanguage))");
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.smedialink.ui.chat.ChatPresenter$loadTextTranslateLanguages$lambda-8$$inlined$compareBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            return collator.compare(((TranslationLanguageUiModel) t).getDisplayLanguage(), ((TranslationLanguageUiModel) t2).getDisplayLanguage());
                        }
                    });
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) sortedWith);
                    chatView.onLanguagesLoaded(mutableList);
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = ChatPresenter.this.resourceManager;
                    ((ChatView) ChatPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$2
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

    public final DialogModel getOldAuthButtonDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_button_old_auth_dialog_title), this.resourceManager.getString(C3158R.string.wallet_button_old_auth_dialog_description), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_button_old_auth_dialog_action_btn));
    }

    public final DialogModel getDownloadMediaFirstDialogModel() {
        return new DialogModel(LocaleController.getString("AppName", C3158R.string.AppName), LocaleController.getString("PleaseDownload", C3158R.string.PleaseDownload), LocaleController.getString("OK", C3158R.string.OK), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        BinancePayProcessManager binancePayProcessManager = this.binancePayProcessManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        binancePayProcessManager.attachViewState((BinancePayProcessView) viewState);
        if (isValidChatForDonations()) {
            TelegramConstants telegramConstants = TelegramConstants.INSTANCE;
            TLRPC$Chat tLRPC$Chat = this.chat;
            Intrinsics.checkNotNull(tLRPC$Chat);
            checkIsDonationEnabled(telegramConstants.prepareChatIdForBotAPI(tLRPC$Chat.f1494id));
            listenEvents();
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.binancePayProcessManager.onDetachViewState();
        super.onDestroy();
    }

    private final boolean isValidChatForDonations() {
        TLRPC$Chat tLRPC$Chat = this.chat;
        return tLRPC$Chat != null && (tLRPC$Chat.isGroup() || this.chat.isChannel());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkIsDonationEnabled(long j) {
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.isDonationsEnabled(j).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((ChatView) ChatPresenter.this.getViewState()).showDonationMenuItem(((Boolean) ((Result.Success) result).getData()).booleanValue());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$2
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

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.DonationAddressUpdated.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                TLRPC$Chat tLRPC$Chat;
                TLRPC$Chat tLRPC$Chat2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                long chatId = ((DomainRxEvents.DonationAddressUpdated) it).getChatId();
                tLRPC$Chat = ChatPresenter.this.chat;
                boolean z = false;
                if (tLRPC$Chat != null && chatId == tLRPC$Chat.f1494id) {
                    z = true;
                }
                if (z) {
                    ChatPresenter chatPresenter = ChatPresenter.this;
                    TelegramConstants telegramConstants = TelegramConstants.INSTANCE;
                    tLRPC$Chat2 = chatPresenter.chat;
                    chatPresenter.checkIsDonationEnabled(telegramConstants.prepareChatIdForBotAPI(tLRPC$Chat2.f1494id));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.chat.ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendReactionMessage(Object obj, String str, String str2, MessageObject messageObject) {
        ArrayList arrayListOf;
        ArrayList arrayListOf2;
        ArrayList arrayListOf3;
        String str3;
        ArrayList arrayListOf4;
        Object firstOrNull = CollectionsKt.firstOrNull((ArrayList) obj);
        if (firstOrNull == null) {
            return;
        }
        long botId = AppConfiguration$Reaction.getBotId();
        if (firstOrNull instanceof SendMessagesHelper.SendingMediaInfo) {
            SendMessagesHelper.SendingMediaInfo sendingMediaInfo = (SendMessagesHelper.SendingMediaInfo) firstOrNull;
            String str4 = sendingMediaInfo.caption;
            if (str4 == null || str4.length() == 0) {
                str3 = "";
            } else {
                str3 = sendingMediaInfo.caption;
                Intrinsics.checkNotNullExpressionValue(str3, "data.caption");
            }
            this.messagesReaction = str3;
            sendingMediaInfo.caption = str2;
            AccountInstance accountInstance = AccountInstance.getInstance(this.telegramGateway.getSelectedAccountIndex());
            arrayListOf4 = CollectionsKt__CollectionsKt.arrayListOf(sendingMediaInfo);
            SendMessagesHelper.prepareSendingMedia(accountInstance, arrayListOf4, botId, messageObject, null, null, false, false, null, false, 0, false, null);
        } else if (firstOrNull instanceof String) {
            this.messagesReaction = str;
            AccountInstance accountInstance2 = AccountInstance.getInstance(this.telegramGateway.getSelectedAccountIndex());
            String str5 = (String) firstOrNull;
            arrayListOf2 = CollectionsKt__CollectionsKt.arrayListOf(str5);
            arrayListOf3 = CollectionsKt__CollectionsKt.arrayListOf(str5);
            SendMessagesHelper.prepareSendingDocuments(accountInstance2, arrayListOf2, arrayListOf3, null, str2, null, botId, messageObject, null, null, null, false, 0, null, true);
        } else if (firstOrNull instanceof MessageObject) {
            this.messagesReaction = str;
            AccountInstance accountInstance3 = AccountInstance.getInstance(this.telegramGateway.getSelectedAccountIndex());
            arrayListOf = CollectionsKt__CollectionsKt.arrayListOf((MessageObject) firstOrNull);
            SendMessagesHelper.prepareSendingAudioDocuments(accountInstance3, arrayListOf, str2, botId, messageObject, null, null, false, 0, null, true);
        }
    }
}

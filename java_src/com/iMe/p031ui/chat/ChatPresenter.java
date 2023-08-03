package com.iMe.p031ui.chat;

import android.util.SparseArray;
import com.iMe.common.TelegramConstants;
import com.iMe.fork.controller.DialogTranslationController;
import com.iMe.manager.TelegramApi;
import com.iMe.manager.crypto.pay.BinancePayProcessManager;
import com.iMe.manager.crypto.pay.BinancePayProcessView;
import com.iMe.manager.multireply.MultiReplyInteractor;
import com.iMe.mapper.translation.TranslationUiMappingKt;
import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Reaction;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.donations.DonationsInteractor;
import com.iMe.storage.domain.interactor.google.GoogleServicesInteractor;
import com.iMe.storage.domain.interactor.translate.TranslationInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.translation.TranslationLanguage;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.reaction.ReactionHelper;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.disposables.Disposable;
import java.io.File;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$Chat;
import timber.log.Timber;
/* compiled from: ChatPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.chat.ChatPresenter */
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
        Single<Result<CharSequence>> observeOn = multiReplyInteractor.buildMultiReplyMessage(multiReplyInteractor.prepareSelectedMessages(selectedMessages), chat).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "multiReplyInteractor\n   …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CharSequence>, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CharSequence> result) {
                m1359invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1359invoke(Result<? extends CharSequence> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CharSequence> result = it;
                if (result instanceof Result.Success) {
                    ((ChatView) ChatPresenter.this.getViewState()).onMultiReplyMessageBuilt((CharSequence) ((Result.Success) result).getData());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$2
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

    public final void processVoiceToText(final MessageObject messageObject, File file) {
        Intrinsics.checkNotNullParameter(messageObject, "messageObject");
        Intrinsics.checkNotNullParameter(file, "file");
        Observable<Result<String>> observeOn = this.googleServicesInteractor.getVoiceText(file, DialogTranslationController.Companion.getCurrentLocale()).timeout(1L, TimeUnit.MINUTES).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "googleServicesInteractor…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1362invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1362invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    ((ChatView) ChatPresenter.this.getViewState()).onVoiceToTextCompleted(messageObject, (String) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.UNAUTHORIZED) {
                        ((ChatView) ChatPresenter.this.getViewState()).showAppUpdateDialog();
                    } else {
                        resourceManager = ChatPresenter.this.resourceManager;
                        ((ChatView) ChatPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                    }
                    ((ChatView) ChatPresenter.this.getViewState()).onVoiceToTextCompleted(messageObject, null);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$2
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
            Disposable subscribe = unblockPeer.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Boolean, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    m1357invoke(bool);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1357invoke(Boolean it) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    it.booleanValue();
                    ChatPresenter chatPresenter = ChatPresenter.this;
                    Object obj = data;
                    String str2 = str;
                    if (str2 == null) {
                        str2 = "";
                    }
                    chatPresenter.sendReactionMessage(obj, str2, formatUuid, messageObject);
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$2
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
            return;
        }
        if (str == null) {
            str = "";
        }
        sendReactionMessage(data, str, formatUuid, messageObject);
    }

    public final void loadTextTranslateLanguages() {
        final String currentLanguage = this.telegramGateway.getCurrentLanguage();
        Observable<Result<List<TranslationLanguage>>> observeOn = this.translationInteractor.languages().observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<TranslationLanguage>>, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<TranslationLanguage>> result) {
                m1361invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1361invoke(Result<? extends List<TranslationLanguage>> it) {
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                List sortedWith;
                List<TranslationLanguageUiModel> mutableList;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<TranslationLanguage>> result = it;
                if (result instanceof Result.Success) {
                    ChatView chatView = (ChatView) ChatPresenter.this.getViewState();
                    Iterable<TranslationLanguage> iterable = (Iterable) ((Result.Success) result).getData();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (TranslationLanguage translationLanguage : iterable) {
                        arrayList.add(TranslationUiMappingKt.mapToUI(translationLanguage, currentLanguage));
                    }
                    final Collator collator = Collator.getInstance(new Locale(currentLanguage));
                    Intrinsics.checkNotNullExpressionValue(collator, "getInstance(Locale(currentLanguage))");
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.ui.chat.ChatPresenter$loadTextTranslateLanguages$lambda$5$$inlined$compareBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            return collator.compare(((TranslationLanguageUiModel) t).getDisplayLanguage(), ((TranslationLanguageUiModel) t2).getDisplayLanguage());
                        }
                    });
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) sortedWith);
                    chatView.onLanguagesLoaded(mutableList);
                } else if (result instanceof Result.Error) {
                    resourceManager = ChatPresenter.this.resourceManager;
                    ((ChatView) ChatPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$2
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
            checkIsDonationEnabled(telegramConstants.prepareChatIdForBotAPI(tLRPC$Chat.f1518id));
            listenEvents();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
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
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.isDonationsEnabled(j).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1358invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1358invoke(Result<? extends Boolean> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    ((ChatView) ChatPresenter.this.getViewState()).showDonationMenuItem(((Boolean) ((Result.Success) result).getData()).booleanValue());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$2
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

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.DonationAddressUpdated.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.DonationAddressUpdated, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.DonationAddressUpdated donationAddressUpdated) {
                m1360invoke(donationAddressUpdated);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1360invoke(DomainRxEvents.DonationAddressUpdated it) {
                TLRPC$Chat tLRPC$Chat;
                TLRPC$Chat tLRPC$Chat2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.DonationAddressUpdated donationAddressUpdated = it;
                tLRPC$Chat = ChatPresenter.this.chat;
                boolean z = false;
                if (tLRPC$Chat != null && donationAddressUpdated.getChatId() == tLRPC$Chat.f1518id) {
                    z = true;
                }
                if (z) {
                    ChatPresenter chatPresenter = ChatPresenter.this;
                    TelegramConstants telegramConstants = TelegramConstants.INSTANCE;
                    tLRPC$Chat2 = chatPresenter.chat;
                    chatPresenter.checkIsDonationEnabled(telegramConstants.prepareChatIdForBotAPI(tLRPC$Chat2.f1518id));
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.chat.ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendReactionMessage(Object obj, String str, String str2, MessageObject messageObject) {
        ArrayList arrayListOf;
        ArrayList arrayListOf2;
        ArrayList arrayListOf3;
        String str3;
        ArrayList arrayListOf4;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.ArrayList<*>");
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
            SendMessagesHelper.prepareSendingMedia(accountInstance, arrayListOf4, botId, messageObject, null, null, false, false, null, false, 0, false, null, null);
        } else if (firstOrNull instanceof String) {
            this.messagesReaction = str;
            AccountInstance accountInstance2 = AccountInstance.getInstance(this.telegramGateway.getSelectedAccountIndex());
            String str5 = (String) firstOrNull;
            arrayListOf2 = CollectionsKt__CollectionsKt.arrayListOf(str5);
            arrayListOf3 = CollectionsKt__CollectionsKt.arrayListOf(str5);
            SendMessagesHelper.prepareSendingDocuments(accountInstance2, arrayListOf2, arrayListOf3, null, str2, null, botId, messageObject, null, null, null, false, 0, null, null, true);
        } else if (firstOrNull instanceof MessageObject) {
            this.messagesReaction = str;
            AccountInstance accountInstance3 = AccountInstance.getInstance(this.telegramGateway.getSelectedAccountIndex());
            arrayListOf = CollectionsKt__CollectionsKt.arrayListOf((MessageObject) firstOrNull);
            SendMessagesHelper.prepareSendingAudioDocuments(accountInstance3, arrayListOf, str2, botId, messageObject, null, null, false, 0, null, null, true);
        }
    }
}

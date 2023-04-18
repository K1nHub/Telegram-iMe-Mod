package com.iMe.p031ui.chat;

import android.util.SparseArray;
import com.iMe.common.TelegramConstants;
import com.iMe.fork.controller.DialogTranslationController;
import com.iMe.manager.TelegramApi;
import com.iMe.manager.crypto.pay.BinancePayProcessManager;
import com.iMe.manager.crypto.pay.BinancePayProcessView;
import com.iMe.manager.multireply.MultiReplyInteractor;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Reaction;
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
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.reaction.ReactionHelper;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.disposables.Disposable;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$Chat;
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
        Single<Result<CharSequence>> observeOn = multiReplyInteractor.buildMultiReplyMessage(multiReplyInteractor.prepareSelectedMessages(selectedMessages), chat).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "multiReplyInteractor\n   …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1952xb0a521b7(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1953xb0a521b8((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void processVoiceToText(MessageObject messageObject, File file) {
        Intrinsics.checkNotNullParameter(messageObject, "messageObject");
        Intrinsics.checkNotNullParameter(file, "file");
        Observable<Result<String>> observeOn = this.googleServicesInteractor.getVoiceText(file, DialogTranslationController.Companion.getCurrentLocale()).timeout(1L, TimeUnit.MINUTES).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "googleServicesInteractor…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1959x79efd582(this, messageObject)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1960x79efd583((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void checkAndSendReaction(Object data, String str, MessageObject messageObject) {
        Intrinsics.checkNotNullParameter(data, "data");
        int selectedAccountIndex = this.telegramGateway.getSelectedAccountIndex();
        if (ReactionHelper.checkReactionWork(selectedAccountIndex)) {
            ((ChatView) getViewState()).showReactionActivationAlert();
            return;
        }
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        this.uuidReaction = uuid;
        String formatUuid = ReactionHelper.INSTANCE.formatUuid(uuid);
        if (ReactionHelper.checkBlacklistReaction(selectedAccountIndex)) {
            Disposable subscribe = this.telegramApi.unblockPeer(AppConfiguration$Reaction.getBotId()).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1948xf214bff7(this, data, str, formatUuid, messageObject)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1949xf214bff8((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
            return;
        }
        if (str == null) {
            str = "";
        }
        sendReactionMessage(data, str, formatUuid, messageObject);
    }

    public final void loadTextTranslateLanguages() {
        String supportedLanguage = this.telegramGateway.getCurrentLocaleInformation().getSupportedLanguage();
        Observable<Result<List<TranslationLanguage>>> observeOn = this.translationInteractor.languages().observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1956x7ed9d4d7(this, supportedLanguage)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1957x7ed9d4d8((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
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
            checkIsDonationEnabled(telegramConstants.prepareChatIdForBotAPI(tLRPC$Chat.f1427id));
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
        Observable<Result<Boolean>> observeOn = this.donationsInteractor.isDonationsEnabled(j).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "donationsInteractor\n    …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1950xfa8e68f4(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1951xfa8e68f5((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.DonationAddressUpdated.class).observeOn(rxEventBus.getSchedulersProvider().mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1954xb2bce297(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1955xb2bce298(null)));
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

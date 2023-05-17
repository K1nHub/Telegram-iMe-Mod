package com.iMe.p031ui.reaction;

import android.util.Patterns;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.manager.TelegramApi;
import com.iMe.model.reaction.ReactionButtonsRowsType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Reaction;
import com.iMe.storage.data.network.model.request.reaction.ReactionMessageFile;
import com.iMe.storage.data.network.model.request.reaction.ReactionMessageTypes;
import com.iMe.storage.data.network.model.request.reaction.ReactionRequestData;
import com.iMe.storage.data.network.model.request.reaction.UrlButton;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.socialEmotion.ReactionInteractor;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.HashMap;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: ReactionPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.reaction.ReactionPresenter */
/* loaded from: classes3.dex */
public final class ReactionPresenter extends BasePresenter<ReactionView> {
    private ReactionButtonsRowsType buttonsRowType;
    private final long dialogId;
    private final ReactionInteractor interactor;
    private String messageId;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final TelegramApi telegramApi;
    private final TelegramGateway telegramGateway;

    public ReactionPresenter(ReactionInteractor interactor, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramApi telegramApi, TelegramGateway telegramGateway, long j) {
        Intrinsics.checkNotNullParameter(interactor, "interactor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.interactor = interactor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.telegramApi = telegramApi;
        this.telegramGateway = telegramGateway;
        this.dialogId = j;
        this.buttonsRowType = ReactionButtonsRowsType.SINGLE;
        this.messageId = "";
    }

    public final ReactionButtonsRowsType getButtonsRowType() {
        return this.buttonsRowType;
    }

    public final void setButtonsRowType(ReactionButtonsRowsType reactionButtonsRowsType) {
        Intrinsics.checkNotNullParameter(reactionButtonsRowsType, "<set-?>");
        this.buttonsRowType = reactionButtonsRowsType;
    }

    public final void prepareTextMessage(List<String> emojiList, List<UrlButton> buttonList, String messageText, int i, String str, MessageObject messageObject) {
        ReactionRequestData reactionRequestData;
        Intrinsics.checkNotNullParameter(emojiList, "emojiList");
        Intrinsics.checkNotNullParameter(buttonList, "buttonList");
        Intrinsics.checkNotNullParameter(messageText, "messageText");
        if (str != null) {
            reactionRequestData = new ReactionRequestData(ReactionMessageTypes.FILE, new ReactionMessageFile(str, messageText), null, emojiList, buttonList, i);
        } else {
            reactionRequestData = new ReactionRequestData(ReactionMessageTypes.TEXT, null, messageText, emojiList, buttonList, i);
        }
        Observable<R> flatMap = this.interactor.prepareLikeMessage(reactionRequestData).flatMap(new C2055x5210a4c3(new ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "interactor\n             …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2051x7bf70dbb(this, messageObject)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2052x7bf70dbc((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void getButtonLines() {
        ((ReactionView) getViewState()).showButtonPositionDialog(this.buttonsRowType);
    }

    public final void validateUrl(int i, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (Patterns.WEB_URL.matcher(url).matches()) {
            ((ReactionView) getViewState()).onUrlValid(i, url);
        } else {
            ((ReactionView) getViewState()).showToast(this.resourceManager.getString(C3290R.string.chat_reaction_url_validation_error));
        }
    }

    public final void cancelSendingMessage(MessageObject messageObject) {
        if (messageObject != null) {
            SendMessagesHelper.getInstance(this.telegramGateway.getSelectedAccountIndex()).cancelSendingMessage(messageObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, String> formatBotRequestParams(TLRPC$messages_BotResults tLRPC$messages_BotResults) {
        HashMap<String, String> hashMapOf;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m85to(TtmlNode.ATTR_ID, this.messageId), TuplesKt.m85to("query_id", String.valueOf(tLRPC$messages_BotResults.query_id)), TuplesKt.m85to("bot", String.valueOf(AppConfiguration$Reaction.getBotId())), TuplesKt.m85to("bot_name", AppConfiguration$Reaction.getBotName()));
        return hashMapOf;
    }
}

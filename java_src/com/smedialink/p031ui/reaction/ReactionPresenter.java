package com.smedialink.p031ui.reaction;

import android.util.Patterns;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.smedialink.manager.TelegramApi;
import com.smedialink.model.reaction.ReactionButtonsRowsType;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.common.AppConfiguration$Reaction;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.request.reaction.ReactionMessageFile;
import com.smedialink.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.smedialink.storage.data.network.model.request.reaction.ReactionMessageTypes;
import com.smedialink.storage.data.network.model.request.reaction.ReactionRequestData;
import com.smedialink.storage.data.network.model.request.reaction.UrlButton;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.interactor.socialEmotion.ReactionInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$messages_BotResults;
import timber.log.Timber;
/* compiled from: ReactionPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.reaction.ReactionPresenter */
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

    public final void prepareTextMessage(List<String> emojiList, List<UrlButton> buttonList, String messageText, int i, String str, final MessageObject messageObject) {
        ReactionRequestData reactionRequestData;
        Intrinsics.checkNotNullParameter(emojiList, "emojiList");
        Intrinsics.checkNotNullParameter(buttonList, "buttonList");
        Intrinsics.checkNotNullParameter(messageText, "messageText");
        if (str != null) {
            reactionRequestData = new ReactionRequestData(ReactionMessageTypes.FILE, new ReactionMessageFile(str, messageText), null, emojiList, buttonList, i);
        } else {
            reactionRequestData = new ReactionRequestData(ReactionMessageTypes.TEXT, null, messageText, emojiList, buttonList, i);
        }
        Observable<R> flatMap = this.interactor.prepareLikeMessage(reactionRequestData).flatMap(new Function() { // from class: com.smedialink.ui.reaction.ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                TelegramApi telegramApi;
                long j;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                ReactionPresenter reactionPresenter = ReactionPresenter.this;
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                reactionPresenter.messageId = ((ReactionMessageResult) data).getId();
                telegramApi = ReactionPresenter.this.telegramApi;
                Object data2 = result.getData();
                Intrinsics.checkNotNull(data2);
                String id = ((ReactionMessageResult) data2).getId();
                j = ReactionPresenter.this.dialogId;
                Observable<R> onErrorReturn = telegramApi.getInlineBot(id, j, AppConfiguration$Reaction.getBotId()).map(new Function() { // from class: com.smedialink.ui.reaction.ReactionPresenter$prepareTextMessage$lambda-0$$inlined$wrapAsResult$1
                    @Override // io.reactivex.functions.Function
                    public final Result<T> apply(T t) {
                        return Result.Companion.success(t);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // io.reactivex.functions.Function
                    public /* bridge */ /* synthetic */ Object apply(Object obj) {
                        return apply((C1850x504fd8d5<T, R>) obj);
                    }
                }).onErrorReturn(new Function() { // from class: com.smedialink.ui.reaction.ReactionPresenter$prepareTextMessage$lambda-0$$inlined$wrapAsResult$2
                    @Override // io.reactivex.functions.Function
                    public final Result<T> apply(Throwable it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Result.Companion.error$default(Result.Companion, new ErrorModel(ApiErrorHandler.ErrorStatus.BAD_RESPONSE, it), null, 2, null);
                    }
                });
                Intrinsics.checkNotNullExpressionValue(onErrorReturn, "map { it.toSuccess() }\n …RESPONSE, it).toError() }");
                return onErrorReturn;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "interactor\n             …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.reaction.ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                TelegramGateway telegramGateway;
                HashMap formatBotRequestParams;
                long j;
                TelegramGateway telegramGateway2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    ArrayList<TLRPC$BotInlineResult> arrayList = ((TLRPC$messages_BotResults) success.getData()).results;
                    Intrinsics.checkNotNullExpressionValue(arrayList, "result.data.results");
                    Object first = CollectionsKt.first((List<? extends Object>) arrayList);
                    Intrinsics.checkNotNullExpressionValue(first, "result.data.results.first()");
                    TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) first;
                    telegramGateway = ReactionPresenter.this.telegramGateway;
                    AccountInstance accountInstance = AccountInstance.getInstance(telegramGateway.getSelectedAccountIndex());
                    formatBotRequestParams = ReactionPresenter.this.formatBotRequestParams((TLRPC$messages_BotResults) success.getData());
                    j = ReactionPresenter.this.dialogId;
                    SendMessagesHelper.prepareSendingBotContextResult(null, accountInstance, tLRPC$BotInlineResult, formatBotRequestParams, j, messageObject, null, true, 0, null);
                    telegramGateway2 = ReactionPresenter.this.telegramGateway;
                    NotificationCenter.getInstance(telegramGateway2.getSelectedAccountIndex()).postNotificationName(NotificationCenter.sendSocialEmotion, new Object[0]);
                    ((ReactionView) ReactionPresenter.this.getViewState()).messageCreated();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = ReactionPresenter.this.resourceManager;
                    ((ReactionView) ReactionPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.reaction.ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$2
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

    public final void getButtonLines() {
        ((ReactionView) getViewState()).showButtonPositionDialog(this.buttonsRowType);
    }

    public final void validateUrl(int i, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (Patterns.WEB_URL.matcher(url).matches()) {
            ((ReactionView) getViewState()).onUrlValid(i, url);
        } else {
            ((ReactionView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.chat_reaction_url_validation_error));
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
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(TtmlNode.ATTR_ID, this.messageId), TuplesKt.m100to("query_id", String.valueOf(tLRPC$messages_BotResults.query_id)), TuplesKt.m100to("bot", String.valueOf(AppConfiguration$Reaction.getBotId())), TuplesKt.m100to("bot_name", AppConfiguration$Reaction.getBotName()));
        return hashMapOf;
    }
}

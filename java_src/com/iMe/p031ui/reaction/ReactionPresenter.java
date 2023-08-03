package com.iMe.p031ui.reaction;

import android.util.Patterns;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.manager.TelegramApi;
import com.iMe.model.reaction.ReactionButtonsRowsType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Reaction;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.request.reaction.ReactionMessageFile;
import com.iMe.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.iMe.storage.data.network.model.request.reaction.ReactionMessageTypes;
import com.iMe.storage.data.network.model.request.reaction.ReactionRequestData;
import com.iMe.storage.data.network.model.request.reaction.UrlButton;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.socialEmotion.ReactionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$messages_BotResults;
import timber.log.Timber;
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
        Observable<R> flatMap = this.interactor.prepareLikeMessage(reactionRequestData).flatMap(new C2064x5210a4c3(new Function1<Result<? extends ReactionMessageResult>, ObservableSource<? extends Result<? extends TLRPC$messages_BotResults>>>() { // from class: com.iMe.ui.reaction.ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends TLRPC$messages_BotResults>> invoke(Result<? extends ReactionMessageResult> result) {
                TelegramApi telegramApi;
                long j;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                ReactionPresenter reactionPresenter = ReactionPresenter.this;
                ReactionMessageResult data = result.getData();
                Intrinsics.checkNotNull(data);
                reactionPresenter.messageId = data.getId();
                telegramApi = ReactionPresenter.this.telegramApi;
                ReactionMessageResult data2 = result.getData();
                Intrinsics.checkNotNull(data2);
                String id = data2.getId();
                j = ReactionPresenter.this.dialogId;
                Observable onErrorReturn = telegramApi.getInlineBot(id, j, AppConfiguration$Reaction.getBotId()).map(new C2064x5210a4c3(new Function1<TLRPC$messages_BotResults, Result<? extends TLRPC$messages_BotResults>>() { // from class: com.iMe.ui.reaction.ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends TLRPC$messages_BotResults> invoke(TLRPC$messages_BotResults tLRPC$messages_BotResults) {
                        return Result.Companion.success(tLRPC$messages_BotResults);
                    }
                })).onErrorReturn(new C2064x5210a4c3(new Function1<Throwable, Result<? extends TLRPC$messages_BotResults>>() { // from class: com.iMe.ui.reaction.ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<TLRPC$messages_BotResults> invoke(Throwable it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Result.Companion.error$default(Result.Companion, new ErrorModel(ApiErrorHandler.ErrorStatus.BAD_RESPONSE, it), null, 2, null);
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(onErrorReturn, "map { it.toSuccess() }\n …RESPONSE, it).toError() }");
                return onErrorReturn;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "interactor\n             …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TLRPC$messages_BotResults>, Unit>() { // from class: com.iMe.ui.reaction.ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TLRPC$messages_BotResults> result) {
                m1379invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1379invoke(Result<? extends TLRPC$messages_BotResults> it) {
                ResourceManager resourceManager;
                TelegramGateway telegramGateway;
                HashMap formatBotRequestParams;
                long j;
                TelegramGateway telegramGateway2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TLRPC$messages_BotResults> result = it;
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
                    SendMessagesHelper.prepareSendingBotContextResult(null, accountInstance, tLRPC$BotInlineResult, formatBotRequestParams, j, messageObject, null, null, true, 0, null);
                    telegramGateway2 = ReactionPresenter.this.telegramGateway;
                    NotificationCenter.getInstance(telegramGateway2.getSelectedAccountIndex()).lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendSocialEmotion, new Object[0]);
                    ((ReactionView) ReactionPresenter.this.getViewState()).messageCreated();
                } else if (result instanceof Result.Error) {
                    resourceManager = ReactionPresenter.this.resourceManager;
                    ((ReactionView) ReactionPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.reaction.ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$2
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

    public final void getButtonLines() {
        ((ReactionView) getViewState()).showButtonPositionDialog(this.buttonsRowType);
    }

    public final void validateUrl(int i, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (Patterns.WEB_URL.matcher(url).matches()) {
            ((ReactionView) getViewState()).onUrlValid(i, url);
        } else {
            ((ReactionView) getViewState()).showToast(this.resourceManager.getString(C3419R.string.chat_reaction_url_validation_error));
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
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m103to(TtmlNode.ATTR_ID, this.messageId), TuplesKt.m103to("query_id", String.valueOf(tLRPC$messages_BotResults.query_id)), TuplesKt.m103to("bot", String.valueOf(AppConfiguration$Reaction.getBotId())), TuplesKt.m103to("bot_name", AppConfiguration$Reaction.getBotName()));
        return hashMapOf;
    }
}

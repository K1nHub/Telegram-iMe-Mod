package com.smedialink.p031ui.reaction;

import com.smedialink.manager.TelegramApi;
import com.smedialink.storage.common.AppConfiguration$Reaction;
import com.smedialink.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.ui.reaction.ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends ReactionMessageResult>, ObservableSource<? extends Result<? extends TLRPC$messages_BotResults>>> {
    final /* synthetic */ ReactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1(ReactionPresenter reactionPresenter) {
        super(1);
        this.this$0 = reactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends TLRPC$messages_BotResults>> invoke(Result<? extends ReactionMessageResult> result) {
        TelegramApi telegramApi;
        long j;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        ReactionPresenter reactionPresenter = this.this$0;
        ReactionMessageResult data = result.getData();
        Intrinsics.checkNotNull(data);
        reactionPresenter.messageId = data.getId();
        telegramApi = this.this$0.telegramApi;
        ReactionMessageResult data2 = result.getData();
        Intrinsics.checkNotNull(data2);
        String id = data2.getId();
        j = this.this$0.dialogId;
        Observable onErrorReturn = telegramApi.getInlineBot(id, j, AppConfiguration$Reaction.getBotId()).map(new C1956x5210a4c3(C1954x3fabecbe.INSTANCE)).onErrorReturn(new C1956x5210a4c3(C1955x3fabecbf.INSTANCE));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "map { it.toSuccess() }\n …RESPONSE, it).toError() }");
        return onErrorReturn;
    }
}

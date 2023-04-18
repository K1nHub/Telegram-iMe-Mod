package com.iMe.manager.multireply.data;

import com.iMe.manager.TelegramApi;
import com.iMe.manager.multireply.message.MessageLinkCache;
import com.iMe.manager.multireply.message.MessageLinkPattern;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_exportedMessageLink;
/* compiled from: MultiReplyRepository.kt */
/* loaded from: classes3.dex */
public final class MultiReplyRepository {
    private final MessageLinkCache messageLinkCache;
    private final SchedulersProvider schedulersProvider;
    private final TelegramApi telegramApi;

    public MultiReplyRepository(TelegramApi telegramApi, MessageLinkCache messageLinkCache, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(messageLinkCache, "messageLinkCache");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.telegramApi = telegramApi;
        this.messageLinkCache = messageLinkCache;
        this.schedulersProvider = schedulersProvider;
    }

    public final Single<MessageLinkPattern> requestPattern(MessageObject message, TLRPC$Chat currentChat) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(currentChat, "currentChat");
        Single<MessageLinkPattern> subscribeOn = Observable.concat(this.messageLinkCache.getLinkPatternFromCache(currentChat.f1427id), getLinkPatternFromApi(message, currentChat)).firstOrError().subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "concat(\n            mess…(schedulersProvider.io())");
        return subscribeOn;
    }

    private final Observable<MessageLinkPattern> getLinkPatternFromApi(MessageObject messageObject, TLRPC$Chat tLRPC$Chat) {
        Observable<TLRPC$TL_exportedMessageLink> messageLinkPattern = this.telegramApi.getMessageLinkPattern(messageObject, tLRPC$Chat);
        final MultiReplyRepository$getLinkPatternFromApi$1 multiReplyRepository$getLinkPatternFromApi$1 = new MultiReplyRepository$getLinkPatternFromApi$1(this, messageObject, tLRPC$Chat);
        Observable<MessageLinkPattern> subscribeOn = messageLinkPattern.map(new Function() { // from class: com.iMe.manager.multireply.data.MultiReplyRepository$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                MessageLinkPattern linkPatternFromApi$lambda$0;
                linkPatternFromApi$lambda$0 = MultiReplyRepository.getLinkPatternFromApi$lambda$0(Function1.this, obj);
                return linkPatternFromApi$lambda$0;
            }
        }).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "private fun getLinkPatte…ulersProvider.io())\n    }");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MessageLinkPattern getLinkPatternFromApi$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (MessageLinkPattern) tmp0.invoke(obj);
    }
}

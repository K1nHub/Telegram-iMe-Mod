package com.smedialink.manager.multireply.data;

import com.smedialink.manager.TelegramApi;
import com.smedialink.manager.multireply.message.MessageLinkCache;
import com.smedialink.manager.multireply.message.MessageLinkPattern;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.functions.Function;
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
        Single<MessageLinkPattern> subscribeOn = Observable.concat(this.messageLinkCache.getLinkPatternFromCache(currentChat.f1494id), getLinkPatternFromApi(message, currentChat)).firstOrError().subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "concat(\n            mess…(schedulersProvider.io())");
        return subscribeOn;
    }

    private final Observable<MessageLinkPattern> getLinkPatternFromApi(final MessageObject messageObject, final TLRPC$Chat tLRPC$Chat) {
        Observable<MessageLinkPattern> subscribeOn = this.telegramApi.getMessageLinkPattern(messageObject, tLRPC$Chat).map(new Function() { // from class: com.smedialink.manager.multireply.data.MultiReplyRepository$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                MessageLinkPattern m1270getLinkPatternFromApi$lambda0;
                m1270getLinkPatternFromApi$lambda0 = MultiReplyRepository.m1270getLinkPatternFromApi$lambda0(MultiReplyRepository.this, messageObject, tLRPC$Chat, (TLRPC$TL_exportedMessageLink) obj);
                return m1270getLinkPatternFromApi$lambda0;
            }
        }).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "telegramApi.getMessageLi…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getLinkPatternFromApi$lambda-0  reason: not valid java name */
    public static final MessageLinkPattern m1270getLinkPatternFromApi$lambda0(MultiReplyRepository this$0, MessageObject message, TLRPC$Chat currentChat, TLRPC$TL_exportedMessageLink it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(currentChat, "$currentChat");
        Intrinsics.checkNotNullParameter(it, "it");
        MessageLinkCache messageLinkCache = this$0.messageLinkCache;
        String str = it.link;
        Intrinsics.checkNotNullExpressionValue(str, "it.link");
        return messageLinkCache.writeLinkToCache(str, message.getId(), currentChat.f1494id);
    }
}

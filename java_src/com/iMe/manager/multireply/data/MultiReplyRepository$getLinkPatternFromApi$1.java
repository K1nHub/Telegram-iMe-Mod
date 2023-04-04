package com.iMe.manager.multireply.data;

import com.iMe.manager.multireply.message.MessageLinkCache;
import com.iMe.manager.multireply.message.MessageLinkPattern;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_exportedMessageLink;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MultiReplyRepository.kt */
/* loaded from: classes3.dex */
public final class MultiReplyRepository$getLinkPatternFromApi$1 extends Lambda implements Function1<TLRPC$TL_exportedMessageLink, MessageLinkPattern> {
    final /* synthetic */ TLRPC$Chat $currentChat;
    final /* synthetic */ MessageObject $message;
    final /* synthetic */ MultiReplyRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiReplyRepository$getLinkPatternFromApi$1(MultiReplyRepository multiReplyRepository, MessageObject messageObject, TLRPC$Chat tLRPC$Chat) {
        super(1);
        this.this$0 = multiReplyRepository;
        this.$message = messageObject;
        this.$currentChat = tLRPC$Chat;
    }

    @Override // kotlin.jvm.functions.Function1
    public final MessageLinkPattern invoke(TLRPC$TL_exportedMessageLink it) {
        MessageLinkCache messageLinkCache;
        Intrinsics.checkNotNullParameter(it, "it");
        messageLinkCache = this.this$0.messageLinkCache;
        String str = it.link;
        Intrinsics.checkNotNullExpressionValue(str, "it.link");
        return messageLinkCache.writeLinkToCache(str, this.$message.getId(), this.$currentChat.f1502id);
    }
}

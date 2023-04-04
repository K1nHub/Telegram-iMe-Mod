package com.iMe.services;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.MessagesController;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: FilteredChatParticipantsProcessingService.kt */
/* loaded from: classes3.dex */
final class FilteredChatParticipantsProcessingService$chat$2 extends Lambda implements Function0<TLRPC$Chat> {
    final /* synthetic */ FilteredChatParticipantsProcessingService this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredChatParticipantsProcessingService$chat$2(FilteredChatParticipantsProcessingService filteredChatParticipantsProcessingService) {
        super(0);
        this.this$0 = filteredChatParticipantsProcessingService;
    }

    @Override // kotlin.jvm.functions.Function0
    public final TLRPC$Chat invoke() {
        MessagesController messagesController;
        long j;
        messagesController = this.this$0.messagesController;
        if (messagesController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messagesController");
            messagesController = null;
        }
        j = this.this$0.chatId;
        return messagesController.getChat(Long.valueOf(j));
    }
}

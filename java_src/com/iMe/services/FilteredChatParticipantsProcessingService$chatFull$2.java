package com.iMe.services;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.MessagesController;
import org.telegram.tgnet.TLRPC$ChatFull;
/* compiled from: FilteredChatParticipantsProcessingService.kt */
/* loaded from: classes3.dex */
final class FilteredChatParticipantsProcessingService$chatFull$2 extends Lambda implements Function0<TLRPC$ChatFull> {
    final /* synthetic */ FilteredChatParticipantsProcessingService this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredChatParticipantsProcessingService$chatFull$2(FilteredChatParticipantsProcessingService filteredChatParticipantsProcessingService) {
        super(0);
        this.this$0 = filteredChatParticipantsProcessingService;
    }

    @Override // kotlin.jvm.functions.Function0
    public final TLRPC$ChatFull invoke() {
        MessagesController messagesController;
        long j;
        messagesController = this.this$0.messagesController;
        if (messagesController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messagesController");
            messagesController = null;
        }
        j = this.this$0.chatId;
        return messagesController.getChatFull(j);
    }
}

package com.smedialink.p031ui.reaction;

import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.reaction.ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1938x7bf70dbb extends Lambda implements Function1<Result<? extends TLRPC$messages_BotResults>, Unit> {
    final /* synthetic */ MessageObject $replyMessageObject$inlined;
    final /* synthetic */ ReactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1938x7bf70dbb(ReactionPresenter reactionPresenter, MessageObject messageObject) {
        super(1);
        this.this$0 = reactionPresenter;
        this.$replyMessageObject$inlined = messageObject;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TLRPC$messages_BotResults> result) {
        m1240invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1240invoke(Result<? extends TLRPC$messages_BotResults> it) {
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
            telegramGateway = this.this$0.telegramGateway;
            AccountInstance accountInstance = AccountInstance.getInstance(telegramGateway.getSelectedAccountIndex());
            formatBotRequestParams = this.this$0.formatBotRequestParams((TLRPC$messages_BotResults) success.getData());
            j = this.this$0.dialogId;
            SendMessagesHelper.prepareSendingBotContextResult(null, accountInstance, tLRPC$BotInlineResult, formatBotRequestParams, j, this.$replyMessageObject$inlined, null, true, 0, null);
            telegramGateway2 = this.this$0.telegramGateway;
            NotificationCenter.getInstance(telegramGateway2.getSelectedAccountIndex()).postNotificationName(NotificationCenter.sendSocialEmotion, new Object[0]);
            ((ReactionView) this.this$0.getViewState()).messageCreated();
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((ReactionView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}

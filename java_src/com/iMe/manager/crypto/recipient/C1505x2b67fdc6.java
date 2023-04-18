package com.iMe.manager.crypto.recipient;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$LongRef;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1505x2b67fdc6 extends Lambda implements Function1<Result<? extends TLRPC$messages_BotResults>, Unit> {
    final /* synthetic */ Ref$LongRef $chatId$inlined;
    final /* synthetic */ String $recipient$inlined;
    final /* synthetic */ CryptoRecipientManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1505x2b67fdc6(CryptoRecipientManager cryptoRecipientManager, Ref$LongRef ref$LongRef, String str) {
        super(1);
        this.this$0 = cryptoRecipientManager;
        this.$chatId$inlined = ref$LongRef;
        this.$recipient$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TLRPC$messages_BotResults> result) {
        m1242invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1242invoke(Result<? extends TLRPC$messages_BotResults> it) {
        CryptoRecipientView viewState;
        ResourceManager resourceManager;
        TelegramGateway telegramGateway;
        HashMap formatBotRequestParams;
        CryptoRecipientView viewState2;
        ResourceManager resourceManager2;
        ResourceManager resourceManager3;
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
            CryptoRecipientManager cryptoRecipientManager = this.this$0;
            String str = tLRPC$BotInlineResult.f1425id;
            Intrinsics.checkNotNullExpressionValue(str, "inlineBot.id");
            formatBotRequestParams = cryptoRecipientManager.formatBotRequestParams(str, String.valueOf(((TLRPC$messages_BotResults) success.getData()).query_id));
            SendMessagesHelper.prepareSendingBotContextResult(null, accountInstance, tLRPC$BotInlineResult, formatBotRequestParams, this.$chatId$inlined.element, null, null, true, 0, null);
            viewState2 = this.this$0.getViewState();
            resourceManager2 = this.this$0.resourceManager;
            String string = resourceManager2.getString(C3242R.string.wallet_recipient_request_permission_success_dialog_title);
            resourceManager3 = this.this$0.resourceManager;
            String string2 = resourceManager3.getString(C3242R.string.wallet_recipient_request_permission_success_dialog_description, this.$recipient$inlined);
            final CryptoRecipientManager cryptoRecipientManager2 = this.this$0;
            final Ref$LongRef ref$LongRef = this.$chatId$inlined;
            viewState2.showRequestPermissionSuccessDialog(string, string2, new Callbacks$Callback() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$2$1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    CryptoRecipientView viewState3;
                    viewState3 = CryptoRecipientManager.this.getViewState();
                    viewState3.openChatScreen(ref$LongRef.element);
                }
            });
        } else if (result instanceof Result.Error) {
            viewState = this.this$0.getViewState();
            resourceManager = this.this$0.resourceManager;
            viewState.showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive;

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
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2183xcd7a3035 extends Lambda implements Function1<Result<? extends TLRPC$messages_BotResults>, Unit> {
    final /* synthetic */ BaseFragment $fragment$inlined;
    final /* synthetic */ WalletReceiveBinancePayPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2183xcd7a3035(BaseFragment baseFragment, WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter) {
        super(1);
        this.$fragment$inlined = baseFragment;
        this.this$0 = walletReceiveBinancePayPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TLRPC$messages_BotResults> result) {
        m1358invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1358invoke(Result<? extends TLRPC$messages_BotResults> it) {
        ResourceManager resourceManager;
        TelegramGateway telegramGateway;
        HashMap formatBotRequestParams;
        long j;
        ResourceManager resourceManager2;
        ResourceManager resourceManager3;
        Long l;
        ResourceManager resourceManager4;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends TLRPC$messages_BotResults> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            ArrayList<TLRPC$BotInlineResult> arrayList = ((TLRPC$messages_BotResults) success.getData()).results;
            Intrinsics.checkNotNullExpressionValue(arrayList, "result.data.results");
            Object first = CollectionsKt.first((List<? extends Object>) arrayList);
            Intrinsics.checkNotNullExpressionValue(first, "result.data.results.first()");
            TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) first;
            BaseFragment baseFragment = this.$fragment$inlined;
            telegramGateway = this.this$0.telegramGateway;
            AccountInstance accountInstance = AccountInstance.getInstance(telegramGateway.getSelectedAccountIndex());
            WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter = this.this$0;
            String str = tLRPC$BotInlineResult.f1497id;
            Intrinsics.checkNotNullExpressionValue(str, "inlineBot.id");
            formatBotRequestParams = walletReceiveBinancePayPresenter.formatBotRequestParams(str, String.valueOf(((TLRPC$messages_BotResults) success.getData()).query_id));
            j = this.this$0.chatId;
            SendMessagesHelper.prepareSendingBotContextResult(baseFragment, accountInstance, tLRPC$BotInlineResult, formatBotRequestParams, j, null, null, true, 0, null);
            resourceManager2 = this.this$0.resourceManager;
            String string = resourceManager2.getString(C3286R.string.wallet_binance_pay_request_send_success_dialog_title);
            resourceManager3 = this.this$0.resourceManager;
            int i = C3286R.string.wallet_binance_pay_request_send_success_dialog_description;
            l = this.this$0.recipientId;
            String string2 = resourceManager3.getString(i, String.valueOf(l));
            resourceManager4 = this.this$0.resourceManager;
            String string3 = resourceManager4.getString(C3286R.string.common_ok);
            final WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter2 = this.this$0;
            ((WalletReceiveBinancePayView) this.this$0.getViewState()).showCreatedCollectionSuccessDialog(string, string2, string3, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$createCollection$2$1
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    long j2;
                    j2 = WalletReceiveBinancePayPresenter.this.chatId;
                    ((WalletReceiveBinancePayView) WalletReceiveBinancePayPresenter.this.getViewState()).openChatScreen(j2);
                }
            });
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletReceiveBinancePayView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}

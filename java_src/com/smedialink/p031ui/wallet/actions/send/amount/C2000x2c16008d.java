package com.smedialink.p031ui.wallet.actions.send.amount;

import com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2000x2c16008d extends Lambda implements Function1<Result<? extends CryptoTransferMetadata>, Unit> {
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2000x2c16008d(WalletSendAmountPresenter walletSendAmountPresenter) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoTransferMetadata> result) {
        m1297invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1297invoke(Result<? extends CryptoTransferMetadata> it) {
        ResourceManager resourceManager;
        WalletSendAmountPresenter.SendScreenState sendScreenState;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends CryptoTransferMetadata> result = it;
        if (result instanceof Result.Success) {
            this.this$0.configureFees((CryptoTransferMetadata) ((Result.Success) result).getData());
            this.this$0.currentState = WalletSendAmountPresenter.SendScreenState.SEND;
            sendScreenState = this.this$0.currentState;
            ((WalletSendAmountView) this.this$0.getViewState()).setupScreenState(sendScreenState);
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                this.this$0.runNoEnoughMoneyFlow();
                return;
            }
            ErrorModel error2 = error.getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletSendAmountView) this.this$0.getViewState()).showToast(error2.getMessage(resourceManager));
        }
    }
}

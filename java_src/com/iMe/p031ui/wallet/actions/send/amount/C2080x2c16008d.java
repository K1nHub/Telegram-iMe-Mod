package com.iMe.p031ui.wallet.actions.send.amount;

import com.iMe.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2080x2c16008d extends Lambda implements Function1<Result<? extends CryptoTransferMetadata>, Unit> {
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2080x2c16008d(WalletSendAmountPresenter walletSendAmountPresenter) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoTransferMetadata> result) {
        m1382invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1382invoke(Result<? extends CryptoTransferMetadata> it) {
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
            resourceManager = this.this$0.resourceManager;
            ((WalletSendAmountView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
        }
    }
}

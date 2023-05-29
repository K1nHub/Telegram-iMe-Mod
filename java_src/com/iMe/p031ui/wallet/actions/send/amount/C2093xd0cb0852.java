package com.iMe.p031ui.wallet.actions.send.amount;

import com.iMe.common.AppRxEvents;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2093xd0cb0852 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ TransferArgs.EVM $transferArgs$inlined;
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2093xd0cb0852(WalletSendAmountPresenter walletSendAmountPresenter, TransferArgs.EVM evm) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
        this.$transferArgs$inlined = evm;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1388invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1388invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        RxEventBus rxEventBus;
        String successMessage;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            rxEventBus = this.this$0.rxEventBus;
            rxEventBus.publish(AppRxEvents.UpdateWalletScreen.INSTANCE);
            successMessage = this.this$0.getSuccessMessage(this.$transferArgs$inlined.getAmount());
            ((WalletSendAmountView) this.this$0.getViewState()).showSuccessSend(successMessage);
            this.this$0.resetTransactionFee();
            this.this$0.resetStateIfNeed();
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            IErrorStatus status = error.getError().getStatus();
            if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                this.this$0.runNoEnoughMoneyFlow();
            } else if (status == FirebaseFunctionsErrorHandler.ErrorStatus.USER_NOT_FOUND) {
                if (this.this$0.getSelectedUser() != null) {
                    ((WalletSendAmountView) this.this$0.getViewState()).showRecipientWalletNotActivatedError();
                } else {
                    ((WalletSendAmountView) this.this$0.getViewState()).showRecipientNotFoundError();
                }
            } else if (status == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_BLOCK_CHAIN_ERROR) {
                this.this$0.resetTransactionFee();
                this.this$0.resetStateIfNeed();
                resourceManager2 = this.this$0.resourceManager;
                ((WalletSendAmountView) this.this$0.getViewState()).showErrorToast(error, resourceManager2);
            } else {
                resourceManager = this.this$0.resourceManager;
                ((WalletSendAmountView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
            }
        }
    }
}

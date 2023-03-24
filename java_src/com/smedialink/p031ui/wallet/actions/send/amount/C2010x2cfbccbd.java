package com.smedialink.p031ui.wallet.actions.send.amount;

import com.smedialink.common.AppRxEvents;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2010x2cfbccbd extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ boolean $isNeedSendMessage$inlined;
    final /* synthetic */ TransferArgs $transferArgs$inlined;
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2010x2cfbccbd(WalletSendAmountPresenter walletSendAmountPresenter, boolean z, TransferArgs transferArgs) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
        this.$isNeedSendMessage$inlined = z;
        this.$transferArgs$inlined = transferArgs;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1302invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1302invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        RxEventBus rxEventBus;
        String successMessage;
        TelegramGateway telegramGateway;
        TelegramGateway telegramGateway2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            T viewState = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState, false, false, null, 6, null);
            if (this.this$0.getSelectedUser() != null && this.$isNeedSendMessage$inlined) {
                telegramGateway = this.this$0.telegramGateway;
                TLRPC$User selectedUser = this.this$0.getSelectedUser();
                Intrinsics.checkNotNull(selectedUser);
                if (telegramGateway.hasUser(selectedUser.f1640id)) {
                    WalletSendAmountPresenter walletSendAmountPresenter = this.this$0;
                    TLRPC$User selectedUser2 = walletSendAmountPresenter.getSelectedUser();
                    Intrinsics.checkNotNull(selectedUser2);
                    long j = selectedUser2.f1640id;
                    telegramGateway2 = this.this$0.telegramGateway;
                    walletSendAmountPresenter.sendMessageToChat(j, telegramGateway2.getSelectedAccountId(), this.$transferArgs$inlined.getAmount());
                }
            }
            rxEventBus = this.this$0.rxEventBus;
            rxEventBus.publish(AppRxEvents.UpdateWalletScreen.INSTANCE);
            successMessage = this.this$0.getSuccessMessage(this.$transferArgs$inlined.getAmount());
            ((WalletSendAmountView) this.this$0.getViewState()).showSuccessSend(successMessage);
            this.this$0.resetTransactionFee();
            this.this$0.resetStateIfNeed();
        } else if (result instanceof Result.Error) {
            T viewState2 = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState2, "viewState");
            BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState2, false, false, null, 6, null);
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
                ErrorModel error2 = error.getError();
                resourceManager2 = this.this$0.resourceManager;
                ((WalletSendAmountView) this.this$0.getViewState()).showToast(error2.getMessage(resourceManager2));
            } else {
                ErrorModel error3 = error.getError();
                resourceManager = this.this$0.resourceManager;
                ((WalletSendAmountView) this.this$0.getViewState()).showToast(error3.getMessage(resourceManager));
            }
        }
    }
}

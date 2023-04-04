package com.iMe.p032ui.wallet.actions.send.amount;

import com.iMe.p032ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.iMe.storage.data.mapper.crypto.DonationMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.donations.DonationTransferMetadata;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2056x998569d4 extends Lambda implements Function1<Result<? extends DonationTransferMetadata>, Unit> {
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2056x998569d4(WalletSendAmountPresenter walletSendAmountPresenter) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends DonationTransferMetadata> result) {
        m1378invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1378invoke(Result<? extends DonationTransferMetadata> it) {
        ResourceManager resourceManager;
        WalletSendAmountPresenter.SendScreenState sendScreenState;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends DonationTransferMetadata> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.setSelectedAddress(((DonationTransferMetadata) success.getData()).getRecipientAddress());
            this.this$0.configureFees(DonationMappingKt.mapToCryptoMetadata((DonationTransferMetadata) success.getData()));
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

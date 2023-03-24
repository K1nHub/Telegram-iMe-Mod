package com.smedialink.p031ui.wallet.donations;

import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2151x23f668db extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ WalletDonationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2151x23f668db(WalletDonationsPresenter walletDonationsPresenter) {
        super(1);
        this.this$0 = walletDonationsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1349invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1349invoke(Result<? extends String> it) {
        String str;
        ResourceManager resourceManager;
        String str2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        this.this$0.addressInfoResultState = result;
        if (result instanceof Result.Success) {
            this.this$0.currentDonationsAddress = (String) ((Result.Success) result).getData();
            str2 = this.this$0.currentDonationsAddress;
            ((WalletDonationsView) this.this$0.getViewState()).onDonationsAddressLoaded(str2);
            this.this$0.loadWalletInformation();
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() != FirebaseFunctionsErrorHandler.CryptoErrorStatus.DONATIONS_NOT_CONFIGURED_YET) {
                ErrorModel error2 = error.getError();
                resourceManager = this.this$0.resourceManager;
                ((WalletDonationsView) this.this$0.getViewState()).showToast(error2.getMessage(resourceManager));
            }
            str = this.this$0.currentDonationsAddress;
            ((WalletDonationsView) this.this$0.getViewState()).onDonationsAddressLoaded(str);
        }
    }
}

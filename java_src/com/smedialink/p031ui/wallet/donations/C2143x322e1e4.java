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
/* renamed from: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2143x322e1e4 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ String $address$inlined;
    final /* synthetic */ WalletDonationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2143x322e1e4(WalletDonationsPresenter walletDonationsPresenter, String str) {
        super(1);
        this.this$0 = walletDonationsPresenter;
        this.$address$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1336invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1336invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        String str;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            this.this$0.currentDonationsAddress = this.$address$inlined;
            str = this.this$0.currentDonationsAddress;
            ((WalletDonationsView) this.this$0.getViewState()).onDonationsAddressLoaded(str);
            this.this$0.loadWalletInformation();
            this.this$0.updateChatDonateAvailable();
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.CryptoErrorStatus.DONATIONS_ADDRESS_ALREADY_LINKED) {
                this.this$0.loadDonationAddress();
            }
            ErrorModel error2 = error.getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletDonationsView) this.this$0.getViewState()).showToast(error2.getMessage(resourceManager));
        }
    }
}

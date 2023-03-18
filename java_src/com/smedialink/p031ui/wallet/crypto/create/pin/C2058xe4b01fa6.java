package com.smedialink.p031ui.wallet.crypto.create.pin;

import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2058xe4b01fa6 extends Lambda implements Function1<Result<? extends Wallet>, Unit> {
    final /* synthetic */ CreateWalletPinPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2058xe4b01fa6(CreateWalletPinPresenter createWalletPinPresenter) {
        super(1);
        this.this$0 = createWalletPinPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
        m1313invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1313invoke(Result<? extends Wallet> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Wallet> result = it;
        if (result instanceof Result.Success) {
            this.this$0.savePinEncrypted();
            ((CreateWalletPinView) this.this$0.getViewState()).onSuccessCreateWallet();
        } else if (result instanceof Result.Error) {
            CreateWalletPinPresenter createWalletPinPresenter = this.this$0;
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            createWalletPinPresenter.onPinError(error.getMessage(resourceManager));
        }
    }
}

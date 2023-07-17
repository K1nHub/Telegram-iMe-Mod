package com.iMe.p031ui.wallet.crypto.enter.pin;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2167x8ea63d12 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ EnterWalletPinPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2167x8ea63d12(EnterWalletPinPresenter enterWalletPinPresenter) {
        super(1);
        this.this$0 = enterWalletPinPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1432invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1432invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            ((EnterWalletPinView) this.this$0.getViewState()).onDeleteWalletSuccess();
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((EnterWalletPinView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

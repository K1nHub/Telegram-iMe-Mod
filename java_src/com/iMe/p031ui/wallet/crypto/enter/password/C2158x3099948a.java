package com.iMe.p031ui.wallet.crypto.enter.password;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2158x3099948a extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ EnterWalletPasswordPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2158x3099948a(EnterWalletPasswordPresenter enterWalletPasswordPresenter) {
        super(1);
        this.this$0 = enterWalletPasswordPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1414invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1414invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            ((EnterWalletPasswordView) this.this$0.getViewState()).onSuccessDeleteWallet();
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((EnterWalletPasswordView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

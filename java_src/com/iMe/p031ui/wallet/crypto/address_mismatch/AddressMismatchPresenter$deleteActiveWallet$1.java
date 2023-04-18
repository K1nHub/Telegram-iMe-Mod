package com.iMe.p031ui.wallet.crypto.address_mismatch;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AddressMismatchPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$deleteActiveWallet$1 */
/* loaded from: classes3.dex */
public final class AddressMismatchPresenter$deleteActiveWallet$1 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ long $delayToCloseScreen;
    final /* synthetic */ AddressMismatchPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressMismatchPresenter$deleteActiveWallet$1(AddressMismatchPresenter addressMismatchPresenter, long j) {
        super(1);
        this.this$0 = addressMismatchPresenter;
        this.$delayToCloseScreen = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        invoke2((Result<Boolean>) result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<Boolean> result) {
        ResourceManager resourceManager;
        if (result instanceof Result.Success) {
            ((AddressMismatchView) this.this$0.getViewState()).closeScreen(this.$delayToCloseScreen);
        } else if (result instanceof Result.Error) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            resourceManager = this.this$0.resourceManager;
            ((AddressMismatchView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

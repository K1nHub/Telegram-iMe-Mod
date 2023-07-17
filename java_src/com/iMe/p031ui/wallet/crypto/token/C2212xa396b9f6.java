package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$onAddressScanned$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2212xa396b9f6 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ String $text$inlined;
    final /* synthetic */ TokenManagementPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2212xa396b9f6(TokenManagementPresenter tokenManagementPresenter, String str) {
        super(1);
        this.this$0 = tokenManagementPresenter;
        this.$text$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1452invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1452invoke(Result<? extends Boolean> it) {
        String validationErrorText;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (!(result instanceof Result.Success) || !((Boolean) ((Result.Success) result).getData()).booleanValue()) {
            validationErrorText = this.this$0.getValidationErrorText();
            ((TokenManagementView) this.this$0.getViewState()).showToast(validationErrorText);
            return;
        }
        ((TokenManagementView) this.this$0.getViewState()).setScannedAddressText(this.$text$inlined);
    }
}

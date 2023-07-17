package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3417R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$deleteToken$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2204x76968d39 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ TokenManagementPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2204x76968d39(TokenManagementPresenter tokenManagementPresenter) {
        super(1);
        this.this$0 = tokenManagementPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1449invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1449invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            this.this$0.onTokenStatusChanged(C3417R.string.wallet_tokens_management_delete_success);
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((TokenManagementView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

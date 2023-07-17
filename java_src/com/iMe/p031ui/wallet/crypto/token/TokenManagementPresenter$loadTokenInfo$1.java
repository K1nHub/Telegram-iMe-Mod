package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenManagementPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$1 */
/* loaded from: classes4.dex */
public final class TokenManagementPresenter$loadTokenInfo$1 extends Lambda implements Function1<Result<? extends Boolean>, Result<? extends Boolean>> {
    final /* synthetic */ TokenManagementPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenManagementPresenter$loadTokenInfo$1(TokenManagementPresenter tokenManagementPresenter) {
        super(1);
        this.this$0 = tokenManagementPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Result<? extends Boolean> invoke(Result<? extends Boolean> result) {
        return invoke2((Result<Boolean>) result);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Result<Boolean> invoke2(Result<Boolean> validationResult) {
        String validationErrorText;
        Intrinsics.checkNotNullParameter(validationResult, "validationResult");
        if (!(validationResult instanceof Result.Success) || ((Boolean) ((Result.Success) validationResult).getData()).booleanValue()) {
            return validationResult;
        }
        validationErrorText = this.this$0.getValidationErrorText();
        return Result.Companion.error$default(Result.Companion, new ErrorModel(validationErrorText, FirebaseFunctionsErrorHandler.ErrorStatus.VALIDATION_ERROR, null, 4, null), null, 2, null);
    }
}

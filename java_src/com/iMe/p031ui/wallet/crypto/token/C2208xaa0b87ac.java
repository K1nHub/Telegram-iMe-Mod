package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2208xaa0b87ac extends Lambda implements Function1<Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>, Unit> {
    final /* synthetic */ TokenManagementPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2208xaa0b87ac(TokenManagementPresenter tokenManagementPresenter) {
        super(1);
        this.this$0 = tokenManagementPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> result) {
        m1451invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1451invoke(Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> it) {
        ResourceManager resourceManager;
        boolean z;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> result = it;
        if (result instanceof Result.Success) {
            Pair pair = (Pair) ((Result.Success) result).getData();
            this.this$0.isCustomToken = ((Boolean) pair.getSecond()).booleanValue();
            this.this$0.setupActionButtonState(true);
            this.this$0.setupTokenData((TokenDetailed) pair.getFirst());
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ERR_TOKEN_NOT_FOUND) {
                this.this$0.isSearchErrorObtained = true;
                this.this$0.setupActionButtonState(false);
                z = this.this$0.isSearchErrorObtained;
                ((TokenManagementView) this.this$0.getViewState()).updateErrorTextVisibility(z);
                return;
            }
            resourceManager = this.this$0.resourceManager;
            ((TokenManagementView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
        }
    }
}

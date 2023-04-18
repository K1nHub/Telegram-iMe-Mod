package com.iMe.p031ui.wallet.crypto.wallet_connect.transaction;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter$subscribeToTransactionProcessingWithResultsHandle$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2186xc1738946 extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ WalletConnectTransactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2186xc1738946(WalletConnectTransactionPresenter walletConnectTransactionPresenter) {
        super(1);
        this.this$0 = walletConnectTransactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1415invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1415invoke(Result<? extends String> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            this.this$0.onTransactionProcessingSuccess((String) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletConnectTransactionView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
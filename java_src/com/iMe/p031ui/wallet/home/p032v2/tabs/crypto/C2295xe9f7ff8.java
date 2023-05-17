package com.iMe.p031ui.wallet.home.p032v2.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2295xe9f7ff8 extends Lambda implements Function1<Result<? extends List<BaseNode>>, Unit> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2295xe9f7ff8(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<BaseNode>> result) {
        m1482invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1482invoke(Result<? extends List<BaseNode>> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<BaseNode>> result = it;
        WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) this.this$0.getViewState();
        if (result instanceof Result.Success) {
            walletHomeCryptoView.renderNodes((List) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            this.this$0.isLoading = false;
            resourceManager = this.this$0.resourceManager;
            walletHomeCryptoView.showErrorToast((Result.Error) result, resourceManager);
        } else if (result instanceof Result.Loading) {
            walletHomeCryptoView.showRefreshing(true);
        }
    }
}

package com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$loadAccountInformation$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2197xa8abeb1d extends Lambda implements Function1<Result<? extends List<BaseNode>>, Unit> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2197xa8abeb1d(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<BaseNode>> result) {
        m1369invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1369invoke(Result<? extends List<BaseNode>> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<BaseNode>> result = it;
        WalletHomeCryptoView walletHomeCryptoView = (WalletHomeCryptoView) this.this$0.getViewState();
        if (result instanceof Result.Success) {
            ((WalletHomeCryptoView) this.this$0.getViewState()).renderNodes((List) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            walletHomeCryptoView.showToast(error.getMessage(resourceManager));
        } else if (result instanceof Result.Loading) {
            walletHomeCryptoView.showRefreshing(true);
        }
    }
}

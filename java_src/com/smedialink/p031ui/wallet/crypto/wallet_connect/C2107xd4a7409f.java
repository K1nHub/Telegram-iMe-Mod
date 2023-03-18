package com.smedialink.p031ui.wallet.crypto.wallet_connect;

import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2107xd4a7409f extends Lambda implements Function1<Result<? extends List<? extends WCSessionStoreItem>>, Unit> {
    final /* synthetic */ WalletConnectPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2107xd4a7409f(WalletConnectPresenter walletConnectPresenter) {
        super(1);
        this.this$0 = walletConnectPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends WCSessionStoreItem>> result) {
        m1327invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1327invoke(Result<? extends List<? extends WCSessionStoreItem>> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends WCSessionStoreItem>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.showSessions((List) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletConnectView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}

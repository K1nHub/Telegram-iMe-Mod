package com.smedialink.p031ui.wallet.airdrop;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2023x3615c038 extends Lambda implements Function1<Result<? extends AirdropInfo>, Unit> {
    final /* synthetic */ WalletAirdropPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2023x3615c038(WalletAirdropPresenter walletAirdropPresenter) {
        super(1);
        this.this$0 = walletAirdropPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AirdropInfo> result) {
        m1308invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1308invoke(Result<? extends AirdropInfo> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends AirdropInfo> result = it;
        if (result instanceof Result.Success) {
            if (((AirdropInfo) ((Result.Success) result).getData()) instanceof AirdropInfo.Ready) {
                ((WalletAirdropView) this.this$0.getViewState()).showAirdropDialog();
            }
        } else if (result instanceof Result.Error) {
            this.this$0.handleErrors(((Result.Error) result).getError());
        }
    }
}

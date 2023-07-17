package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2137x1004bc19 extends Lambda implements Function1<Result<? extends Wallet>, Unit> {
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ CreateWalletPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2137x1004bc19(String str, CreateWalletPresenter createWalletPresenter) {
        super(1);
        this.$password$inlined = str;
        this.this$0 = createWalletPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
        m1420invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1420invoke(Result<? extends Wallet> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Wallet> result = it;
        if (result instanceof Result.Success) {
            if (this.$password$inlined.length() == 0) {
                ((CreateWalletView) this.this$0.getViewState()).createNewWallet((Wallet) ((Result.Success) result).getData(), CryptoExtKt.randomString());
            } else {
                ((CreateWalletView) this.this$0.getViewState()).addNewWallet((Wallet) ((Result.Success) result).getData(), this.$password$inlined);
            }
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((CreateWalletView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

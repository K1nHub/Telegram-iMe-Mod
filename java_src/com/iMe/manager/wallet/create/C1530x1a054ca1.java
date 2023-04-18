package com.iMe.manager.wallet.create;

import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.manager.wallet.create.WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1530x1a054ca1 extends Lambda implements Function1<Result<? extends Wallet>, Unit> {
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ WalletCreationType.Initial $walletCreationType$inlined;
    final /* synthetic */ WalletCreateManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1530x1a054ca1(WalletCreateManager walletCreateManager, WalletCreationType.Initial initial, String str) {
        super(1);
        this.this$0 = walletCreateManager;
        this.$walletCreationType$inlined = initial;
        this.$password$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
        m1252invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1252invoke(Result<? extends Wallet> it) {
        WalletCreateManagerView viewState;
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Wallet> result = it;
        if (result instanceof Result.Success) {
            this.this$0.openScreenByWalletCreationType(this.$walletCreationType$inlined, (Wallet) ((Result.Success) result).getData(), this.$password$inlined);
        } else if (result instanceof Result.Error) {
            viewState = this.this$0.getViewState();
            resourceManager = this.this$0.resourceManager;
            viewState.showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
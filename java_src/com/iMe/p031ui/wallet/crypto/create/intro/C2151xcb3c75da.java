package com.iMe.p031ui.wallet.crypto.create.intro;

import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroPresenter$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2151xcb3c75da extends Lambda implements Function1<Result<? extends Wallet>, Unit> {
    final /* synthetic */ boolean $isAnyWalletCreated$inlined;
    final /* synthetic */ CreateWalletIntroPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2151xcb3c75da(boolean z, CreateWalletIntroPresenter createWalletIntroPresenter) {
        super(1);
        this.$isAnyWalletCreated$inlined = z;
        this.this$0 = createWalletIntroPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
        m1425invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1425invoke(Result<? extends Wallet> it) {
        ResourceManager resourceManager;
        CryptoAccessManager cryptoAccessManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Wallet> result = it;
        if (result instanceof Result.Success) {
            if (this.$isAnyWalletCreated$inlined) {
                cryptoAccessManager = this.this$0.cryptoAccessManager;
                ((CreateWalletIntroView) this.this$0.getViewState()).openAddWalletScreen((Wallet) ((Result.Success) result).getData(), cryptoAccessManager.getWalletPassword());
                return;
            }
            ((CreateWalletIntroView) this.this$0.getViewState()).openCreateWalletScreen((Wallet) ((Result.Success) result).getData(), CryptoExtKt.randomString());
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((CreateWalletIntroView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

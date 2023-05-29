package com.iMe.p031ui.wallet.crypto.enter.password;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3290R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2162x376f1f3c extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ EnterWalletPasswordPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2162x376f1f3c(EnterWalletPasswordPresenter enterWalletPasswordPresenter, String str) {
        super(1);
        this.this$0 = enterWalletPasswordPresenter;
        this.$password$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1416invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1416invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        CryptoAccessManager cryptoAccessManager;
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            EnterWalletPasswordView enterWalletPasswordView = (EnterWalletPasswordView) this.this$0.getViewState();
            if (((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                String str = this.$password$inlined;
                cryptoAccessManager = this.this$0.cryptoAccessManager;
                cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
                enterWalletPasswordView.onSuccessUnlockWallet(str, cryptoAccessManager.getLastLoggedInAddress(cryptoPreferenceHelper.getCurrentBlockchainType()));
                return;
            }
            resourceManager2 = this.this$0.resourceManager;
            enterWalletPasswordView.showToast(resourceManager2.getString(C3290R.string.wallet_enter_eth_password_validation_error));
            enterWalletPasswordView.onCodeErrorShake();
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((EnterWalletPasswordView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
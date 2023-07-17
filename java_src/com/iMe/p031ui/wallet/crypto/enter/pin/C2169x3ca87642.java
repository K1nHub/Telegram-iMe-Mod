package com.iMe.p031ui.wallet.crypto.enter.pin;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2169x3ca87642 extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ String $pin$inlined;
    final /* synthetic */ EnterWalletPinPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2169x3ca87642(EnterWalletPinPresenter enterWalletPinPresenter, String str) {
        super(1);
        this.this$0 = enterWalletPinPresenter;
        this.$pin$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1433invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1433invoke(Result<? extends String> it) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        ResourceManager resourceManager;
        CryptoPreferenceHelper cryptoPreferenceHelper2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            this.this$0.savePinEncryptedIfNeeded(this.$pin$inlined);
            cryptoPreferenceHelper2 = this.this$0.cryptoPreferenceHelper;
            cryptoPreferenceHelper2.setWalletPinCodeBadTriesCount(0);
            ((EnterWalletPinView) this.this$0.getViewState()).onSuccessEnterPinCode(this.$pin$inlined, (String) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            if (cryptoPreferenceHelper.isLocalEncryptionCompleted()) {
                this.this$0.onPinCodeError();
                return;
            }
            EnterWalletPinView enterWalletPinView = (EnterWalletPinView) this.this$0.getViewState();
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.CryptoErrorStatus.PIN_CODE_MAX_ATTEMPTS) {
                enterWalletPinView.openPasswordEnterScreen();
            }
            enterWalletPinView.onPinCodeErrorShake();
            resourceManager = this.this$0.resourceManager;
            enterWalletPinView.showErrorToast(error, resourceManager);
        }
    }
}

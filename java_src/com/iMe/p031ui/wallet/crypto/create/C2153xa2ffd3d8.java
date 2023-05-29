package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2153xa2ffd3d8 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ String $errorToastText$inlined;
    final /* synthetic */ boolean $isPasscodeCreated$inlined;
    final /* synthetic */ String $seed$inlined;
    final /* synthetic */ CreateWalletPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2153xa2ffd3d8(CreateWalletPresenter createWalletPresenter, boolean z, String str, String str2) {
        super(1);
        this.this$0 = createWalletPresenter;
        this.$isPasscodeCreated$inlined = z;
        this.$seed$inlined = str;
        this.$errorToastText$inlined = str2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1413invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1413invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            T viewState = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.CC.showLoadingDialog$default((BaseView) viewState, false, false, null, 6, null);
            if (((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                if (this.$isPasscodeCreated$inlined) {
                    ((CreateWalletView) this.this$0.getViewState()).onSuccessConfirmBackUp();
                    return;
                } else {
                    ((CreateWalletView) this.this$0.getViewState()).onSuccessEnterSeed(this.$seed$inlined);
                    return;
                }
            }
            ((CreateWalletView) this.this$0.getViewState()).showToast(this.$errorToastText$inlined);
        } else if (result instanceof Result.Error) {
            T viewState2 = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState2, "viewState");
            BaseView.CC.showLoadingDialog$default((BaseView) viewState2, false, false, null, 6, null);
            resourceManager = this.this$0.resourceManager;
            ((CreateWalletView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

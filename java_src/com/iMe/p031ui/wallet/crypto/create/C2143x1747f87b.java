package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3417R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2143x1747f87b extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ boolean $isPasscodeCreated$inlined;
    final /* synthetic */ String $seed$inlined;
    final /* synthetic */ CreateWalletPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2143x1747f87b(CreateWalletPresenter createWalletPresenter, boolean z, String str) {
        super(1);
        this.this$0 = createWalletPresenter;
        this.$isPasscodeCreated$inlined = z;
        this.$seed$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1423invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1423invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        CreateWalletView validateSeed$lambda$5$lambda$4 = (CreateWalletView) this.this$0.getViewState();
        if (result instanceof Result.Success) {
            Intrinsics.checkNotNullExpressionValue(validateSeed$lambda$5$lambda$4, "validateSeed$lambda$5$lambda$4");
            BaseView.CC.showLoadingDialog$default(validateSeed$lambda$5$lambda$4, false, false, null, 6, null);
            if (!((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                resourceManager2 = this.this$0.resourceManager;
                validateSeed$lambda$5$lambda$4.showToast(resourceManager2.getString(C3417R.string.wallet_restore_eth_error));
            } else if (this.$isPasscodeCreated$inlined) {
                validateSeed$lambda$5$lambda$4.onSuccessConfirmBackUp();
            } else {
                validateSeed$lambda$5$lambda$4.onSuccessEnterSeed(this.$seed$inlined, CryptoExtKt.randomString());
            }
        } else if (result instanceof Result.Error) {
            Intrinsics.checkNotNullExpressionValue(validateSeed$lambda$5$lambda$4, "validateSeed$lambda$5$lambda$4");
            BaseView.CC.showLoadingDialog$default(validateSeed$lambda$5$lambda$4, false, false, null, 6, null);
            resourceManager = this.this$0.resourceManager;
            validateSeed$lambda$5$lambda$4.showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

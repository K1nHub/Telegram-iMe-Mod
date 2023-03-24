package com.smedialink.p031ui.wallet.crypto.settings.privacy;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1 */
/* loaded from: classes3.dex */
public final class C2103x78f2e5da extends Lambda implements Function1<Result<? extends CryptoWalletInfo>, Result<? extends CryptoWalletInfo>> {
    final /* synthetic */ ResourceManager $resourceManager;
    final /* synthetic */ BaseView $viewState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2103x78f2e5da(BaseView baseView, ResourceManager resourceManager) {
        super(1);
        this.$viewState = baseView;
        this.$resourceManager = resourceManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends CryptoWalletInfo> invoke(Result<? extends CryptoWalletInfo> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Error) {
            this.$viewState.showToast(((Result.Error) result).getError().getMessage(this.$resourceManager));
        }
        return result;
    }
}

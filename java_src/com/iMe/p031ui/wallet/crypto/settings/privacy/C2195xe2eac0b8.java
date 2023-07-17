package com.iMe.p031ui.wallet.crypto.settings.privacy;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1 */
/* loaded from: classes4.dex */
public final class C2195xe2eac0b8 extends Lambda implements Function1<Result<? extends Boolean>, Result<? extends Boolean>> {
    final /* synthetic */ ResourceManager $resourceManager;
    final /* synthetic */ BaseView $viewState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2195xe2eac0b8(BaseView baseView, ResourceManager resourceManager) {
        super(1);
        this.$viewState = baseView;
        this.$resourceManager = resourceManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Boolean> invoke(Result<? extends Boolean> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Error) {
            this.$viewState.showErrorToast((Result.Error) result, this.$resourceManager);
        }
        return result;
    }
}

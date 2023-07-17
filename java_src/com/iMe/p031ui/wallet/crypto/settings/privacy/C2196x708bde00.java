package com.iMe.p031ui.wallet.crypto.settings.privacy;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.extentions.ResultExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2196x708bde00 extends Lambda implements Function1<List<? extends Result<? extends Boolean>>, Unit> {
    final /* synthetic */ WalletPrivacySettingPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2196x708bde00(WalletPrivacySettingPresenter walletPrivacySettingPresenter) {
        super(1);
        this.this$0 = walletPrivacySettingPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends Result<? extends Boolean>> list) {
        m1446invoke(list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1446invoke(List<? extends Result<? extends Boolean>> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (ResultExtKt.isAllSuccess(it)) {
            ((WalletPrivacySettingsView) this.this$0.getViewState()).onSuccessSaveCryptoSettings();
        }
    }
}

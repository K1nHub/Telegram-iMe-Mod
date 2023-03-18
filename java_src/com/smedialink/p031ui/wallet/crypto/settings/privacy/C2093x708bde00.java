package com.smedialink.p031ui.wallet.crypto.settings.privacy;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.extentions.ResultExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2093x708bde00 extends Lambda implements Function1<List<? extends Result<? extends Boolean>>, Unit> {
    final /* synthetic */ WalletPrivacySettingPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2093x708bde00(WalletPrivacySettingPresenter walletPrivacySettingPresenter) {
        super(1);
        this.this$0 = walletPrivacySettingPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends Result<? extends Boolean>> list) {
        m1324invoke(list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1324invoke(List<? extends Result<? extends Boolean>> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (ResultExtKt.isAllSuccess(it)) {
            ((WalletPrivacySettingsView) this.this$0.getViewState()).onSuccessSaveCryptoSettings();
        }
    }
}

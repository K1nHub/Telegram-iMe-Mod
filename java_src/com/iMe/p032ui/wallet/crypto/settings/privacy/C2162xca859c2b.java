package com.iMe.p032ui.wallet.crypto.settings.privacy;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.CryptoWalletInfo;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2162xca859c2b extends Lambda implements Function1<Pair<? extends Result<? extends CryptoWalletInfo>, ? extends Result<? extends Boolean>>, Unit> {
    final /* synthetic */ WalletPrivacySettingPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2162xca859c2b(WalletPrivacySettingPresenter walletPrivacySettingPresenter) {
        super(1);
        this.this$0 = walletPrivacySettingPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends Result<? extends CryptoWalletInfo>, ? extends Result<? extends Boolean>> pair) {
        m1423invoke(pair);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1423invoke(Pair<? extends Result<? extends CryptoWalletInfo>, ? extends Result<? extends Boolean>> it) {
        int resolveAccessTypeBy;
        int resolveAccessTypeBy2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Pair<? extends Result<? extends CryptoWalletInfo>, ? extends Result<? extends Boolean>> pair = it;
        if (pair.getFirst().isSuccess() && pair.getSecond().isSuccess()) {
            CryptoWalletInfo data = pair.getFirst().getData();
            Intrinsics.checkNotNull(data);
            List<Long> usersWithAccessToEthAddress = data.getUsersWithAccessToEthAddress();
            WalletPrivacySettingPresenter walletPrivacySettingPresenter = this.this$0;
            CryptoWalletInfo data2 = pair.getFirst().getData();
            Intrinsics.checkNotNull(data2);
            resolveAccessTypeBy = walletPrivacySettingPresenter.resolveAccessTypeBy(data2.isEthAddressOpenedForEverybody());
            WalletPrivacySettingPresenter walletPrivacySettingPresenter2 = this.this$0;
            Boolean data3 = pair.getSecond().getData();
            Intrinsics.checkNotNull(data3);
            resolveAccessTypeBy2 = walletPrivacySettingPresenter2.resolveAccessTypeBy(data3.booleanValue());
            ((WalletPrivacySettingsView) this.this$0.getViewState()).onSuccessLoadPrivacySettings(usersWithAccessToEthAddress, resolveAccessTypeBy, resolveAccessTypeBy2);
        }
    }
}

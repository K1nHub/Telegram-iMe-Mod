package com.smedialink.p031ui.wallet.crypto.settings.privacy;

import com.smedialink.storage.domain.model.Result;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletPrivacySettingPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveSettings$1 */
/* loaded from: classes3.dex */
final class WalletPrivacySettingPresenter$saveSettings$1 extends Lambda implements Function2<Result<? extends Boolean>, Result<? extends Boolean>, List<? extends Result<? extends Boolean>>> {
    public static final WalletPrivacySettingPresenter$saveSettings$1 INSTANCE = new WalletPrivacySettingPresenter$saveSettings$1();

    WalletPrivacySettingPresenter$saveSettings$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ List<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result, Result<? extends Boolean> result2) {
        return invoke2((Result<Boolean>) result, (Result<Boolean>) result2);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<Result<Boolean>> invoke2(Result<Boolean> walletAddressResult, Result<Boolean> accountRankResult) {
        List<Result<Boolean>> listOf;
        Intrinsics.checkNotNullParameter(walletAddressResult, "walletAddressResult");
        Intrinsics.checkNotNullParameter(accountRankResult, "accountRankResult");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Result[]{walletAddressResult, accountRankResult});
        return listOf;
    }
}

package com.iMe.p031ui.wallet.crypto.settings.privacy;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletPrivacySettingPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$loadPrivacySettings$1 */
/* loaded from: classes4.dex */
final class WalletPrivacySettingPresenter$loadPrivacySettings$1 extends Lambda implements Function2<Result<? extends CryptoWalletsInfo>, Result<? extends Boolean>, Pair<? extends Result<? extends CryptoWalletsInfo>, ? extends Result<? extends Boolean>>> {
    public static final WalletPrivacySettingPresenter$loadPrivacySettings$1 INSTANCE = new WalletPrivacySettingPresenter$loadPrivacySettings$1();

    WalletPrivacySettingPresenter$loadPrivacySettings$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Pair<? extends Result<? extends CryptoWalletsInfo>, ? extends Result<? extends Boolean>> invoke(Result<? extends CryptoWalletsInfo> result, Result<? extends Boolean> result2) {
        return invoke2((Result<CryptoWalletsInfo>) result, (Result<Boolean>) result2);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Pair<Result<CryptoWalletsInfo>, Result<Boolean>> invoke2(Result<CryptoWalletsInfo> walletAddressResult, Result<Boolean> accountRankResult) {
        Intrinsics.checkNotNullParameter(walletAddressResult, "walletAddressResult");
        Intrinsics.checkNotNullParameter(accountRankResult, "accountRankResult");
        return TuplesKt.m85to(walletAddressResult, accountRankResult);
    }
}

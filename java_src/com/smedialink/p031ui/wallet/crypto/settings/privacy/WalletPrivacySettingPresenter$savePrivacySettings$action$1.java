package com.smedialink.p031ui.wallet.crypto.settings.privacy;

import io.reactivex.Observable;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletPrivacySettingPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$savePrivacySettings$action$1 */
/* loaded from: classes3.dex */
public final class WalletPrivacySettingPresenter$savePrivacySettings$action$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ int $accountRankAllowType;
    final /* synthetic */ ArrayList<Long> $allowUsers;
    final /* synthetic */ int $prevAccountRankAllowType;
    final /* synthetic */ ArrayList<Long> $prevAllowUsers;
    final /* synthetic */ int $prevPublicWalletAllowType;
    final /* synthetic */ int $publicWalletAllowType;
    final /* synthetic */ WalletPrivacySettingPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletPrivacySettingPresenter$savePrivacySettings$action$1(WalletPrivacySettingPresenter walletPrivacySettingPresenter, ArrayList<Long> arrayList, ArrayList<Long> arrayList2, int i, int i2, int i3, int i4) {
        super(0);
        this.this$0 = walletPrivacySettingPresenter;
        this.$prevAllowUsers = arrayList;
        this.$allowUsers = arrayList2;
        this.$prevPublicWalletAllowType = i;
        this.$publicWalletAllowType = i2;
        this.$prevAccountRankAllowType = i3;
        this.$accountRankAllowType = i4;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Observable saveWalletAddressSettingsObservable;
        Observable saveAccountRankSettingsObservable;
        WalletPrivacySettingPresenter walletPrivacySettingPresenter = this.this$0;
        saveWalletAddressSettingsObservable = walletPrivacySettingPresenter.saveWalletAddressSettingsObservable(this.$prevAllowUsers, this.$allowUsers, this.$prevPublicWalletAllowType, this.$publicWalletAllowType);
        saveAccountRankSettingsObservable = this.this$0.saveAccountRankSettingsObservable(this.$prevAccountRankAllowType, this.$accountRankAllowType);
        walletPrivacySettingPresenter.saveSettings(saveWalletAddressSettingsObservable, saveAccountRankSettingsObservable);
    }
}

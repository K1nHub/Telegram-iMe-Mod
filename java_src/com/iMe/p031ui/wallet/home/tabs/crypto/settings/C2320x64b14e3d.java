package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import android.view.View;
import com.iMe.fork.p024ui.view.MovingCheckCell;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$onBindViewHolder$3$4 */
/* loaded from: classes4.dex */
final class C2320x64b14e3d extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ int $position;
    final /* synthetic */ MovingCheckCell $this_with;
    final /* synthetic */ WalletHomeCryptoTokensSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2320x64b14e3d(MovingCheckCell movingCheckCell, WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment, int i) {
        super(1);
        this.$this_with = movingCheckCell;
        this.this$0 = walletHomeCryptoTokensSettingsFragment;
        this.$position = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        MovingCheckCell movingCheckCell = this.$this_with;
        movingCheckCell.setChecked(!movingCheckCell.isChecked());
        this.this$0.getPresenter().switchTokenVisibility(this.$position - this.this$0.tokensStartRow, this.$this_with.isChecked());
    }
}

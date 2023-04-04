package com.iMe.p032ui.wallet.settings.appearance.adapter;

import com.iMe.model.wallet.settings.InterfaceSettingItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.Switch;
/* compiled from: WalletAppearanceSettingsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter$convert$1 */
/* loaded from: classes4.dex */
final class WalletAppearanceSettingsRecycleAdapter$convert$1 extends Lambda implements Function1<Switch, Unit> {
    final /* synthetic */ InterfaceSettingItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAppearanceSettingsRecycleAdapter$convert$1(InterfaceSettingItem interfaceSettingItem) {
        super(1);
        this.$item = interfaceSettingItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Switch r1) {
        invoke2(r1);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Switch applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setChecked(this.$item.isEnabled(), false);
        applyForView.setColors("switchTrack", "switchTrackChecked", "windowBackgroundWhite", "windowBackgroundWhite");
    }
}

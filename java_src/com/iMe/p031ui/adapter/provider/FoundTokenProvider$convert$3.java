package com.iMe.p031ui.adapter.provider;

import com.iMe.model.wallet.home.FoundTokenItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Switch;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FoundTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.FoundTokenProvider$convert$3 */
/* loaded from: classes.dex */
public final class FoundTokenProvider$convert$3 extends Lambda implements Function1<Switch, Unit> {
    final /* synthetic */ FoundTokenItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FoundTokenProvider$convert$3(FoundTokenItem foundTokenItem) {
        super(1);
        this.$item = foundTokenItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Switch r1) {
        invoke2(r1);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Switch applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setChecked(this.$item.isEnabled(), true);
        int i = Theme.key_switchTrack;
        int i2 = Theme.key_switchTrackChecked;
        int i3 = Theme.key_windowBackgroundWhite;
        applyForView.setColors(i, i2, i3, i3);
    }
}

package com.smedialink.p031ui.adapter.provider;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.Components.BackupImageView;
/* compiled from: BinanceAccountProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.BinanceAccountProvider$convert$2 */
/* loaded from: classes3.dex */
final class BinanceAccountProvider$convert$2 extends Lambda implements Function1<BackupImageView, Unit> {
    public static final BinanceAccountProvider$convert$2 INSTANCE = new BinanceAccountProvider$convert$2();

    BinanceAccountProvider$convert$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(BackupImageView backupImageView) {
        invoke2(backupImageView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(BackupImageView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setImageResource(C3286R.C3288drawable.fork_ic_binance_40);
    }
}

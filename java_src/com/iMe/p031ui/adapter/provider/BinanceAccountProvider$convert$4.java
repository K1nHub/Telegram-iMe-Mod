package com.iMe.p031ui.adapter.provider;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.Components.BackupImageView;
/* compiled from: BinanceAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BinanceAccountProvider$convert$4 */
/* loaded from: classes.dex */
final class BinanceAccountProvider$convert$4 extends Lambda implements Function1<BackupImageView, Unit> {
    public static final BinanceAccountProvider$convert$4 INSTANCE = new BinanceAccountProvider$convert$4();

    BinanceAccountProvider$convert$4() {
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
        applyForView.setImageResource(C3295R.C3297drawable.fork_ic_binance_40);
    }
}

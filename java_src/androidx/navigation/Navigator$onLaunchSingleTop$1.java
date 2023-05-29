package androidx.navigation;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: Navigator.kt */
/* loaded from: classes.dex */
final class Navigator$onLaunchSingleTop$1 extends Lambda implements Function1<NavOptionsBuilder, Unit> {
    public static final Navigator$onLaunchSingleTop$1 INSTANCE = new Navigator$onLaunchSingleTop$1();

    Navigator$onLaunchSingleTop$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NavOptionsBuilder navOptionsBuilder) {
        invoke2(navOptionsBuilder);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NavOptionsBuilder navOptions) {
        Intrinsics.checkNotNullParameter(navOptions, "$this$navOptions");
        navOptions.setLaunchSingleTop(true);
    }
}

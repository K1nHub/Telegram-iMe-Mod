package androidx.navigation;

import android.os.Bundle;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$BooleanRef;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavController.kt */
/* loaded from: classes.dex */
public final class NavController$navigate$4 extends Lambda implements Function1<NavBackStackEntry, Unit> {
    final /* synthetic */ Bundle $finalArgs;
    final /* synthetic */ Ref$BooleanRef $navigated;
    final /* synthetic */ NavDestination $node;
    final /* synthetic */ NavController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavController$navigate$4(Ref$BooleanRef ref$BooleanRef, NavController navController, NavDestination navDestination, Bundle bundle) {
        super(1);
        this.$navigated = ref$BooleanRef;
        this.this$0 = navController;
        this.$node = navDestination;
        this.$finalArgs = bundle;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry) {
        invoke2(navBackStackEntry);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NavBackStackEntry it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$navigated.element = true;
        NavController.addEntryToBackStack$default(this.this$0, this.$node, this.$finalArgs, it, null, 8, null);
    }
}

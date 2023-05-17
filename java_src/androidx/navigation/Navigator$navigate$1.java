package androidx.navigation;

import androidx.navigation.Navigator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: Navigator.kt */
/* loaded from: classes.dex */
final class Navigator$navigate$1 extends Lambda implements Function1<NavBackStackEntry, NavBackStackEntry> {
    final /* synthetic */ NavOptions $navOptions;
    final /* synthetic */ Navigator.Extras $navigatorExtras;
    final /* synthetic */ Navigator<D> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Navigator$navigate$1(Navigator<D> navigator, NavOptions navOptions, Navigator.Extras extras) {
        super(1);
        this.this$0 = navigator;
        this.$navOptions = navOptions;
        this.$navigatorExtras = extras;
    }

    @Override // kotlin.jvm.functions.Function1
    public final NavBackStackEntry invoke(NavBackStackEntry backStackEntry) {
        NavDestination navigate;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        NavDestination destination = backStackEntry.getDestination();
        if (!(destination instanceof NavDestination)) {
            destination = null;
        }
        if (destination != null && (navigate = this.this$0.navigate(destination, backStackEntry.getArguments(), this.$navOptions, this.$navigatorExtras)) != null) {
            return Intrinsics.areEqual(navigate, destination) ? backStackEntry : this.this$0.getState().createBackStackEntry(navigate, navigate.addInDefaultArgs(backStackEntry.getArguments()));
        }
        return null;
    }
}

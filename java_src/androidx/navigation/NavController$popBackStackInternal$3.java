package androidx.navigation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: NavController.kt */
/* loaded from: classes.dex */
final class NavController$popBackStackInternal$3 extends Lambda implements Function1<NavDestination, NavDestination> {
    public static final NavController$popBackStackInternal$3 INSTANCE = new NavController$popBackStackInternal$3();

    NavController$popBackStackInternal$3() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final NavDestination invoke(NavDestination destination) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        NavGraph parent = destination.getParent();
        boolean z = false;
        if (parent != null && parent.getStartDestinationId() == destination.getId()) {
            z = true;
        }
        if (z) {
            return destination.getParent();
        }
        return null;
    }
}

package androidx.navigation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: NavGraph.kt */
/* loaded from: classes.dex */
final class NavGraph$Companion$findStartDestination$1 extends Lambda implements Function1<NavDestination, NavDestination> {
    public static final NavGraph$Companion$findStartDestination$1 INSTANCE = new NavGraph$Companion$findStartDestination$1();

    NavGraph$Companion$findStartDestination$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final NavDestination invoke(NavDestination it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof NavGraph) {
            NavGraph navGraph = (NavGraph) it;
            return navGraph.findNode(navGraph.getStartDestinationId());
        }
        return null;
    }
}

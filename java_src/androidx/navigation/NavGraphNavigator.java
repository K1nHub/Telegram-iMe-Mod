package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.Navigator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavGraphNavigator.kt */
@Navigator.Name("navigation")
/* loaded from: classes.dex */
public class NavGraphNavigator extends Navigator<NavGraph> {
    private final NavigatorProvider navigatorProvider;

    public NavGraphNavigator(NavigatorProvider navigatorProvider) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        this.navigatorProvider = navigatorProvider;
    }

    @Override // androidx.navigation.Navigator
    public NavGraph createDestination() {
        return new NavGraph(this);
    }

    @Override // androidx.navigation.Navigator
    public void navigate(List<NavBackStackEntry> entries, NavOptions navOptions, Navigator.Extras extras) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        for (NavBackStackEntry navBackStackEntry : entries) {
            navigate(navBackStackEntry, navOptions, extras);
        }
    }

    private final void navigate(NavBackStackEntry navBackStackEntry, NavOptions navOptions, Navigator.Extras extras) {
        NavDestination findNode;
        List<NavBackStackEntry> listOf;
        NavGraph navGraph = (NavGraph) navBackStackEntry.getDestination();
        Bundle arguments = navBackStackEntry.getArguments();
        int startDestinationId = navGraph.getStartDestinationId();
        String startDestinationRoute = navGraph.getStartDestinationRoute();
        if (!((startDestinationId == 0 && startDestinationRoute == null) ? false : true)) {
            throw new IllegalStateException(("no start destination defined via app:startDestination for " + navGraph.getDisplayName()).toString());
        }
        if (startDestinationRoute != null) {
            findNode = navGraph.findNode(startDestinationRoute, false);
        } else {
            findNode = navGraph.findNode(startDestinationId, false);
        }
        if (findNode == null) {
            String startDestDisplayName = navGraph.getStartDestDisplayName();
            throw new IllegalArgumentException("navigation destination " + startDestDisplayName + " is not a direct child of this NavGraph");
        }
        Navigator navigator = this.navigatorProvider.getNavigator(findNode.getNavigatorName());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(getState().createBackStackEntry(findNode, findNode.addInDefaultArgs(arguments)));
        navigator.navigate(listOf, navOptions, extras);
    }
}

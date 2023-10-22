package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.core.p010os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FragmentNavigator.kt */
@Navigator.Name("fragment")
/* loaded from: classes.dex */
public class FragmentNavigator extends Navigator<Destination> {
    private final int containerId;
    private final Context context;
    private final FragmentManager fragmentManager;
    private final Set<String> savedIds;

    static {
        new Companion(null);
    }

    public FragmentNavigator(Context context, FragmentManager fragmentManager, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.containerId = i;
        this.savedIds = new LinkedHashSet();
    }

    @Override // androidx.navigation.Navigator
    public void popBackStack(NavBackStackEntry popUpTo, boolean z) {
        List<NavBackStackEntry> reversed;
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        if (this.fragmentManager.isStateSaved()) {
            Log.i("FragmentNavigator", "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        if (z) {
            List<NavBackStackEntry> value = getState().getBackStack().getValue();
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.first((List<? extends Object>) value);
            reversed = CollectionsKt___CollectionsKt.reversed(value.subList(value.indexOf(popUpTo), value.size()));
            for (NavBackStackEntry navBackStackEntry2 : reversed) {
                if (Intrinsics.areEqual(navBackStackEntry2, navBackStackEntry)) {
                    Log.i("FragmentNavigator", "FragmentManager cannot save the state of the initial destination " + navBackStackEntry2);
                } else {
                    this.fragmentManager.saveBackStack(navBackStackEntry2.getId());
                    this.savedIds.add(navBackStackEntry2.getId());
                }
            }
        } else {
            this.fragmentManager.popBackStack(popUpTo.getId(), 1);
        }
        getState().pop(popUpTo, z);
    }

    @Override // androidx.navigation.Navigator
    public Destination createDestination() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    public void navigate(List<NavBackStackEntry> entries, NavOptions navOptions, Navigator.Extras extras) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        if (this.fragmentManager.isStateSaved()) {
            Log.i("FragmentNavigator", "Ignoring navigate() call: FragmentManager has already saved its state");
            return;
        }
        for (NavBackStackEntry navBackStackEntry : entries) {
            navigate(navBackStackEntry, navOptions, extras);
        }
    }

    private final void navigate(NavBackStackEntry navBackStackEntry, NavOptions navOptions, Navigator.Extras extras) {
        boolean isEmpty = getState().getBackStack().getValue().isEmpty();
        if (navOptions != null && !isEmpty && navOptions.shouldRestoreState() && this.savedIds.remove(navBackStackEntry.getId())) {
            this.fragmentManager.restoreBackStack(navBackStackEntry.getId());
            getState().push(navBackStackEntry);
            return;
        }
        FragmentTransaction createFragmentTransaction = createFragmentTransaction(navBackStackEntry, navOptions);
        if (!isEmpty) {
            createFragmentTransaction.addToBackStack(navBackStackEntry.getId());
        }
        if (extras instanceof Extras) {
            for (Map.Entry<View, String> entry : ((Extras) extras).getSharedElements().entrySet()) {
                createFragmentTransaction.addSharedElement(entry.getKey(), entry.getValue());
            }
        }
        createFragmentTransaction.commit();
        getState().push(navBackStackEntry);
    }

    @Override // androidx.navigation.Navigator
    public void onLaunchSingleTop(NavBackStackEntry backStackEntry) {
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        if (this.fragmentManager.isStateSaved()) {
            Log.i("FragmentNavigator", "Ignoring onLaunchSingleTop() call: FragmentManager has already saved its state");
            return;
        }
        FragmentTransaction createFragmentTransaction = createFragmentTransaction(backStackEntry, null);
        if (getState().getBackStack().getValue().size() > 1) {
            this.fragmentManager.popBackStack(backStackEntry.getId(), 1);
            createFragmentTransaction.addToBackStack(backStackEntry.getId());
        }
        createFragmentTransaction.commit();
        getState().onLaunchSingleTop(backStackEntry);
    }

    private final FragmentTransaction createFragmentTransaction(NavBackStackEntry navBackStackEntry, NavOptions navOptions) {
        Bundle arguments = navBackStackEntry.getArguments();
        String className = ((Destination) navBackStackEntry.getDestination()).getClassName();
        if (className.charAt(0) == '.') {
            className = this.context.getPackageName() + className;
        }
        Fragment instantiate = this.fragmentManager.getFragmentFactory().instantiate(this.context.getClassLoader(), className);
        Intrinsics.checkNotNullExpressionValue(instantiate, "fragmentManager.fragment…t.classLoader, className)");
        instantiate.setArguments(arguments);
        FragmentTransaction beginTransaction = this.fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "fragmentManager.beginTransaction()");
        int enterAnim = navOptions != null ? navOptions.getEnterAnim() : -1;
        int exitAnim = navOptions != null ? navOptions.getExitAnim() : -1;
        int popEnterAnim = navOptions != null ? navOptions.getPopEnterAnim() : -1;
        int popExitAnim = navOptions != null ? navOptions.getPopExitAnim() : -1;
        if (enterAnim != -1 || exitAnim != -1 || popEnterAnim != -1 || popExitAnim != -1) {
            if (enterAnim == -1) {
                enterAnim = 0;
            }
            if (exitAnim == -1) {
                exitAnim = 0;
            }
            if (popEnterAnim == -1) {
                popEnterAnim = 0;
            }
            beginTransaction.setCustomAnimations(enterAnim, exitAnim, popEnterAnim, popExitAnim != -1 ? popExitAnim : 0);
        }
        beginTransaction.replace(this.containerId, instantiate);
        beginTransaction.setPrimaryNavigationFragment(instantiate);
        beginTransaction.setReorderingAllowed(true);
        return beginTransaction;
    }

    @Override // androidx.navigation.Navigator
    public Bundle onSaveState() {
        if (this.savedIds.isEmpty()) {
            return null;
        }
        return BundleKt.bundleOf(TuplesKt.m144to("androidx-nav-fragment:navigator:savedIds", new ArrayList(this.savedIds)));
    }

    @Override // androidx.navigation.Navigator
    public void onRestoreState(Bundle savedState) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        ArrayList<String> stringArrayList = savedState.getStringArrayList("androidx-nav-fragment:navigator:savedIds");
        if (stringArrayList != null) {
            this.savedIds.clear();
            CollectionsKt__MutableCollectionsKt.addAll(this.savedIds, stringArrayList);
        }
    }

    /* compiled from: FragmentNavigator.kt */
    /* loaded from: classes.dex */
    public static class Destination extends NavDestination {
        private String _className;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(Navigator<? extends Destination> fragmentNavigator) {
            super(fragmentNavigator);
            Intrinsics.checkNotNullParameter(fragmentNavigator, "fragmentNavigator");
        }

        @Override // androidx.navigation.NavDestination
        public void onInflate(Context context, AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, R$styleable.FragmentNavigator);
            Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…leable.FragmentNavigator)");
            String string = obtainAttributes.getString(R$styleable.FragmentNavigator_android_name);
            if (string != null) {
                setClassName(string);
            }
            Unit unit = Unit.INSTANCE;
            obtainAttributes.recycle();
        }

        public final Destination setClassName(String className) {
            Intrinsics.checkNotNullParameter(className, "className");
            this._className = className;
            return this;
        }

        public final String getClassName() {
            String str = this._className;
            if (str == null) {
                throw new IllegalStateException("Fragment class was not set".toString());
            }
            Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.String");
            return str;
        }

        @Override // androidx.navigation.NavDestination
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append(" class=");
            String str = this._className;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
            return sb2;
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(Object obj) {
            return obj != null && (obj instanceof Destination) && super.equals(obj) && Intrinsics.areEqual(this._className, ((Destination) obj)._className);
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            String str = this._className;
            return hashCode + (str != null ? str.hashCode() : 0);
        }
    }

    /* compiled from: FragmentNavigator.kt */
    /* loaded from: classes.dex */
    public static final class Extras implements Navigator.Extras {
        private final LinkedHashMap<View, String> _sharedElements;

        public final Map<View, String> getSharedElements() {
            Map<View, String> map;
            map = MapsKt__MapsKt.toMap(this._sharedElements);
            return map;
        }
    }

    /* compiled from: FragmentNavigator.kt */
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}

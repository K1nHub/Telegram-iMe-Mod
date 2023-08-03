package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavDestination;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
/* compiled from: Navigator.kt */
/* loaded from: classes.dex */
public abstract class Navigator<D extends NavDestination> {
    private NavigatorState _state;
    private boolean isAttached;

    /* compiled from: Navigator.kt */
    /* loaded from: classes.dex */
    public interface Extras {
    }

    /* compiled from: Navigator.kt */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Name {
        String value();
    }

    public abstract D createDestination();

    public NavDestination navigate(D destination, Bundle bundle, NavOptions navOptions, Extras extras) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        return destination;
    }

    public void onRestoreState(Bundle savedState) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
    }

    public Bundle onSaveState() {
        return null;
    }

    public boolean popBackStack() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final NavigatorState getState() {
        NavigatorState navigatorState = this._state;
        if (navigatorState != null) {
            return navigatorState;
        }
        throw new IllegalStateException("You cannot access the Navigator's state until the Navigator is attached".toString());
    }

    public final boolean isAttached() {
        return this.isAttached;
    }

    public void onAttach(NavigatorState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this._state = state;
        this.isAttached = true;
    }

    public void navigate(List<NavBackStackEntry> entries, final NavOptions navOptions, final Extras extras) {
        Sequence asSequence;
        Sequence map;
        Sequence<NavBackStackEntry> filterNotNull;
        Intrinsics.checkNotNullParameter(entries, "entries");
        asSequence = CollectionsKt___CollectionsKt.asSequence(entries);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<NavBackStackEntry, NavBackStackEntry>(this) { // from class: androidx.navigation.Navigator$navigate$1
            final /* synthetic */ Navigator<D> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final NavBackStackEntry invoke(NavBackStackEntry backStackEntry) {
                NavDestination navigate;
                Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
                NavDestination destination = backStackEntry.getDestination();
                if (!(destination instanceof NavDestination)) {
                    destination = null;
                }
                if (destination != null && (navigate = this.this$0.navigate(destination, backStackEntry.getArguments(), navOptions, extras)) != null) {
                    return Intrinsics.areEqual(navigate, destination) ? backStackEntry : this.this$0.getState().createBackStackEntry(navigate, navigate.addInDefaultArgs(backStackEntry.getArguments()));
                }
                return null;
            }
        });
        filterNotNull = SequencesKt___SequencesKt.filterNotNull(map);
        for (NavBackStackEntry navBackStackEntry : filterNotNull) {
            getState().push(navBackStackEntry);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onLaunchSingleTop(NavBackStackEntry backStackEntry) {
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        NavDestination destination = backStackEntry.getDestination();
        if (!(destination instanceof NavDestination)) {
            destination = null;
        }
        if (destination == null) {
            return;
        }
        navigate(destination, null, NavOptionsBuilderKt.navOptions(new Function1<NavOptionsBuilder, Unit>() { // from class: androidx.navigation.Navigator$onLaunchSingleTop$1
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
        }), null);
        getState().onLaunchSingleTop(backStackEntry);
    }

    public void popBackStack(NavBackStackEntry popUpTo, boolean z) {
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        if (!value.contains(popUpTo)) {
            throw new IllegalStateException(("popBackStack was called with " + popUpTo + " which does not exist in back stack " + value).toString());
        }
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        NavBackStackEntry navBackStackEntry = null;
        while (popBackStack()) {
            navBackStackEntry = listIterator.previous();
            if (Intrinsics.areEqual(navBackStackEntry, popUpTo)) {
                break;
            }
        }
        if (navBackStackEntry != null) {
            getState().pop(navBackStackEntry, z);
        }
    }
}

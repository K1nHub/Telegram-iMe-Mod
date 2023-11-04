package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorState;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
/* compiled from: DialogFragmentNavigator.kt */
@Navigator.Name("dialog")
/* loaded from: classes.dex */
public final class DialogFragmentNavigator extends Navigator<Destination> {
    private final Context context;
    private final FragmentManager fragmentManager;
    private final LifecycleEventObserver observer;
    private final Set<String> restoredTagsAwaitingAttach;

    static {
        new Companion(null);
    }

    public DialogFragmentNavigator(Context context, FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.restoredTagsAwaitingAttach = new LinkedHashSet();
        this.observer = new LifecycleEventObserver() { // from class: androidx.navigation.fragment.DialogFragmentNavigator$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                DialogFragmentNavigator.m1182observer$lambda3(DialogFragmentNavigator.this, lifecycleOwner, event);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: observer$lambda-3  reason: not valid java name */
    public static final void m1182observer$lambda3(DialogFragmentNavigator this$0, LifecycleOwner source, Lifecycle.Event event) {
        NavBackStackEntry navBackStackEntry;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        boolean z = false;
        if (event == Lifecycle.Event.ON_CREATE) {
            DialogFragment dialogFragment = (DialogFragment) source;
            List<NavBackStackEntry> value = this$0.getState().getBackStack().getValue();
            if (!(value instanceof Collection) || !value.isEmpty()) {
                Iterator<T> it = value.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (Intrinsics.areEqual(((NavBackStackEntry) it.next()).getId(), dialogFragment.getTag())) {
                        z = true;
                        break;
                    }
                }
            }
            if (z) {
                return;
            }
            dialogFragment.dismiss();
        } else if (event == Lifecycle.Event.ON_STOP) {
            DialogFragment dialogFragment2 = (DialogFragment) source;
            if (dialogFragment2.requireDialog().isShowing()) {
                return;
            }
            List<NavBackStackEntry> value2 = this$0.getState().getBackStack().getValue();
            ListIterator<NavBackStackEntry> listIterator = value2.listIterator(value2.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    navBackStackEntry = null;
                    break;
                }
                navBackStackEntry = listIterator.previous();
                if (Intrinsics.areEqual(navBackStackEntry.getId(), dialogFragment2.getTag())) {
                    break;
                }
            }
            if (navBackStackEntry != null) {
                NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
                if (!Intrinsics.areEqual(CollectionsKt.lastOrNull((List<? extends Object>) value2), navBackStackEntry2)) {
                    Log.i("DialogFragmentNavigator", "Dialog " + dialogFragment2 + " was dismissed while it was not the top of the back stack, popping all dialogs above this dismissed dialog");
                }
                this$0.popBackStack(navBackStackEntry2, false);
                return;
            }
            throw new IllegalStateException(("Dialog " + dialogFragment2 + " has already been popped off of the Navigation back stack").toString());
        }
    }

    @Override // androidx.navigation.Navigator
    public void popBackStack(NavBackStackEntry popUpTo, boolean z) {
        List<NavBackStackEntry> reversed;
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        if (this.fragmentManager.isStateSaved()) {
            Log.i("DialogFragmentNavigator", "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        reversed = CollectionsKt___CollectionsKt.reversed(value.subList(value.indexOf(popUpTo), value.size()));
        for (NavBackStackEntry navBackStackEntry : reversed) {
            Fragment findFragmentByTag = this.fragmentManager.findFragmentByTag(navBackStackEntry.getId());
            if (findFragmentByTag != null) {
                findFragmentByTag.getLifecycle().removeObserver(this.observer);
                ((DialogFragment) findFragmentByTag).dismiss();
            }
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
            Log.i("DialogFragmentNavigator", "Ignoring navigate() call: FragmentManager has already saved its state");
            return;
        }
        for (NavBackStackEntry navBackStackEntry : entries) {
            navigate(navBackStackEntry);
        }
    }

    private final void navigate(NavBackStackEntry navBackStackEntry) {
        Destination destination;
        String className = ((Destination) navBackStackEntry.getDestination()).getClassName();
        if (className.charAt(0) == '.') {
            className = this.context.getPackageName() + className;
        }
        Fragment instantiate = this.fragmentManager.getFragmentFactory().instantiate(this.context.getClassLoader(), className);
        Intrinsics.checkNotNullExpressionValue(instantiate, "fragmentManager.fragment…ader, className\n        )");
        if (!DialogFragment.class.isAssignableFrom(instantiate.getClass())) {
            throw new IllegalArgumentException(("Dialog destination " + destination.getClassName() + " is not an instance of DialogFragment").toString());
        }
        DialogFragment dialogFragment = (DialogFragment) instantiate;
        dialogFragment.setArguments(navBackStackEntry.getArguments());
        dialogFragment.getLifecycle().addObserver(this.observer);
        dialogFragment.show(this.fragmentManager, navBackStackEntry.getId());
        getState().push(navBackStackEntry);
    }

    @Override // androidx.navigation.Navigator
    public void onAttach(NavigatorState state) {
        Lifecycle lifecycle;
        Intrinsics.checkNotNullParameter(state, "state");
        super.onAttach(state);
        for (NavBackStackEntry navBackStackEntry : state.getBackStack().getValue()) {
            DialogFragment dialogFragment = (DialogFragment) this.fragmentManager.findFragmentByTag(navBackStackEntry.getId());
            if (dialogFragment == null || (lifecycle = dialogFragment.getLifecycle()) == null) {
                this.restoredTagsAwaitingAttach.add(navBackStackEntry.getId());
            } else {
                lifecycle.addObserver(this.observer);
            }
        }
        this.fragmentManager.addFragmentOnAttachListener(new FragmentOnAttachListener() { // from class: androidx.navigation.fragment.DialogFragmentNavigator$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentOnAttachListener
            public final void onAttachFragment(FragmentManager fragmentManager, Fragment fragment) {
                DialogFragmentNavigator.m1183onAttach$lambda5(DialogFragmentNavigator.this, fragmentManager, fragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onAttach$lambda-5  reason: not valid java name */
    public static final void m1183onAttach$lambda5(DialogFragmentNavigator this$0, FragmentManager fragmentManager, Fragment childFragment) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fragmentManager, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(childFragment, "childFragment");
        Set<String> set = this$0.restoredTagsAwaitingAttach;
        if (TypeIntrinsics.asMutableCollection(set).remove(childFragment.getTag())) {
            childFragment.getLifecycle().addObserver(this$0.observer);
        }
    }

    /* compiled from: DialogFragmentNavigator.kt */
    /* loaded from: classes.dex */
    public static class Destination extends NavDestination implements FloatingWindow {
        private String _className;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(Navigator<? extends Destination> fragmentNavigator) {
            super(fragmentNavigator);
            Intrinsics.checkNotNullParameter(fragmentNavigator, "fragmentNavigator");
        }

        public final String getClassName() {
            String str = this._className;
            if (str == null) {
                throw new IllegalStateException("DialogFragment class was not set".toString());
            }
            Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.String");
            return str;
        }

        @Override // androidx.navigation.NavDestination
        public void onInflate(Context context, AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, R$styleable.DialogFragmentNavigator);
            Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…ntNavigator\n            )");
            String string = obtainAttributes.getString(R$styleable.DialogFragmentNavigator_android_name);
            if (string != null) {
                setClassName(string);
            }
            obtainAttributes.recycle();
        }

        public final Destination setClassName(String className) {
            Intrinsics.checkNotNullParameter(className, "className");
            this._className = className;
            return this;
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

    /* compiled from: DialogFragmentNavigator.kt */
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}

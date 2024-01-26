package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigation;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.fragment.FragmentNavigator;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavHostFragment.kt */
/* loaded from: classes.dex */
public class NavHostFragment extends Fragment {
    private boolean defaultNavHost;
    private int graphId;
    private Boolean isPrimaryBeforeOnCreate;
    private NavHostController navHostController;
    private View viewParent;

    static {
        new Companion(null);
    }

    public final NavController getNavController() {
        NavHostController navHostController = this.navHostController;
        if (navHostController == null) {
            throw new IllegalStateException("NavController is not available before onCreate()".toString());
        }
        Objects.requireNonNull(navHostController, "null cannot be cast to non-null type androidx.navigation.NavHostController");
        return navHostController;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        if (this.defaultNavHost) {
            getParentFragmentManager().beginTransaction().setPrimaryNavigationFragment(this).commit();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ba  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r7) {
        /*
            r6 = this;
            android.content.Context r0 = r6.requireContext()
            java.lang.String r1 = "requireContext()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            androidx.navigation.NavHostController r1 = new androidx.navigation.NavHostController
            r1.<init>(r0)
            r6.navHostController = r1
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            r1.setLifecycleOwner(r6)
        L16:
            boolean r1 = r0 instanceof android.content.ContextWrapper
            if (r1 == 0) goto L3e
            boolean r1 = r0 instanceof androidx.activity.OnBackPressedDispatcherOwner
            if (r1 == 0) goto L32
            androidx.navigation.NavHostController r1 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            androidx.activity.OnBackPressedDispatcherOwner r0 = (androidx.activity.OnBackPressedDispatcherOwner) r0
            androidx.activity.OnBackPressedDispatcher r0 = r0.getOnBackPressedDispatcher()
            java.lang.String r2 = "context as OnBackPressed…).onBackPressedDispatcher"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            r1.setOnBackPressedDispatcher(r0)
            goto L3e
        L32:
            android.content.ContextWrapper r0 = (android.content.ContextWrapper) r0
            android.content.Context r0 = r0.getBaseContext()
            java.lang.String r1 = "context.baseContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            goto L16
        L3e:
            androidx.navigation.NavHostController r0 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            java.lang.Boolean r1 = r6.isPrimaryBeforeOnCreate
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L56
            java.lang.String r4 = "null cannot be cast to non-null type kotlin.Boolean"
            java.util.Objects.requireNonNull(r1, r4)
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L56
            r1 = r2
            goto L57
        L56:
            r1 = r3
        L57:
            r0.enableOnBackPressed(r1)
            r0 = 0
            r6.isPrimaryBeforeOnCreate = r0
            androidx.navigation.NavHostController r1 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            androidx.lifecycle.ViewModelStore r4 = r6.getViewModelStore()
            java.lang.String r5 = "viewModelStore"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            r1.setViewModelStore(r4)
            androidx.navigation.NavHostController r1 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            r6.onCreateNavHostController(r1)
            java.lang.String r1 = "android-support-nav:fragment:graphId"
            if (r7 == 0) goto La0
            java.lang.String r4 = "android-support-nav:fragment:navControllerState"
            android.os.Bundle r4 = r7.getBundle(r4)
            java.lang.String r5 = "android-support-nav:fragment:defaultHost"
            boolean r5 = r7.getBoolean(r5, r3)
            if (r5 == 0) goto L99
            r6.defaultNavHost = r2
            androidx.fragment.app.FragmentManager r2 = r6.getParentFragmentManager()
            androidx.fragment.app.FragmentTransaction r2 = r2.beginTransaction()
            androidx.fragment.app.FragmentTransaction r2 = r2.setPrimaryNavigationFragment(r6)
            r2.commit()
        L99:
            int r2 = r7.getInt(r1)
            r6.graphId = r2
            goto La1
        La0:
            r4 = r0
        La1:
            if (r4 == 0) goto Lab
            androidx.navigation.NavHostController r2 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r2.restoreState(r4)
        Lab:
            int r2 = r6.graphId
            if (r2 == 0) goto Lba
            androidx.navigation.NavHostController r0 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            int r1 = r6.graphId
            r0.setGraph(r1)
            goto Ld6
        Lba:
            android.os.Bundle r2 = r6.getArguments()
            if (r2 == 0) goto Lc4
            int r3 = r2.getInt(r1)
        Lc4:
            if (r2 == 0) goto Lcc
            java.lang.String r0 = "android-support-nav:fragment:startDestinationArgs"
            android.os.Bundle r0 = r2.getBundle(r0)
        Lcc:
            if (r3 == 0) goto Ld6
            androidx.navigation.NavHostController r1 = r6.navHostController
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            r1.setGraph(r3, r0)
        Ld6:
            super.onCreate(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.fragment.NavHostFragment.onCreate(android.os.Bundle):void");
    }

    protected void onCreateNavHostController(NavHostController navHostController) {
        Intrinsics.checkNotNullParameter(navHostController, "navHostController");
        onCreateNavController(navHostController);
    }

    protected void onCreateNavController(NavController navController) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        NavigatorProvider navigatorProvider = navController.getNavigatorProvider();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        navigatorProvider.addNavigator(new DialogFragmentNavigator(requireContext, childFragmentManager));
        navController.getNavigatorProvider().addNavigator(createFragmentNavigator());
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrimaryNavigationFragmentChanged(boolean z) {
        NavHostController navHostController = this.navHostController;
        if (navHostController == null) {
            this.isPrimaryBeforeOnCreate = Boolean.valueOf(z);
        } else if (navHostController != null) {
            navHostController.enableOnBackPressed(z);
        }
    }

    protected Navigator<? extends FragmentNavigator.Destination> createFragmentNavigator() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        return new FragmentNavigator(requireContext, childFragmentManager, getContainerId());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Context context = inflater.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "inflater.context");
        FragmentContainerView fragmentContainerView = new FragmentContainerView(context);
        fragmentContainerView.setId(getContainerId());
        return fragmentContainerView;
    }

    private final int getContainerId() {
        int id = getId();
        return (id == 0 || id == -1) ? R$id.nav_host_fragment_container : id;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (!(view instanceof ViewGroup)) {
            throw new IllegalStateException(("created host view " + view + " is not a ViewGroup").toString());
        }
        Navigation.setViewNavController(view, this.navHostController);
        if (view.getParent() != null) {
            ViewParent parent = view.getParent();
            Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
            View view2 = (View) parent;
            this.viewParent = view2;
            Intrinsics.checkNotNull(view2);
            if (view2.getId() == getId()) {
                View view3 = this.viewParent;
                Intrinsics.checkNotNull(view3);
                Navigation.setViewNavController(view3, this.navHostController);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onInflate(Context context, AttributeSet attrs, Bundle bundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        super.onInflate(context, attrs, bundle);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, androidx.navigation.R$styleable.NavHost);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…yleable.NavHost\n        )");
        int resourceId = obtainStyledAttributes.getResourceId(androidx.navigation.R$styleable.NavHost_navGraph, 0);
        if (resourceId != 0) {
            this.graphId = resourceId;
        }
        Unit unit = Unit.INSTANCE;
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attrs, R$styleable.NavHostFragment);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes2, "context.obtainStyledAttr…tyleable.NavHostFragment)");
        if (obtainStyledAttributes2.getBoolean(R$styleable.NavHostFragment_defaultNavHost, false)) {
            this.defaultNavHost = true;
        }
        obtainStyledAttributes2.recycle();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        NavHostController navHostController = this.navHostController;
        Intrinsics.checkNotNull(navHostController);
        Bundle saveState = navHostController.saveState();
        if (saveState != null) {
            outState.putBundle("android-support-nav:fragment:navControllerState", saveState);
        }
        if (this.defaultNavHost) {
            outState.putBoolean("android-support-nav:fragment:defaultHost", true);
        }
        int i = this.graphId;
        if (i != 0) {
            outState.putInt("android-support-nav:fragment:graphId", i);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        View view = this.viewParent;
        if (view != null && Navigation.findNavController(view) == this.navHostController) {
            Navigation.setViewNavController(view, null);
        }
        this.viewParent = null;
    }

    /* compiled from: NavHostFragment.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}

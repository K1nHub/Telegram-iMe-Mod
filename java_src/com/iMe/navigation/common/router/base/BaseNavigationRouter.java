package com.iMe.navigation.common.router.base;

import android.view.View;
import android.view.ViewGroup;
import com.iMe.model.common.NavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.navigation.common.configuration.NavigationViewConfiguration;
import com.iMe.p032ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BaseNavigationRouter.kt */
/* loaded from: classes3.dex */
public abstract class BaseNavigationRouter<T extends MvpFragment> implements NavigationRouter<T> {
    private T currentActiveFragment;
    private final HashMap<Integer, T> fragmentsStack = new HashMap<>();
    private final boolean isBottomNavigation;
    private NavigationConfiguration<? extends NavigationTab<T>> navigationConfiguration;

    public BaseNavigationRouter(boolean z) {
        this.isBottomNavigation = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final HashMap<Integer, T> getFragmentsStack() {
        return this.fragmentsStack;
    }

    public final View getViewByFragmentId(int i) {
        T t = this.fragmentsStack.get(Integer.valueOf(i));
        View fragmentView = t != null ? t.getFragmentView() : null;
        if (fragmentView == null) {
            show(i);
            T currentScreen = getCurrentScreen();
            Intrinsics.checkNotNull(currentScreen);
            View fragmentView2 = currentScreen.getFragmentView();
            Intrinsics.checkNotNullExpressionValue(fragmentView2, "run {\n                sh…ragmentView\n            }");
            return fragmentView2;
        }
        return fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final NavigationConfiguration<? extends NavigationTab<T>> getConfiguration() {
        return this.navigationConfiguration;
    }

    @Override // com.iMe.navigation.common.router.base.NavigationRouter
    public void init(NavigationConfiguration<? extends NavigationTab<T>> settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        if (!settings.getTabs().isEmpty()) {
            this.navigationConfiguration = settings;
            return;
        }
        throw new IllegalStateException("Incorrect navigation configuration passed".toString());
    }

    @Override // com.iMe.navigation.common.router.base.NavigationRouter
    public void clean() {
        HashMap<Integer, T> hashMap = this.fragmentsStack;
        for (Map.Entry<Integer, T> entry : hashMap.entrySet()) {
            T value = entry.getValue();
            value.onDestroyView();
            value.onFragmentDestroy();
        }
        hashMap.clear();
        this.currentActiveFragment = null;
        this.navigationConfiguration = null;
    }

    @Override // com.iMe.navigation.common.router.base.NavigationRouter
    public T getCurrentScreen() {
        return this.currentActiveFragment;
    }

    @Override // com.iMe.navigation.common.router.base.NavigationRouter
    public List<T> getScreenStack() {
        List<T> mutableList;
        Collection<T> values = this.fragmentsStack.values();
        Intrinsics.checkNotNullExpressionValue(values, "fragmentsStack.values");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) values);
        return mutableList;
    }

    @Override // com.iMe.navigation.common.router.base.NavigationRouter
    public void show(int i) {
        NavigationViewConfiguration viewConfiguration;
        List<? extends NavigationTab<T>> tabs;
        Object obj;
        boolean z;
        NavigationConfiguration<? extends NavigationTab<T>> navigationConfiguration = this.navigationConfiguration;
        if (navigationConfiguration == null || (viewConfiguration = navigationConfiguration.getViewConfiguration()) == null) {
            throw new IllegalStateException("Incorrect navigation configuration passed".toString());
        }
        T t = this.fragmentsStack.get(Integer.valueOf(i));
        if (t != null) {
            T t2 = this.currentActiveFragment;
            if (t2 != null) {
                t2.onPause();
            }
            if (this.isBottomNavigation) {
                ViewGroup fragmentContainer = viewConfiguration.getFragmentContainer();
                if (fragmentContainer != null) {
                    fragmentContainer.removeAllViews();
                    recreateView(t, viewConfiguration);
                    fragmentContainer.addView(t.getFragmentView());
                }
            } else {
                recreateView(t, viewConfiguration);
            }
            t.onResume();
            this.currentActiveFragment = t;
            return;
        }
        NavigationConfiguration<? extends NavigationTab<T>> navigationConfiguration2 = this.navigationConfiguration;
        T t3 = null;
        if (navigationConfiguration2 != null && (tabs = navigationConfiguration2.getTabs()) != null) {
            Iterator<T> it = tabs.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((NavigationTab) obj).getId() == i) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    break;
                }
            }
            NavigationTab navigationTab = (NavigationTab) obj;
            if (navigationTab != null) {
                t3 = (T) navigationTab.getFragment();
            }
        }
        if (t3 != null) {
            T t4 = this.currentActiveFragment;
            if (t4 != null) {
                t4.onPause();
            }
            if (this.isBottomNavigation) {
                ViewGroup fragmentContainer2 = viewConfiguration.getFragmentContainer();
                if (fragmentContainer2 != null) {
                    fragmentContainer2.removeAllViews();
                    recreateView(t3, viewConfiguration);
                    fragmentContainer2.addView(t3.getFragmentView());
                }
            } else {
                t3.setParentFragment(viewConfiguration.getParentFragment());
            }
            t3.onViewCreated();
            if (this.currentActiveFragment != null) {
                t3.onResume();
            }
            this.fragmentsStack.put(Integer.valueOf(i), t3);
            this.currentActiveFragment = t3;
        }
    }

    private final void recreateView(T t, NavigationViewConfiguration navigationViewConfiguration) {
        if (t.getFragmentView() == null) {
            t.setParentFragment(navigationViewConfiguration.getParentFragment());
        }
        if (t.getFragmentView().getParent() != null) {
            View fragmentView = t.getFragmentView();
            Intrinsics.checkNotNullExpressionValue(fragmentView, "fragment.fragmentView");
            ViewExtKt.removeSelfFromParent(fragmentView);
        }
    }
}

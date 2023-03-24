package com.smedialink.navigation.common.router;

import com.smedialink.model.common.NavigationTab;
import com.smedialink.navigation.common.configuration.NavigationConfiguration;
import com.smedialink.navigation.common.router.base.BaseNavigationRouter;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CommonTabsNavigationRouter.kt */
/* loaded from: classes3.dex */
public class CommonTabsNavigationRouter<T extends MvpFragment> extends BaseNavigationRouter<T> {
    private final boolean preloadAllTabs;

    public CommonTabsNavigationRouter(boolean z) {
        super(false);
        this.preloadAllTabs = z;
    }

    @Override // com.smedialink.navigation.common.router.base.BaseNavigationRouter, com.smedialink.navigation.common.router.base.NavigationRouter
    public void init(NavigationConfiguration<? extends NavigationTab<T>> settings) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(settings, "settings");
        super.init(settings);
        if (this.preloadAllTabs) {
            HashMap<Integer, T> fragmentsStack = getFragmentsStack();
            List<? extends NavigationTab<T>> tabs = settings.getTabs();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tabs, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it = tabs.iterator();
            while (it.hasNext()) {
                NavigationTab navigationTab = (NavigationTab) it.next();
                Integer valueOf = Integer.valueOf(navigationTab.getId());
                MvpFragment fragment = navigationTab.getFragment();
                fragment.setParentFragment(settings.getViewConfiguration().getParentFragment());
                fragment.onViewCreated();
                arrayList.add(TuplesKt.m99to(valueOf, fragment));
            }
            MapsKt__MapsKt.putAll(fragmentsStack, arrayList);
        }
    }

    @Override // com.smedialink.navigation.common.router.base.BaseNavigationRouter, com.smedialink.navigation.common.router.base.NavigationRouter
    public void show(int i) {
        if (this.preloadAllTabs) {
            return;
        }
        super.show(i);
    }
}

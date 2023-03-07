package com.smedialink.navigation.common.router.base;

import com.smedialink.model.common.NavigationTab;
import com.smedialink.navigation.common.configuration.NavigationConfiguration;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import java.util.List;
/* compiled from: NavigationRouter.kt */
/* loaded from: classes3.dex */
public interface NavigationRouter<T extends MvpFragment> {
    void clean();

    T getCurrentScreen();

    List<T> getScreenStack();

    void init(NavigationConfiguration<? extends NavigationTab<T>> navigationConfiguration);

    void show(int i);
}

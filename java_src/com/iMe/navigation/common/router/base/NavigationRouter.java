package com.iMe.navigation.common.router.base;

import com.iMe.model.common.NavigationTab;
import com.iMe.navigation.common.configuration.NavigationConfiguration;
import com.iMe.p030ui.base.mvp.MvpFragment;
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

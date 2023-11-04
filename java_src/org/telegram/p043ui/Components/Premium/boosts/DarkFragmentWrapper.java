package org.telegram.p043ui.Components.Premium.boosts;

import android.app.Activity;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Stories.DarkThemeResourceProvider;
import org.telegram.p043ui.WrappedResourceProvider;
/* renamed from: org.telegram.ui.Components.Premium.boosts.DarkFragmentWrapper */
/* loaded from: classes6.dex */
public class DarkFragmentWrapper extends BaseFragment {
    private final BaseFragment parentFragment;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean presentFragment(BaseFragment baseFragment) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DarkFragmentWrapper(BaseFragment baseFragment) {
        this.parentFragment = baseFragment;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public Activity getParentActivity() {
        return this.parentFragment.getParentActivity();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public Theme.ResourcesProvider getResourceProvider() {
        return new WrappedResourceProvider(new DarkThemeResourceProvider());
    }
}

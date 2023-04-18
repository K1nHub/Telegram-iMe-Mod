package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.fork.p024ui.view.TabbedViewPager;
import org.telegram.messenger.C3242R;
/* loaded from: classes4.dex */
public final class ForkFragmentCatalogTabsBinding implements ViewBinding {
    public final TabbedViewPager catalogPager;
    private final FrameLayout rootView;

    private ForkFragmentCatalogTabsBinding(FrameLayout frameLayout, TabbedViewPager tabbedViewPager) {
        this.rootView = frameLayout;
        this.catalogPager = tabbedViewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentCatalogTabsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentCatalogTabsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3242R.layout.fork_fragment_catalog_tabs, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentCatalogTabsBinding bind(View view) {
        int i = C3242R.C3245id.catalog_pager;
        TabbedViewPager tabbedViewPager = (TabbedViewPager) ViewBindings.findChildViewById(view, i);
        if (tabbedViewPager != null) {
            return new ForkFragmentCatalogTabsBinding((FrameLayout) view, tabbedViewPager);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}

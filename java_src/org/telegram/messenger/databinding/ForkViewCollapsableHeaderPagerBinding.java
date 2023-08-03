package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import org.telegram.messenger.C3419R;
/* loaded from: classes4.dex */
public final class ForkViewCollapsableHeaderPagerBinding implements ViewBinding {
    public final AppBarLayout appbar;
    public final FrameLayout frameCollapsingContentContainer;
    public final FrameLayout framePagesContainer;
    public final FrameLayout frameTabsContainer;
    private final CoordinatorLayout rootView;
    public final MaterialToolbar toolbar;

    private ForkViewCollapsableHeaderPagerBinding(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout2, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, MaterialToolbar materialToolbar) {
        this.rootView = coordinatorLayout;
        this.appbar = appBarLayout;
        this.frameCollapsingContentContainer = frameLayout;
        this.framePagesContainer = frameLayout2;
        this.frameTabsContainer = frameLayout3;
        this.toolbar = materialToolbar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static ForkViewCollapsableHeaderPagerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkViewCollapsableHeaderPagerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_view_collapsable_header_pager, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkViewCollapsableHeaderPagerBinding bind(View view) {
        int i = C3419R.C3422id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, i);
        if (appBarLayout != null) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view;
            i = C3419R.C3422id.frame_collapsing_content_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
                i = C3419R.C3422id.frame_pages_container;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout2 != null) {
                    i = C3419R.C3422id.frame_tabs_container;
                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                    if (frameLayout3 != null) {
                        i = C3419R.C3422id.toolbar;
                        MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, i);
                        if (materialToolbar != null) {
                            return new ForkViewCollapsableHeaderPagerBinding(coordinatorLayout, appBarLayout, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, materialToolbar);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}

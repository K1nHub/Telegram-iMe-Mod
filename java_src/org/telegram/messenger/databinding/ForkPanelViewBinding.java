package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.tabs.TabLayout;
import org.telegram.messenger.C3301R;
/* loaded from: classes4.dex */
public final class ForkPanelViewBinding implements ViewBinding {
    public final AppBarLayout appbar;
    public final View divider1;
    public final View divider2;
    public final AppCompatImageView imageBots;
    public final AppCompatImageView imageGifResponses;
    public final AppCompatImageView imageSettings;
    public final AppCompatImageView imageTextResponses;
    public final FrameLayout layoutBottom;
    private final LinearLayout rootView;
    public final TabLayout tabs;
    public final TextView textEmptyBots;
    public final ViewPager viewpager;

    private ForkPanelViewBinding(LinearLayout linearLayout, AppBarLayout appBarLayout, View view, View view2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, FrameLayout frameLayout, CoordinatorLayout coordinatorLayout, TabLayout tabLayout, TextView textView, ViewPager viewPager) {
        this.rootView = linearLayout;
        this.appbar = appBarLayout;
        this.divider1 = view;
        this.divider2 = view2;
        this.imageBots = appCompatImageView;
        this.imageGifResponses = appCompatImageView2;
        this.imageSettings = appCompatImageView3;
        this.imageTextResponses = appCompatImageView4;
        this.layoutBottom = frameLayout;
        this.tabs = tabLayout;
        this.textEmptyBots = textView;
        this.viewpager = viewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkPanelViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkPanelViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3301R.layout.fork_panel_view, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkPanelViewBinding bind(View view) {
        View findChildViewById;
        View findChildViewById2;
        int i = C3301R.C3304id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, i);
        if (appBarLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3301R.C3304id.divider1))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C3301R.C3304id.divider2))) != null) {
            i = C3301R.C3304id.imageBots;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3301R.C3304id.imageGifResponses;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView2 != null) {
                    i = C3301R.C3304id.imageSettings;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView3 != null) {
                        i = C3301R.C3304id.imageTextResponses;
                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView4 != null) {
                            i = C3301R.C3304id.layoutBottom;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                            if (frameLayout != null) {
                                i = C3301R.C3304id.smart_panel_root;
                                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, i);
                                if (coordinatorLayout != null) {
                                    i = C3301R.C3304id.tabs;
                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, i);
                                    if (tabLayout != null) {
                                        i = C3301R.C3304id.textEmptyBots;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView != null) {
                                            i = C3301R.C3304id.viewpager;
                                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, i);
                                            if (viewPager != null) {
                                                return new ForkPanelViewBinding((LinearLayout) view, appBarLayout, findChildViewById, findChildViewById2, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, frameLayout, coordinatorLayout, tabLayout, textView, viewPager);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}

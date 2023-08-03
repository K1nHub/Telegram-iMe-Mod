package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.fork.p024ui.view.CollapsableHeaderTabbedViewPager;
import org.telegram.messenger.C3419R;
/* loaded from: classes4.dex */
public final class ForkFragmentStakingBinding implements ViewBinding {
    private final SwipeRefreshLayout rootView;
    public final CollapsableHeaderTabbedViewPager stakingPager;

    private ForkFragmentStakingBinding(SwipeRefreshLayout swipeRefreshLayout, CollapsableHeaderTabbedViewPager collapsableHeaderTabbedViewPager) {
        this.rootView = swipeRefreshLayout;
        this.stakingPager = collapsableHeaderTabbedViewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentStakingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentStakingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_fragment_staking, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentStakingBinding bind(View view) {
        int i = C3419R.C3422id.staking_pager;
        CollapsableHeaderTabbedViewPager collapsableHeaderTabbedViewPager = (CollapsableHeaderTabbedViewPager) ViewBindings.findChildViewById(view, i);
        if (collapsableHeaderTabbedViewPager != null) {
            return new ForkFragmentStakingBinding((SwipeRefreshLayout) view, collapsableHeaderTabbedViewPager);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}

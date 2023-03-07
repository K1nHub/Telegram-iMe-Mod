package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.fork.p046ui.view.TabbedViewPager;
import org.telegram.messenger.C3158R;
/* loaded from: classes4.dex */
public final class ForkFragmentStakingOperationsBinding implements ViewBinding {
    public final TabbedViewPager operationsPager;
    private final TabbedViewPager rootView;

    private ForkFragmentStakingOperationsBinding(TabbedViewPager tabbedViewPager, TabbedViewPager tabbedViewPager2) {
        this.rootView = tabbedViewPager;
        this.operationsPager = tabbedViewPager2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public TabbedViewPager getRoot() {
        return this.rootView;
    }

    public static ForkFragmentStakingOperationsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentStakingOperationsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3158R.layout.fork_fragment_staking_operations, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentStakingOperationsBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        TabbedViewPager tabbedViewPager = (TabbedViewPager) view;
        return new ForkFragmentStakingOperationsBinding(tabbedViewPager, tabbedViewPager);
    }
}

package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.iMe.p031ui.custom.StakingDashboardView;
import java.util.Objects;
import org.telegram.messenger.C3417R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemStakingDashboardBinding implements ViewBinding {
    private final StakingDashboardView rootView;

    private ForkRecycleItemStakingDashboardBinding(StakingDashboardView stakingDashboardView, StakingDashboardView stakingDashboardView2) {
        this.rootView = stakingDashboardView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public StakingDashboardView getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemStakingDashboardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemStakingDashboardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3417R.layout.fork_recycle_item_staking_dashboard, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemStakingDashboardBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        StakingDashboardView stakingDashboardView = (StakingDashboardView) view;
        return new ForkRecycleItemStakingDashboardBinding(stakingDashboardView, stakingDashboardView);
    }
}

package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.iMe.p030ui.custom.StakingDashboardView;
import java.util.Objects;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemStakingDashboardBinding implements ViewBinding {
    private ForkRecycleItemStakingDashboardBinding(StakingDashboardView stakingDashboardView, StakingDashboardView stakingDashboardView2) {
    }

    public static ForkRecycleItemStakingDashboardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemStakingDashboardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_staking_dashboard, viewGroup, false);
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

package com.smedialink.p031ui.wallet.staking.programmes.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.common.FiltersListItem;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.staking.StakingDashboardItem;
import com.smedialink.model.staking.StakingProgrammeItem;
import com.smedialink.model.wallet.home.HeaderItemWithRightButton;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingProgrammesDiffCallback.kt */
/* renamed from: com.smedialink.ui.wallet.staking.programmes.adapter.diff.StakingProgrammesDiffCallback */
/* loaded from: classes3.dex */
public final class StakingProgrammesDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), ((GlobalStateItem) newItem).getState());
        }
        if ((!(oldItem instanceof HeaderItemWithRightButton) || !(newItem instanceof HeaderItemWithRightButton)) && (!(oldItem instanceof FiltersListItem) || !(newItem instanceof FiltersListItem))) {
            if ((oldItem instanceof StakingProgrammeItem) && (newItem instanceof StakingProgrammeItem)) {
                if (((StakingProgrammeItem) oldItem).getId() != ((StakingProgrammeItem) newItem).getId()) {
                    return false;
                }
            } else if (!(oldItem instanceof StakingDashboardItem) || !(newItem instanceof StakingDashboardItem)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof HeaderItemWithRightButton) && (newItem instanceof HeaderItemWithRightButton)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof FiltersListItem) && (newItem instanceof FiltersListItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof StakingProgrammeItem) && (newItem instanceof StakingProgrammeItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof StakingDashboardItem.Loading) && (newItem instanceof StakingDashboardItem.Loading)) {
            return true;
        }
        if ((oldItem instanceof StakingDashboardItem.Data) && (newItem instanceof StakingDashboardItem.Data)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof StakingProgrammeItem) && (newItem instanceof StakingProgrammeItem)) {
            StakingProgrammeItem stakingProgrammeItem = (StakingProgrammeItem) newItem;
            if (Intrinsics.areEqual(((StakingProgrammeItem) oldItem).getTokenBalance(), stakingProgrammeItem.getTokenBalance())) {
                return null;
            }
            return stakingProgrammeItem;
        } else if ((oldItem instanceof StakingDashboardItem) && (newItem instanceof StakingDashboardItem)) {
            if (Intrinsics.areEqual(oldItem, newItem)) {
                return null;
            }
            return (StakingDashboardItem) newItem;
        } else if ((oldItem instanceof HeaderItemWithRightButton) && (newItem instanceof HeaderItemWithRightButton)) {
            if (Intrinsics.areEqual(oldItem, newItem)) {
                return null;
            }
            return (HeaderItemWithRightButton) newItem;
        } else if ((oldItem instanceof FiltersListItem) && (newItem instanceof FiltersListItem) && !Intrinsics.areEqual(oldItem, newItem)) {
            return ((FiltersListItem) newItem).getFilters();
        } else {
            return null;
        }
    }
}

package com.smedialink.p031ui.catalog.tabs.categories.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.model.common.FiltersListItem;
import com.smedialink.model.common.GlobalStateItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CampaignsByCategoriesDiffCallback.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.categories.adapter.diff.CampaignsByCategoriesDiffCallback */
/* loaded from: classes3.dex */
public final class CampaignsByCategoriesDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if (!(oldItem instanceof FiltersListItem) || !(newItem instanceof FiltersListItem)) {
            if (!(oldItem instanceof CampaignItem) || !(newItem instanceof CampaignItem)) {
                if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
                    return Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), ((GlobalStateItem) newItem).getState());
                }
                return false;
            } else if (((CampaignItem) oldItem).getId() != ((CampaignItem) newItem).getId()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof FiltersListItem) && (newItem instanceof FiltersListItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof CampaignItem) && (newItem instanceof CampaignItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), ((GlobalStateItem) newItem).getState());
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof FiltersListItem) && (newItem instanceof FiltersListItem)) {
            return ((FiltersListItem) newItem).getFilters();
        }
        return null;
    }
}

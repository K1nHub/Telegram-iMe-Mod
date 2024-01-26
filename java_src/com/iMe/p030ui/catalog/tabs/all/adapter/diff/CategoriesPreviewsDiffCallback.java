package com.iMe.p030ui.catalog.tabs.all.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.catalog.CategoryWithCampaignsItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoriesPreviewsDiffCallback.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.adapter.diff.CategoriesPreviewsDiffCallback */
/* loaded from: classes3.dex */
public final class CategoriesPreviewsDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return (oldItem instanceof CategoryWithCampaignsItem) && (newItem instanceof CategoryWithCampaignsItem) && ((CategoryWithCampaignsItem) oldItem).getCategory().getId() == ((CategoryWithCampaignsItem) newItem).getCategory().getId();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof CategoryWithCampaignsItem) && (newItem instanceof CategoryWithCampaignsItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }
}

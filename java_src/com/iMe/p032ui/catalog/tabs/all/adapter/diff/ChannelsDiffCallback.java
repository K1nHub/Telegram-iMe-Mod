package com.iMe.p032ui.catalog.tabs.all.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.iMe.model.catalog.CampaignItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelsDiffCallback.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.adapter.diff.ChannelsDiffCallback */
/* loaded from: classes3.dex */
public final class ChannelsDiffCallback extends DiffUtil.ItemCallback<CampaignItem> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(CampaignItem oldItem, CampaignItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return oldItem.getId() == newItem.getId();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(CampaignItem oldItem, CampaignItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem, newItem);
    }
}

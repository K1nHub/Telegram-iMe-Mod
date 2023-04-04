package com.iMe.p032ui.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.iMe.model.common.FilterItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FiltersDiffCallback.kt */
/* renamed from: com.iMe.ui.adapter.diff.FiltersDiffCallback */
/* loaded from: classes.dex */
public final class FiltersDiffCallback extends DiffUtil.ItemCallback<FilterItem> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(FilterItem oldItem, FilterItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return oldItem.getId() == newItem.getId();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(FilterItem oldItem, FilterItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return oldItem.isSelected() == newItem.isSelected();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(FilterItem oldItem, FilterItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if (Intrinsics.areEqual(oldItem, newItem)) {
            return null;
        }
        return newItem;
    }
}

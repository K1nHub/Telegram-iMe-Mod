package com.iMe.p031ui.wallet.home.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.iMe.model.wallet.home.SlideItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BannerSlideDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.home.adapter.diff.BannerSlideDiffCallback */
/* loaded from: classes4.dex */
public final class BannerSlideDiffCallback extends DiffUtil.ItemCallback<SlideItem> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(SlideItem oldItem, SlideItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return oldItem.getSlide().getTitle() == newItem.getSlide().getTitle();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(SlideItem oldItem, SlideItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem, newItem);
    }
}

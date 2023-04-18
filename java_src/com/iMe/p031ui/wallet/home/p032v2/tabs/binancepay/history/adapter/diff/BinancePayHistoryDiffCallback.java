package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.history.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.pay.BinanceTransactionItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayHistoryDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.history.adapter.diff.BinancePayHistoryDiffCallback */
/* loaded from: classes3.dex */
public final class BinancePayHistoryDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return null;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof HeaderItem) && (newItem instanceof HeaderItem)) {
            return Intrinsics.areEqual(((HeaderItem) oldItem).getTitle(), ((HeaderItem) newItem).getTitle());
        }
        if ((oldItem instanceof BinanceTransactionItem) && (newItem instanceof BinanceTransactionItem)) {
            return Intrinsics.areEqual(((BinanceTransactionItem) oldItem).getTransaction().getTransactionId(), ((BinanceTransactionItem) newItem).getTransaction().getTransactionId());
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof HeaderItem) && (newItem instanceof HeaderItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof BinanceTransactionItem) && (newItem instanceof BinanceTransactionItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }
}

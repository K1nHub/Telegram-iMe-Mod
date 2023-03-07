package com.smedialink.p031ui.wallet.transaction.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.model.wallet.transaction.StakingOperationItem;
import com.smedialink.model.wallet.transaction.TransactionItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransactionDiffCallback.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.adapter.diff.TransactionDiffCallback */
/* loaded from: classes3.dex */
public final class TransactionDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
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
        if (!(oldItem instanceof GlobalStateItem) || !(newItem instanceof GlobalStateItem)) {
            if ((oldItem instanceof HeaderItem) && (newItem instanceof HeaderItem)) {
                return Intrinsics.areEqual(((HeaderItem) oldItem).getTitle(), ((HeaderItem) newItem).getTitle());
            }
            if ((oldItem instanceof TransactionItem) && (newItem instanceof TransactionItem)) {
                return Intrinsics.areEqual(((TransactionItem) oldItem).getTransaction().getId(), ((TransactionItem) newItem).getTransaction().getId());
            }
            if (!(oldItem instanceof StakingOperationItem) || !(newItem instanceof StakingOperationItem) || ((StakingOperationItem) oldItem).getId() != ((StakingOperationItem) newItem).getId()) {
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
        if ((oldItem instanceof HeaderItem) && (newItem instanceof HeaderItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof TransactionItem) && (newItem instanceof TransactionItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof StakingOperationItem) && (newItem instanceof StakingOperationItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }
}

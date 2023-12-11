package com.iMe.p030ui.wallet.fragment.usernames.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.cryptobox.AnimatedHeaderItem;
import com.iMe.model.cryptobox.SortingListHeaderItem;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentProductsDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.fragment.usernames.adapter.diff.TonFragmentProductsDiffCallback */
/* loaded from: classes4.dex */
public final class TonFragmentProductsDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof AnimatedHeaderItem) && (newItem instanceof AnimatedHeaderItem)) {
            return true;
        }
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return true;
        }
        if ((oldItem instanceof SortingListHeaderItem) && (newItem instanceof SortingListHeaderItem)) {
            return true;
        }
        if ((oldItem instanceof TonFragmentItem.Product) && (newItem instanceof TonFragmentItem.Product)) {
            return Intrinsics.areEqual(((TonFragmentItem.Product) oldItem).getTitle(), ((TonFragmentItem.Product) newItem).getTitle());
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof AnimatedHeaderItem) && (newItem instanceof AnimatedHeaderItem)) {
            return true;
        }
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof SortingListHeaderItem) && (newItem instanceof SortingListHeaderItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof TonFragmentItem.Product) && (newItem instanceof TonFragmentItem.Product)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        TonFragmentItem.Product product;
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            GlobalStateItem globalStateItem = (GlobalStateItem) newItem;
            boolean areEqual = Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), globalStateItem.getState());
            product = globalStateItem;
            if (areEqual) {
                return null;
            }
        } else if ((oldItem instanceof SortingListHeaderItem) && (newItem instanceof SortingListHeaderItem)) {
            boolean isSortingVisible = ((SortingListHeaderItem) oldItem).isSortingVisible();
            SortingListHeaderItem sortingListHeaderItem = (SortingListHeaderItem) newItem;
            boolean isSortingVisible2 = sortingListHeaderItem.isSortingVisible();
            product = sortingListHeaderItem;
            if (isSortingVisible == isSortingVisible2) {
                return null;
            }
        } else if (!(oldItem instanceof TonFragmentItem.Product) || !(newItem instanceof TonFragmentItem.Product)) {
            return null;
        } else {
            TonFragmentItem.Product product2 = (TonFragmentItem.Product) newItem;
            boolean areEqual2 = Intrinsics.areEqual(((TonFragmentItem.Product) oldItem).getSubtitle(), product2.getSubtitle());
            product = product2;
            if (areEqual2) {
                return null;
            }
        }
        return product;
    }
}

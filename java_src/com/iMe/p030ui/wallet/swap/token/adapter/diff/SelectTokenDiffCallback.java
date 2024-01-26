package com.iMe.p030ui.wallet.swap.token.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.iMe.model.wallet.select.SelectableTokenItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectTokenDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.adapter.diff.SelectTokenDiffCallback */
/* loaded from: classes4.dex */
public final class SelectTokenDiffCallback extends DiffUtil.ItemCallback<SelectableTokenItem> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(SelectableTokenItem oldItem, SelectableTokenItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem.getToken().getAddress(), newItem.getToken().getAddress());
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(SelectableTokenItem oldItem, SelectableTokenItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem, newItem);
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(SelectableTokenItem oldItem, SelectableTokenItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if (Intrinsics.areEqual(oldItem.getBalance(), newItem.getBalance())) {
            return null;
        }
        return newItem;
    }
}

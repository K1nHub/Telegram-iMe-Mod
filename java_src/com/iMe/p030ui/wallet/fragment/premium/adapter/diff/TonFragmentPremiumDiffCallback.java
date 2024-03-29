package com.iMe.p030ui.wallet.fragment.premium.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentPremiumDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.fragment.premium.adapter.diff.TonFragmentPremiumDiffCallback */
/* loaded from: classes4.dex */
public final class TonFragmentPremiumDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof TonFragmentItem.C1533Premium) && (newItem instanceof TonFragmentItem.C1533Premium)) {
            if (((TonFragmentItem.C1533Premium) oldItem).getMonthsCount() == ((TonFragmentItem.C1533Premium) newItem).getMonthsCount()) {
                return true;
            }
        } else if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem, newItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        GlobalStateItem globalStateItem;
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof TonFragmentItem.C1533Premium) && (newItem instanceof TonFragmentItem.C1533Premium)) {
            boolean isChecked = ((TonFragmentItem.C1533Premium) oldItem).isChecked();
            TonFragmentItem.C1533Premium c1533Premium = (TonFragmentItem.C1533Premium) newItem;
            boolean isChecked2 = c1533Premium.isChecked();
            globalStateItem = c1533Premium;
            if (isChecked == isChecked2) {
                return null;
            }
        } else if (!(oldItem instanceof GlobalStateItem) || !(newItem instanceof GlobalStateItem)) {
            return null;
        } else {
            GlobalStateItem globalStateItem2 = (GlobalStateItem) newItem;
            boolean areEqual = Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), globalStateItem2.getState());
            globalStateItem = globalStateItem2;
            if (areEqual) {
                return null;
            }
        }
        return globalStateItem;
    }
}

package com.iMe.p031ui.wallet.cryptobox.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.cryptobox.CryptoBoxItem;
import com.iMe.model.cryptobox.CryptoBoxesChatItem;
import com.iMe.model.cryptobox.CryptoBoxesHeaderItem;
import com.iMe.model.cryptobox.CryptoBoxesListHeaderItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxesDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.adapter.diff.CryptoBoxesDiffCallback */
/* loaded from: classes6.dex */
public final class CryptoBoxesDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof CryptoBoxesHeaderItem) && (newItem instanceof CryptoBoxesHeaderItem)) {
            return true;
        }
        if ((oldItem instanceof CryptoBoxesListHeaderItem) && (newItem instanceof CryptoBoxesListHeaderItem)) {
            return true;
        }
        if ((oldItem instanceof CryptoBoxesChatItem) && (newItem instanceof CryptoBoxesChatItem)) {
            return true;
        }
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return true;
        }
        if ((oldItem instanceof CryptoBoxItem) && (newItem instanceof CryptoBoxItem)) {
            return Intrinsics.areEqual(((CryptoBoxItem) oldItem).getId(), ((CryptoBoxItem) newItem).getId());
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof CryptoBoxesHeaderItem) && (newItem instanceof CryptoBoxesHeaderItem)) {
            return true;
        }
        if ((oldItem instanceof CryptoBoxesListHeaderItem) && (newItem instanceof CryptoBoxesListHeaderItem)) {
            return true;
        }
        if ((oldItem instanceof CryptoBoxesChatItem) && (newItem instanceof CryptoBoxesChatItem)) {
            return true;
        }
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof CryptoBoxItem) && (newItem instanceof CryptoBoxItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        GlobalStateItem globalStateItem;
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof CryptoBoxItem) && (newItem instanceof CryptoBoxItem)) {
            CryptoBoxItem cryptoBoxItem = (CryptoBoxItem) newItem;
            boolean areEqual = Intrinsics.areEqual(((CryptoBoxItem) oldItem).getStatusText(), cryptoBoxItem.getStatusText());
            globalStateItem = cryptoBoxItem;
            if (areEqual) {
                return null;
            }
        } else if (!(oldItem instanceof GlobalStateItem) || !(newItem instanceof GlobalStateItem)) {
            return null;
        } else {
            GlobalStateItem globalStateItem2 = (GlobalStateItem) newItem;
            boolean areEqual2 = Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), globalStateItem2.getState());
            globalStateItem = globalStateItem2;
            if (areEqual2) {
                return null;
            }
        }
        return globalStateItem;
    }
}

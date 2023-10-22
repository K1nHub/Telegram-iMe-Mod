package com.iMe.p030ui.wallet.crypto.settings.custom_tokens.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.wallet.crypto.TokenItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CustomTokensDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.adapter.diff.CustomTokensDiffCallback */
/* loaded from: classes3.dex */
public final class CustomTokensDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return ((oldItem instanceof TokenItem) && (newItem instanceof TokenItem)) ? Intrinsics.areEqual(((TokenItem) oldItem).getAddress(), ((TokenItem) newItem).getAddress()) : (oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem) && ((GlobalStateItem) oldItem).getItemType() == ((GlobalStateItem) newItem).getItemType();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof TokenItem) && (newItem instanceof TokenItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
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
        if ((oldItem instanceof TokenItem) && (newItem instanceof TokenItem)) {
            TokenItem tokenItem = (TokenItem) newItem;
            boolean areEqual = Intrinsics.areEqual(((TokenItem) oldItem).getAddress(), tokenItem.getAddress());
            globalStateItem = tokenItem;
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

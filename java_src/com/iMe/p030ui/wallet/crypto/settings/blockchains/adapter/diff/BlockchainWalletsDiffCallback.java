package com.iMe.p030ui.wallet.crypto.settings.blockchains.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BlockchainWalletsDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.adapter.diff.BlockchainWalletsDiffCallback */
/* loaded from: classes3.dex */
public final class BlockchainWalletsDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof BlockchainManagementItem.Wallet) && (newItem instanceof BlockchainManagementItem.Wallet)) {
            return Intrinsics.areEqual(((BlockchainManagementItem.Wallet) oldItem).getAddress(), ((BlockchainManagementItem.Wallet) newItem).getAddress());
        }
        if ((oldItem instanceof BlockchainManagementItem.ActionButton.AddWallet) && (newItem instanceof BlockchainManagementItem.ActionButton.AddWallet)) {
            if (((BlockchainManagementItem.ActionButton.AddWallet) oldItem).getBlockchainType() == ((BlockchainManagementItem.ActionButton.AddWallet) newItem).getBlockchainType()) {
                return true;
            }
        } else if ((oldItem instanceof BlockchainManagementItem.ActionButton.ResetAllWallets) && (newItem instanceof BlockchainManagementItem.ActionButton.ResetAllWallets)) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return ((oldItem instanceof BlockchainManagementItem.Wallet) && (newItem instanceof BlockchainManagementItem.Wallet)) ? Intrinsics.areEqual(oldItem, newItem) : ((oldItem instanceof BlockchainManagementItem.ActionButton.AddWallet) && (newItem instanceof BlockchainManagementItem.ActionButton.AddWallet)) ? Intrinsics.areEqual(oldItem, newItem) : (oldItem instanceof BlockchainManagementItem.ActionButton.ResetAllWallets) && (newItem instanceof BlockchainManagementItem.ActionButton.ResetAllWallets);
    }
}

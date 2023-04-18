package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.wallet.home.BannerItem;
import com.iMe.model.wallet.home.CardButtonItem;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.model.wallet.home.TotalBalanceItem;
import com.iMe.model.wallet.home.pay.BinanceAccountItem;
import com.iMe.model.wallet.home.pay.BinanceBalanceItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.adapter.diff.BinancePayDiffCallback */
/* loaded from: classes3.dex */
public final class BinancePayDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof HeaderItemWithNetworkSwitcher) && (newItem instanceof HeaderItemWithNetworkSwitcher)) {
            return Intrinsics.areEqual(((HeaderItemWithNetworkSwitcher) oldItem).getTitle(), ((HeaderItemWithNetworkSwitcher) newItem).getTitle());
        }
        if ((oldItem instanceof HeaderItem) && (newItem instanceof HeaderItem)) {
            return Intrinsics.areEqual(((HeaderItem) oldItem).getTitle(), ((HeaderItem) newItem).getTitle());
        }
        if ((oldItem instanceof CardButtonItem) && (newItem instanceof CardButtonItem)) {
            if (((CardButtonItem) oldItem).getTitleResId() == ((CardButtonItem) newItem).getTitleResId()) {
                return true;
            }
        } else if ((oldItem instanceof BinanceAccountItem) && (newItem instanceof BinanceAccountItem)) {
            return Intrinsics.areEqual(((BinanceAccountItem) oldItem).getInfo().getId(), ((BinanceAccountItem) newItem).getInfo().getId());
        } else {
            if ((oldItem instanceof TotalBalanceItem) && (newItem instanceof TotalBalanceItem)) {
                if (((TotalBalanceItem) oldItem).getItemType() == ((TotalBalanceItem) newItem).getItemType()) {
                    return true;
                }
            } else if ((oldItem instanceof BinanceBalanceItem) && (newItem instanceof BinanceBalanceItem)) {
                BinanceBalanceItem binanceBalanceItem = (BinanceBalanceItem) oldItem;
                return Intrinsics.areEqual(binanceBalanceItem.getBalanceInfo().getAsset(), binanceBalanceItem.getBalanceInfo().getAsset());
            } else if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
                if (((GlobalStateItem) oldItem).getItemType() == ((GlobalStateItem) newItem).getItemType()) {
                    return true;
                }
            } else if ((oldItem instanceof BannerItem) && (newItem instanceof BannerItem)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof HeaderItemWithNetworkSwitcher) && (newItem instanceof HeaderItemWithNetworkSwitcher)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof HeaderItem) && (newItem instanceof HeaderItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof CardButtonItem) && (newItem instanceof CardButtonItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof BinanceAccountItem) && (newItem instanceof BinanceAccountItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof TotalBalanceItem) && (newItem instanceof TotalBalanceItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof BinanceBalanceItem) && (newItem instanceof BinanceBalanceItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof BannerItem) && (newItem instanceof BannerItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof BinanceAccountItem) && (newItem instanceof BinanceAccountItem)) {
            BinanceAccountItem binanceAccountItem = (BinanceAccountItem) newItem;
            if (Intrinsics.areEqual(((BinanceAccountItem) oldItem).getInfo(), binanceAccountItem.getInfo())) {
                return null;
            }
            return binanceAccountItem.getInfo();
        } else if ((oldItem instanceof TotalBalanceItem) && (newItem instanceof TotalBalanceItem)) {
            TotalBalanceItem totalBalanceItem = (TotalBalanceItem) newItem;
            if (((TotalBalanceItem) oldItem).getBalance() == totalBalanceItem.getBalance()) {
                return null;
            }
            return Float.valueOf(totalBalanceItem.getBalance());
        } else if ((oldItem instanceof BinanceBalanceItem) && (newItem instanceof BinanceBalanceItem)) {
            BinanceBalanceItem binanceBalanceItem = (BinanceBalanceItem) newItem;
            if (Intrinsics.areEqual(((BinanceBalanceItem) oldItem).getBalanceInfo(), binanceBalanceItem.getBalanceInfo())) {
                return null;
            }
            return binanceBalanceItem.getBalanceInfo();
        } else if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            GlobalStateItem globalStateItem = (GlobalStateItem) newItem;
            if (Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), globalStateItem.getState())) {
                return null;
            }
            return globalStateItem;
        } else {
            return null;
        }
    }
}

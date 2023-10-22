package com.iMe.p030ui.wallet.home.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.model.wallet.home.BannerItem;
import com.iMe.model.wallet.home.CryptoAccountItem;
import com.iMe.model.wallet.home.CryptoAddTokensItem;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.model.wallet.home.SelectableHeaderItem;
import com.iMe.model.wallet.home.ServicesBasicItem;
import com.iMe.model.wallet.home.TotalBalanceItem;
import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BalanceDiffCallback.kt */
/* renamed from: com.iMe.ui.wallet.home.adapter.diff.BalanceDiffCallback */
/* loaded from: classes4.dex */
public final class BalanceDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof AccountItem) && (newItem instanceof AccountItem)) {
            AccountItem accountItem = (AccountItem) oldItem;
            AccountItem accountItem2 = (AccountItem) newItem;
            if (!Intrinsics.areEqual(accountItem.getBalance().getToken().getAddress(), accountItem2.getBalance().getToken().getAddress()) || !Intrinsics.areEqual(accountItem.getBalance().getToken().getNetworkId(), accountItem2.getBalance().getToken().getNetworkId())) {
                return false;
            }
        } else if ((oldItem instanceof HeaderItem) && (newItem instanceof HeaderItem)) {
            return Intrinsics.areEqual(((HeaderItem) oldItem).getTitle(), ((HeaderItem) newItem).getTitle());
        } else {
            if ((oldItem instanceof HeaderItemWithNetworkSwitcher) && (newItem instanceof HeaderItemWithNetworkSwitcher)) {
                return Intrinsics.areEqual(((HeaderItemWithNetworkSwitcher) oldItem).getTitle(), ((HeaderItemWithNetworkSwitcher) newItem).getTitle());
            }
            if ((oldItem instanceof SelectableHeaderItem) && (newItem instanceof SelectableHeaderItem)) {
                if (((SelectableHeaderItem) oldItem).getId() != ((SelectableHeaderItem) newItem).getId()) {
                    return false;
                }
            } else if ((oldItem instanceof TotalBalanceItem) && (newItem instanceof TotalBalanceItem)) {
                if (((TotalBalanceItem) oldItem).getItemType() != ((TotalBalanceItem) newItem).getItemType()) {
                    return false;
                }
            } else if ((oldItem instanceof ServicesBasicItem) && (newItem instanceof ServicesBasicItem)) {
                if (((ServicesBasicItem) oldItem).getCategory() != ((ServicesBasicItem) newItem).getCategory()) {
                    return false;
                }
            } else if ((oldItem instanceof CryptoAccountItem) && (newItem instanceof CryptoAccountItem)) {
                if (((CryptoAccountItem) oldItem).getUser().f1762id != ((CryptoAccountItem) newItem).getUser().f1762id) {
                    return false;
                }
            } else if ((!(oldItem instanceof CryptoAddTokensItem) || !(newItem instanceof CryptoAddTokensItem)) && ((!(oldItem instanceof BannerItem) || !(newItem instanceof BannerItem)) && (!(oldItem instanceof GlobalStateItem) || !(newItem instanceof GlobalStateItem)))) {
                if ((oldItem instanceof NftCollectionItem) && (newItem instanceof NftCollectionItem)) {
                    return Intrinsics.areEqual(((NftCollectionItem) oldItem).getCollection().getAddress(), ((NftCollectionItem) newItem).getCollection().getAddress());
                }
                if ((oldItem instanceof NftTokenItem) && (newItem instanceof NftTokenItem)) {
                    return Intrinsics.areEqual(((NftTokenItem) oldItem).getToken().getId(), ((NftTokenItem) newItem).getToken().getId());
                }
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof AccountItem) && (newItem instanceof AccountItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof HeaderItem) && (newItem instanceof HeaderItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof HeaderItemWithNetworkSwitcher) && (newItem instanceof HeaderItemWithNetworkSwitcher)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof SelectableHeaderItem) && (newItem instanceof SelectableHeaderItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof TotalBalanceItem) && (newItem instanceof TotalBalanceItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof ServicesBasicItem) && (newItem instanceof ServicesBasicItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof CryptoAddTokensItem) && (newItem instanceof CryptoAddTokensItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof BannerItem) && (newItem instanceof BannerItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof CryptoAccountItem) && (newItem instanceof CryptoAccountItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof NftCollectionItem) && (newItem instanceof NftCollectionItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof NftTokenItem) && (newItem instanceof NftTokenItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        CryptoAccountItem cryptoAccountItem;
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof AccountItem) && (newItem instanceof AccountItem)) {
            AccountItem accountItem = (AccountItem) newItem;
            if (Intrinsics.areEqual(((AccountItem) oldItem).getBalance(), accountItem.getBalance())) {
                return null;
            }
            return accountItem.getBalance();
        } else if ((oldItem instanceof HeaderItem) && (newItem instanceof HeaderItem)) {
            HeaderItem headerItem = (HeaderItem) newItem;
            if (Intrinsics.areEqual(((HeaderItem) oldItem).getTitle(), headerItem.getTitle())) {
                return null;
            }
            return headerItem.getTitle();
        } else if ((oldItem instanceof TotalBalanceItem) && (newItem instanceof TotalBalanceItem)) {
            TotalBalanceItem totalBalanceItem = (TotalBalanceItem) newItem;
            if (Intrinsics.areEqual(((TotalBalanceItem) oldItem).getBalanceText(), totalBalanceItem.getBalanceText())) {
                return null;
            }
            return totalBalanceItem.getBalanceText();
        } else {
            if ((oldItem instanceof HeaderItemWithNetworkSwitcher) && (newItem instanceof HeaderItemWithNetworkSwitcher)) {
                HeaderItemWithNetworkSwitcher headerItemWithNetworkSwitcher = (HeaderItemWithNetworkSwitcher) newItem;
                boolean areEqual = Intrinsics.areEqual(((HeaderItemWithNetworkSwitcher) oldItem).getNetworkItem(), headerItemWithNetworkSwitcher.getNetworkItem());
                cryptoAccountItem = headerItemWithNetworkSwitcher;
                if (areEqual) {
                    return null;
                }
            } else if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
                GlobalStateItem globalStateItem = (GlobalStateItem) newItem;
                boolean areEqual2 = Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), globalStateItem.getState());
                cryptoAccountItem = globalStateItem;
                if (areEqual2) {
                    return null;
                }
            } else if ((oldItem instanceof SelectableHeaderItem) && (newItem instanceof SelectableHeaderItem)) {
                int titleResId = ((SelectableHeaderItem) oldItem).getTitleResId();
                SelectableHeaderItem selectableHeaderItem = (SelectableHeaderItem) newItem;
                int titleResId2 = selectableHeaderItem.getTitleResId();
                cryptoAccountItem = selectableHeaderItem;
                if (titleResId == titleResId2) {
                    return null;
                }
            } else if (!(oldItem instanceof CryptoAccountItem) || !(newItem instanceof CryptoAccountItem)) {
                return null;
            } else {
                CryptoAccountItem cryptoAccountItem2 = (CryptoAccountItem) newItem;
                boolean areEqual3 = Intrinsics.areEqual(((CryptoAccountItem) oldItem).getAddress(), cryptoAccountItem2.getAddress());
                cryptoAccountItem = cryptoAccountItem2;
                if (areEqual3) {
                    return null;
                }
            }
            return cryptoAccountItem;
        }
    }
}

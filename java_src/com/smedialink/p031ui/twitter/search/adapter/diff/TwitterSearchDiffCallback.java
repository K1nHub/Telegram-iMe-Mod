package com.smedialink.p031ui.twitter.search.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.twitter.TwitterInviteItem;
import com.smedialink.model.twitter.TwitterUserItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterSearchDiffCallback.kt */
/* renamed from: com.smedialink.ui.twitter.search.adapter.diff.TwitterSearchDiffCallback */
/* loaded from: classes3.dex */
public final class TwitterSearchDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), ((GlobalStateItem) newItem).getState());
        }
        if ((oldItem instanceof TwitterUserItem) && (newItem instanceof TwitterUserItem)) {
            if (((TwitterUserItem) oldItem).getUser().f1640id == ((TwitterUserItem) newItem).getUser().f1640id) {
                return true;
            }
        } else if ((oldItem instanceof TwitterInviteItem) && (newItem instanceof TwitterInviteItem)) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof TwitterUserItem) && (newItem instanceof TwitterUserItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof TwitterInviteItem) && (newItem instanceof TwitterInviteItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        TwitterInviteItem twitterInviteItem;
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof TwitterUserItem) && (newItem instanceof TwitterUserItem)) {
            TwitterUserItem twitterUserItem = (TwitterUserItem) newItem;
            boolean areEqual = Intrinsics.areEqual(((TwitterUserItem) oldItem).getUser(), twitterUserItem.getUser());
            twitterInviteItem = twitterUserItem;
            if (areEqual) {
                return null;
            }
        } else if (!(oldItem instanceof TwitterInviteItem) || !(newItem instanceof TwitterInviteItem)) {
            return null;
        } else {
            TwitterInviteItem twitterInviteItem2 = (TwitterInviteItem) newItem;
            boolean areEqual2 = Intrinsics.areEqual(((TwitterInviteItem) oldItem).getNickname(), twitterInviteItem2.getNickname());
            twitterInviteItem = twitterInviteItem2;
            if (areEqual2) {
                return null;
            }
        }
        return twitterInviteItem;
    }
}

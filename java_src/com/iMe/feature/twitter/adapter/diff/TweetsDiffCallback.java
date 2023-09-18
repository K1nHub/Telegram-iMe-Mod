package com.iMe.feature.twitter.adapter.diff;

import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.twitter.TweetItem;
import com.iMe.model.twitter.TweetsDateItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TweetsDiffCallback.kt */
/* loaded from: classes4.dex */
public final class TweetsDiffCallback extends DiffUtil.ItemCallback<BaseNode> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(((GlobalStateItem) oldItem).getState(), ((GlobalStateItem) newItem).getState());
        }
        if ((oldItem instanceof TweetItem) && (newItem instanceof TweetItem)) {
            return ((TweetItem) oldItem).getId() == ((TweetItem) newItem).getId();
        } else if ((oldItem instanceof TweetsDateItem) && (newItem instanceof TweetsDateItem)) {
            return Intrinsics.areEqual(((TweetsDateItem) oldItem).getDate(), ((TweetsDateItem) newItem).getDate());
        } else {
            return false;
        }
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(BaseNode oldItem, BaseNode newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof GlobalStateItem) && (newItem instanceof GlobalStateItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof TweetItem) && (newItem instanceof TweetItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        if ((oldItem instanceof TweetsDateItem) && (newItem instanceof TweetsDateItem)) {
            return Intrinsics.areEqual(oldItem, newItem);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(BaseNode oldItem, BaseNode newItem) {
        TweetsDateItem tweetsDateItem;
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof TweetItem) && (newItem instanceof TweetItem)) {
            boolean isLiked = ((TweetItem) oldItem).isLiked();
            TweetItem tweetItem = (TweetItem) newItem;
            boolean isLiked2 = tweetItem.isLiked();
            tweetsDateItem = tweetItem;
            if (isLiked == isLiked2) {
                return null;
            }
        } else if (!(oldItem instanceof TweetsDateItem) || !(newItem instanceof TweetsDateItem)) {
            return null;
        } else {
            TweetsDateItem tweetsDateItem2 = (TweetsDateItem) newItem;
            boolean areEqual = Intrinsics.areEqual(((TweetsDateItem) oldItem).getDate(), tweetsDateItem2.getDate());
            tweetsDateItem = tweetsDateItem2;
            if (areEqual) {
                return null;
            }
        }
        return tweetsDateItem;
    }
}

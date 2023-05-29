package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.twitter.TweetsDateItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: TweetDatesProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetDatesProvider */
/* loaded from: classes.dex */
public final class TweetDatesProvider extends BaseNodeProvider<TweetsDateItem> {
    private final int itemViewType = IdFabric$ViewTypes.TWEETS_DATE;
    private final int layoutId = C3295R.layout.fork_recycle_item_date;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TweetsDateItem) obj, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, TweetsDateItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3295R.C3298id.text_date;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, Theme.key_chat_serviceText), i).setText(i, item.getDate()), i, TweetDatesProvider$convert$1.INSTANCE);
    }

    public void convert(BaseViewHolder helper, TweetsDateItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3295R.C3298id.text_date, item.getDate());
    }
}

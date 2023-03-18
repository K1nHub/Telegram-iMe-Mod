package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.twitter.TweetsDateItem;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: TweetDatesProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.TweetDatesProvider */
/* loaded from: classes3.dex */
public final class TweetDatesProvider extends BaseNodeProvider<TweetsDateItem> {
    private final int itemViewType = IdFabric$ViewTypes.TWEETS_DATE;
    private final int layoutId = C3286R.layout.fork_recycle_item_date;

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
        int i = C3286R.C3289id.text_date;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, "chat_serviceText"), i).setText(i, item.getDate()), i, TweetDatesProvider$convert$1.INSTANCE);
    }

    public void convert(BaseViewHolder helper, TweetsDateItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3286R.C3289id.text_date, item.getDate());
    }
}

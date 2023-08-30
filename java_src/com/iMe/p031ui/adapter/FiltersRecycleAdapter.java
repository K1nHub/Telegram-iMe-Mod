package com.iMe.p031ui.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.common.FilterItem;
import com.iMe.p031ui.topics.TopicView;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3558R;
/* compiled from: FiltersRecycleAdapter.kt */
/* renamed from: com.iMe.ui.adapter.FiltersRecycleAdapter */
/* loaded from: classes.dex */
public final class FiltersRecycleAdapter extends BaseQuickAdapter<FilterItem, BaseViewHolder> {
    public FiltersRecycleAdapter() {
        super(C3558R.layout.fork_recycle_item_filter, null, 2, null);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, FilterItem filterItem, List list) {
        convert2(baseViewHolder, filterItem, (List<? extends Object>) list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, final FilterItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(holder, C3558R.C3561id.view_filter, new Function1<TopicView, Unit>() { // from class: com.iMe.ui.adapter.FiltersRecycleAdapter$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TopicView topicView) {
                invoke2(topicView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TopicView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setHorizontalMargins(0, AndroidUtilities.m72dp(8));
                applyForView.setFilterItem(FilterItem.this);
            }
        });
    }

    /* renamed from: convert  reason: avoid collision after fix types in other method */
    protected void convert2(BaseViewHolder holder, final FilterItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(holder, C3558R.C3561id.view_filter, new Function1<TopicView, Unit>() { // from class: com.iMe.ui.adapter.FiltersRecycleAdapter$convert$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TopicView topicView) {
                invoke2(topicView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TopicView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setActive(FilterItem.this.isSelected());
            }
        });
    }
}

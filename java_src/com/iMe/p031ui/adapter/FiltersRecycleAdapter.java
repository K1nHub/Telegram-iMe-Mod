package com.iMe.p031ui.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.common.FilterItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
/* compiled from: FiltersRecycleAdapter.kt */
/* renamed from: com.iMe.ui.adapter.FiltersRecycleAdapter */
/* loaded from: classes.dex */
public final class FiltersRecycleAdapter extends BaseQuickAdapter<FilterItem, BaseViewHolder> {
    public FiltersRecycleAdapter() {
        super(C3295R.layout.fork_recycle_item_filter, null, 2, null);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, FilterItem filterItem, List list) {
        convert2(baseViewHolder, filterItem, (List<? extends Object>) list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, FilterItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(holder, C3295R.C3298id.view_filter, new FiltersRecycleAdapter$convert$1(item));
    }

    /* renamed from: convert  reason: avoid collision after fix types in other method */
    protected void convert2(BaseViewHolder holder, FilterItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(holder, C3295R.C3298id.view_filter, new FiltersRecycleAdapter$convert$2(item));
    }
}

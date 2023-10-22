package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.cryptobox.SortingListHeaderItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: SortingListHeaderProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.SortingListHeaderProvider */
/* loaded from: classes.dex */
public final class SortingListHeaderProvider extends BaseNodeProvider<SortingListHeaderItem> {
    private final int itemViewType = IdFabric$ViewTypes.SORTING_LIST_HEADER;
    private final int layoutId = C3630R.layout.fork_recycle_item_sorting_list_header;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (SortingListHeaderItem) obj, (List<? extends Object>) list);
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
    public void convert(BaseViewHolder helper, SortingListHeaderItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, C3630R.C3633id.linear_root, Theme.key_windowBackgroundWhite);
        int i = C3630R.C3633id.text_header;
        BaseViewHolder mediumTypeface = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i, Theme.key_windowBackgroundWhiteBlueText), i);
        int i2 = C3630R.C3633id.image_order;
        BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(mediumTypeface, i2, Theme.key_windowBackgroundWhiteGrayIcon), i2).setText(i, item.getTitleText()).setVisible(i2, item.isSortingVisible());
    }

    public void convert(BaseViewHolder helper, SortingListHeaderItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setVisible(C3630R.C3633id.image_order, item.isSortingVisible());
    }
}

package com.iMe.p032ui.adapter.provider;

import androidx.appcompat.widget.ListPopupWindow;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.SelectableHeaderItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
/* compiled from: SelectableHeaderProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.SelectableHeaderProvider */
/* loaded from: classes.dex */
public final class SelectableHeaderProvider extends BaseNodeProvider<SelectableHeaderItem> {
    private final int itemViewType;
    private final int layoutId;
    private ListPopupWindow popupWindow;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (SelectableHeaderItem) obj, (List<? extends Object>) list);
    }

    public SelectableHeaderProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.SELECTABLE_HEADER;
        this.layoutId = C3316R.layout.fork_recycle_item_wallet_dashboard_header_with_icon;
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
    public void convert(BaseViewHolder helper, SelectableHeaderItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3316R.C3319id.text_wallet_header;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, "windowBackgroundWhiteGrayText2"), i).setText(i, this.resourceManager.getString(item.getTitleResId()));
        int i2 = C3316R.C3319id.header_info_icon;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedImageColor(text.setImageResource(i2, item.getIcon()), i2, "windowBackgroundWhiteGrayText2"), C3316R.C3319id.linear_root, new SelectableHeaderProvider$convert$1(this, item, helper));
    }

    public void convert(BaseViewHolder helper, SelectableHeaderItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3316R.C3319id.text_wallet_header, this.resourceManager.getString(item.getTitleResId()));
    }
}

package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: SectionProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.SectionProvider */
/* loaded from: classes3.dex */
public final class SectionProvider extends BaseNodeProvider<BlockchainManagementItem.Section> {
    private final int itemViewType = IdFabric$ViewTypes.SECTION_SPACE;
    private final int layoutId = C3632R.layout.fork_section_view;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, BlockchainManagementItem.Section item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, C3632R.C3635id.section, Theme.key_windowBackgroundGray);
    }
}

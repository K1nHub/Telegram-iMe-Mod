package com.smedialink.p031ui.wallet.transaction.details.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.model.wallet.ActionItem;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: WalletActionAdapter.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.details.adapter.WalletActionAdapter */
/* loaded from: classes3.dex */
public final class WalletActionAdapter extends BaseQuickAdapter<ActionItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletActionAdapter(ResourceManager resourceManager) {
        super(C3158R.layout.fork_recycle_item_wallet_action, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, ActionItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3158R.C3161id.linear_root;
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, "windowBackgroundWhite");
        int i2 = C3158R.C3161id.image_action;
        BaseViewHolder themedImageColor = BaseQuickAdapterExtKt.setThemedImageColor(themedBackgroundColor, i2, "dialogIcon");
        int i3 = C3158R.C3161id.text_action;
        BaseQuickAdapterExtKt.setThemedTextColor(themedImageColor, i3, "dialogTextBlack").setImageResource(i2, item.getIcon()).setText(i3, item.getTitle(this.resourceManager));
    }
}

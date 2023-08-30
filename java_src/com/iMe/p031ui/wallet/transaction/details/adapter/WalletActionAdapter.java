package com.iMe.p031ui.wallet.transaction.details.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.ActionItem;
import com.iMe.model.wallet.transaction.TransactionActionItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: WalletActionAdapter.kt */
/* renamed from: com.iMe.ui.wallet.transaction.details.adapter.WalletActionAdapter */
/* loaded from: classes4.dex */
public final class WalletActionAdapter extends BaseQuickAdapter<ActionItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletActionAdapter(ResourceManager resourceManager) {
        super(C3558R.layout.fork_recycle_item_wallet_action, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, ActionItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3558R.C3561id.linear_root;
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3558R.C3561id.text_action;
        BaseViewHolder text = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i2, Theme.key_dialogTextBlack).setText(i2, item.getTitle(this.resourceManager));
        int i3 = C3558R.C3561id.image_action;
        BaseViewHolder themedImageColor = BaseQuickAdapterExtKt.setThemedImageColor(text, i3, Theme.key_dialogIcon);
        if (item instanceof TransactionActionItem.OpenScan) {
            BaseQuickAdapterExtKt.loadImage(themedImageColor, i3, ((TransactionActionItem.OpenScan) item).getIconUrl(), null, false);
        } else {
            themedImageColor.setImageResource(i3, item.getIcon());
        }
    }
}

package com.iMe.p031ui.wallet.crypto.settings.blockchains.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: BlockchainsWalletsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter */
/* loaded from: classes4.dex */
public final class BlockchainsWalletsRecycleAdapter extends BaseQuickAdapter<BlockchainWalletItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainsWalletsRecycleAdapter(ResourceManager resourceManager) {
        super(C3558R.layout.fork_recycle_item_blockchain_wallet, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        addChildClickViewIds(C3558R.C3561id.image_info);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, BlockchainWalletItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(holder, C3558R.C3561id.constraint_root, false);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        int i2 = C3558R.C3561id.text_name;
        int i3 = C3558R.C3561id.text_address;
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, i, i2, i3), i2).setText(i2, this.resourceManager.getString(item.getBlockchainType().getTitleResId())).setText(i3, item.getAddress()).setImageResource(C3558R.C3561id.image_icon, item.getBlockchainType().getIconResId());
        int i4 = C3558R.C3561id.image_info;
        BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(imageResource, i4, Theme.key_actionBarActionModeDefaultIcon), i4), C3558R.C3561id.view_divider, Theme.key_divider);
    }
}

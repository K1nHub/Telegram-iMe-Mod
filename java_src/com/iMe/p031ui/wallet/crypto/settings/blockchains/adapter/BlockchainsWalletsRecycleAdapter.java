package com.iMe.p031ui.wallet.crypto.settings.blockchains.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: BlockchainsWalletsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter */
/* loaded from: classes3.dex */
public final class BlockchainsWalletsRecycleAdapter extends BaseQuickAdapter<BlockchainWalletItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainsWalletsRecycleAdapter(ResourceManager resourceManager) {
        super(C3290R.layout.fork_recycle_item_blockchain_wallet, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        addChildClickViewIds(C3290R.C3293id.image_info);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, BlockchainWalletItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(holder, C3290R.C3293id.constraint_root, false);
        int i = C3290R.C3293id.text_name;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, i, i2);
        int i3 = C3290R.C3293id.text_address;
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, i2), i).setText(i, this.resourceManager.getString(item.getBlockchainType().getTitleResId())).setText(i3, item.getAddress()).setImageResource(C3290R.C3293id.image_icon, item.getBlockchainType().getIconResId());
        int i4 = C3290R.C3293id.image_info;
        BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(imageResource, i4, Theme.key_actionBarActionModeDefaultIcon), i4), C3290R.C3293id.view_divider, Theme.key_divider);
    }
}

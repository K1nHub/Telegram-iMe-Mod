package com.iMe.p032ui.wallet.crypto.settings.blockchains.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
/* compiled from: BlockchainsWalletsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter */
/* loaded from: classes3.dex */
public final class BlockchainsWalletsRecycleAdapter extends BaseQuickAdapter<BlockchainWalletItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainsWalletsRecycleAdapter(ResourceManager resourceManager) {
        super(C3316R.layout.fork_recycle_item_blockchain_wallet, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        addChildClickViewIds(C3316R.C3319id.image_info);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, BlockchainWalletItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(holder, C3316R.C3319id.constraint_root, false);
        int i = C3316R.C3319id.text_name;
        int i2 = C3316R.C3319id.text_address;
        BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setThemedImageColor(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, "windowBackgroundWhiteBlackText", i, i2), i).setText(i, this.resourceManager.getString(item.getBlockchainType().getTitleResId())).setText(i2, item.getAddress()).setImageResource(C3316R.C3319id.image_icon, item.getBlockchainType().getIconResId()), C3316R.C3319id.image_info, "actionBarActionModeDefaultIcon"), C3316R.C3319id.view_divider, "divider");
    }
}

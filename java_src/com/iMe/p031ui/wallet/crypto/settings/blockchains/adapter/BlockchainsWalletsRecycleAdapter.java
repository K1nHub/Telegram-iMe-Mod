package com.iMe.p031ui.wallet.crypto.settings.blockchains.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
/* compiled from: BlockchainsWalletsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter */
/* loaded from: classes3.dex */
public final class BlockchainsWalletsRecycleAdapter extends BaseQuickAdapter<BlockchainWalletItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainsWalletsRecycleAdapter(ResourceManager resourceManager) {
        super(C3242R.layout.fork_recycle_item_blockchain_wallet, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        addChildClickViewIds(C3242R.C3245id.image_info);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, BlockchainWalletItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(holder, C3242R.C3245id.constraint_root, false);
        int i = C3242R.C3245id.text_name;
        int i2 = C3242R.C3245id.text_address;
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, "windowBackgroundWhiteBlackText", i, i2), i).setText(i, this.resourceManager.getString(item.getBlockchainType().getTitleResId())).setText(i2, item.getAddress()).setImageResource(C3242R.C3245id.image_icon, item.getBlockchainType().getIconResId());
        int i3 = C3242R.C3245id.image_info;
        BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(imageResource, i3, "actionBarActionModeDefaultIcon"), i3), C3242R.C3245id.view_divider, "divider");
    }
}

package com.iMe.p030ui.wallet.crypto.settings.blockchains.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.p030ui.adapter.provider.BlockchainManagementActionButtonProvider;
import com.iMe.p030ui.adapter.provider.BlockchainManagementWalletProvider;
import com.iMe.p030ui.adapter.provider.SectionProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
/* compiled from: BlockchainsWalletsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter */
/* loaded from: classes3.dex */
public final class BlockchainsWalletsRecycleAdapter extends BaseNodeAdapter<BaseNode> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainsWalletsRecycleAdapter(BlockchainManagementWalletProvider blockchainManagementWalletProvider, BlockchainManagementActionButtonProvider blockchainManagementActionButtonProvider, SectionProvider sectionProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(blockchainManagementWalletProvider, "blockchainManagementWalletProvider");
        Intrinsics.checkNotNullParameter(blockchainManagementActionButtonProvider, "blockchainManagementActionButtonProvider");
        Intrinsics.checkNotNullParameter(sectionProvider, "sectionProvider");
        addChildClickViewIds(C3634R.C3637id.image_info);
        addItemProvider(BaseQuickAdapterExtKt.asItem(blockchainManagementWalletProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(blockchainManagementActionButtonProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(sectionProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof BlockchainManagementItem.Wallet ? IdFabric$ViewTypes.BLOCKCHAIN_WALLET : baseNode instanceof BlockchainManagementItem.Section ? IdFabric$ViewTypes.SECTION_SPACE : baseNode instanceof BlockchainManagementItem.ActionButton ? IdFabric$ViewTypes.BLOCKCHAIN_ACTION_BUTTON : IdFabric$ViewTypes.BLOCKCHAIN_WALLET;
    }
}

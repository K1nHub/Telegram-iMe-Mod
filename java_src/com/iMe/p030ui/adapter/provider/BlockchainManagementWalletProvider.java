package com.iMe.p030ui.adapter.provider;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: BlockchainManagementWalletProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BlockchainManagementWalletProvider */
/* loaded from: classes.dex */
public final class BlockchainManagementWalletProvider extends BaseNodeProvider<BlockchainManagementItem.Wallet> {
    private final Lazy itemElevation$delegate;
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public BlockchainManagementWalletProvider(ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.BLOCKCHAIN_WALLET;
        this.layoutId = C3632R.layout.fork_recycle_item_blockchain_wallet;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.BlockchainManagementWalletProvider$itemElevation$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(BlockchainManagementWalletProvider.this.getContext().getResources().getDimension(C3632R.dimen.wallet_card_elevation));
            }
        });
        this.itemElevation$delegate = lazy;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getItemElevation() {
        return ((Number) this.itemElevation$delegate.getValue()).floatValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, BlockchainManagementItem.Wallet item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3632R.C3635id.constraint_root;
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, i, Theme.key_windowBackgroundWhite), i, false);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        int i3 = C3632R.C3635id.text_name;
        int i4 = C3632R.C3635id.text_address;
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, i2, i3, i4), i3).setText(i3, this.resourceManager.getString(item.getBlockchainType().getTitleResId())).setText(i4, item.getAddress()).setImageResource(C3632R.C3635id.image_icon, item.getBlockchainType().getIconResId());
        int i5 = C3632R.C3635id.image_info;
        BaseViewHolder circleRippleBackground = BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(imageResource, i5, Theme.key_actionBarActionModeDefaultIcon), i5);
        int i6 = C3632R.C3635id.view_divider;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setVisibleElseGone(circleRippleBackground, i6, !item.isLastItem()), i6, Theme.key_divider), i, new Function1<ConstraintLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.BlockchainManagementWalletProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ConstraintLayout constraintLayout) {
                invoke2(constraintLayout);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ConstraintLayout applyForView) {
                float itemElevation;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                itemElevation = BlockchainManagementWalletProvider.this.getItemElevation();
                applyForView.setElevation(itemElevation);
            }
        });
    }
}

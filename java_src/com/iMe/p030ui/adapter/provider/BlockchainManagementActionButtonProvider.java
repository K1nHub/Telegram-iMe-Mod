package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextCell;
/* compiled from: BlockchainManagementActionButtonProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BlockchainManagementActionButtonProvider */
/* loaded from: classes3.dex */
public final class BlockchainManagementActionButtonProvider extends BaseNodeProvider<BlockchainManagementItem.ActionButton> {
    private final Lazy itemElevation$delegate;
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public final ResourceManager getResourceManager() {
        return this.resourceManager;
    }

    public BlockchainManagementActionButtonProvider(ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.BLOCKCHAIN_ACTION_BUTTON;
        this.layoutId = C3634R.layout.fork_recycle_item_blockchain_management_action_button;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.BlockchainManagementActionButtonProvider$itemElevation$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(BlockchainManagementActionButtonProvider.this.getContext().getResources().getDimension(C3634R.dimen.wallet_card_elevation));
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
    public void convert(final BaseViewHolder helper, final BlockchainManagementItem.ActionButton item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3634R.C3637id.view_text_cell;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setRippleForeground(BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, i, Theme.key_windowBackgroundWhite), i, false), i, new Function1<TextCell, Unit>() { // from class: com.iMe.ui.adapter.provider.BlockchainManagementActionButtonProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextCell textCell) {
                invoke2(textCell);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TextCell applyForView) {
                float itemElevation;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setTextTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                String text = BlockchainManagementItem.ActionButton.this.getText(this.getResourceManager());
                int iconResId = BlockchainManagementItem.ActionButton.this.getIconResId();
                BaseViewHolder baseViewHolder = helper;
                BaseNodeAdapter<BlockchainManagementItem.ActionButton> adapter = this.getAdapter();
                Intrinsics.checkNotNull(adapter);
                applyForView.setTextAndIcon(text, iconResId, !RecycleViewExtKt.isLastItem(baseViewHolder, adapter));
                applyForView.setColors(BlockchainManagementItem.ActionButton.this.getColorKey(), BlockchainManagementItem.ActionButton.this.getColorKey());
                itemElevation = this.getItemElevation();
                applyForView.setElevation(itemElevation);
            }
        });
    }
}

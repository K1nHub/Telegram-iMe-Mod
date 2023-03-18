package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.nft.NftCollectionItem;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: NftCollectionProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.NftCollectionProvider */
/* loaded from: classes3.dex */
public final class NftCollectionProvider extends BaseNodeProvider<NftCollectionItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (NftCollectionItem) obj, (List<? extends Object>) list);
    }

    public NftCollectionProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.NFT_COLLECTION;
        this.layoutId = C3286R.layout.fork_recycle_item_nft_collection;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, NftCollectionItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3286R.C3289id.card_nft_collection;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, "windowBackgroundWhite");
        int i2 = C3286R.C3289id.text_collection_name;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, "chats_actionBackground");
        int i3 = C3286R.C3289id.text_collection_size;
        BaseViewHolder mediumTypeface = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, "chat_messagePanelText"), i3);
        int i4 = C3286R.C3289id.image_arrow;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setRotate(BaseQuickAdapterExtKt.setAlpha(BaseQuickAdapterExtKt.setThemedImageColor(mediumTypeface, i4, "windowBackgroundWhiteGrayText2"), i4, 0.5f), i4, item.isExpanded() ? BitmapDescriptorFactory.HUE_RED : 270.0f).setText(i3, this.resourceManager.getString(C3286R.string.nft_collection_size, Integer.valueOf(item.getTokens().size()))).setText(i2, item.getCollection().getTitle()), C3286R.C3289id.image_collection_image, new NftCollectionProvider$convert$1(this, item));
    }

    public void convert(BaseViewHolder helper, NftCollectionItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.setRotate(helper, C3286R.C3289id.image_arrow, item.isExpanded() ? BitmapDescriptorFactory.HUE_RED : 270.0f);
    }
}

package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3419R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BackupImageView;
/* compiled from: NftCollectionProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.NftCollectionProvider */
/* loaded from: classes.dex */
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
        this.layoutId = C3419R.layout.fork_recycle_item_nft_collection;
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
    public void convert(BaseViewHolder helper, final NftCollectionItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3419R.C3422id.card_nft_collection;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3419R.C3422id.text_collection_name;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, Theme.key_chats_actionBackground);
        int i3 = C3419R.C3422id.text_collection_size;
        BaseViewHolder mediumTypeface = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_chat_messagePanelText), i3);
        int i4 = C3419R.C3422id.image_arrow;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setRotate(BaseQuickAdapterExtKt.setAlpha(BaseQuickAdapterExtKt.setThemedImageColor(mediumTypeface, i4, Theme.key_windowBackgroundWhiteGrayText2), i4, 0.5f), i4, item.isExpanded() ? BitmapDescriptorFactory.HUE_RED : 270.0f).setText(i3, this.resourceManager.getString(C3419R.string.nft_collection_size, Integer.valueOf(item.getTokens().size()))).setText(i2, item.getCollection().getTitle()), C3419R.C3422id.image_collection_image, new Function1<BackupImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.NftCollectionProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BackupImageView backupImageView) {
                invoke2(backupImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(BackupImageView applyForView) {
                ResourceManager resourceManager;
                NftToken token;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setAspectFit(true);
                applyForView.setLayerNum(1);
                resourceManager = NftCollectionProvider.this.resourceManager;
                applyForView.setRoundRadius((int) resourceManager.getDimens(C3419R.dimen.telegram_avatar_size_medium));
                NftTokenItem nftTokenItem = (NftTokenItem) CollectionsKt.firstOrNull(item.getTokens());
                String image = (nftTokenItem == null || (token = nftTokenItem.getToken()) == null) ? null : token.getImage();
                if (image == null) {
                    image = "";
                }
                applyForView.setImage(image, "50_50", image, "50_50");
            }
        });
    }

    public void convert(BaseViewHolder helper, NftCollectionItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.setRotate(helper, C3419R.C3422id.image_arrow, item.isExpanded() ? BitmapDescriptorFactory.HUE_RED : 270.0f);
    }
}

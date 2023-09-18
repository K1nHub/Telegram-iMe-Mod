package com.iMe.p031ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BackupImageView;
/* compiled from: NftCollectionProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.NftCollectionProvider */
/* loaded from: classes.dex */
public final class NftCollectionProvider extends BaseNodeProvider<NftCollectionItem> {
    private final int itemViewType;
    private final int layoutId;
    private final Lazy networkIconCornerSize$delegate;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (NftCollectionItem) obj, (List<? extends Object>) list);
    }

    public NftCollectionProvider(ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.NFT_COLLECTION;
        this.layoutId = C3473R.layout.fork_recycle_item_nft_collection;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.NftCollectionProvider$networkIconCornerSize$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                ResourceManager resourceManager2;
                resourceManager2 = NftCollectionProvider.this.resourceManager;
                return Float.valueOf(resourceManager2.getDimens(C3473R.dimen.icon_size_default) / 2);
            }
        });
        this.networkIconCornerSize$delegate = lazy;
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
    public final float getNetworkIconCornerSize() {
        return ((Number) this.networkIconCornerSize$delegate.getValue()).floatValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final NftCollectionItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3473R.C3476id.card_nft_collection;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3473R.C3476id.text_collection_name;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, Theme.key_chats_actionBackground);
        int i3 = C3473R.C3476id.text_collection_size;
        BaseViewHolder mediumTypeface = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_chat_messagePanelText), i3);
        int i4 = C3473R.C3476id.image_arrow;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setRotate(BaseQuickAdapterExtKt.setAlpha(BaseQuickAdapterExtKt.setThemedImageColor(mediumTypeface, i4, Theme.key_windowBackgroundWhiteGrayText2), i4, 0.5f), i4, item.isExpanded() ? BitmapDescriptorFactory.HUE_RED : 270.0f).setText(i3, this.resourceManager.getString(C3473R.string.nft_collection_size, Integer.valueOf(item.getTokens().size()))).setText(i2, item.getCollection().getTitle()), C3473R.C3476id.image_collection_image, new Function1<BackupImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.NftCollectionProvider$convert$1
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
                applyForView.setRoundRadius((int) resourceManager.getDimens(C3473R.dimen.telegram_avatar_size_medium));
                NftTokenItem nftTokenItem = (NftTokenItem) CollectionsKt.firstOrNull(item.getTokens());
                String image = (nftTokenItem == null || (token = nftTokenItem.getToken()) == null) ? null : token.getImage();
                if (image == null) {
                    image = "";
                }
                applyForView.setImage(image, "50_50", image, "50_50");
            }
        }), C3473R.C3476id.image_network_icon, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.NftCollectionProvider$convert$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppCompatImageView appCompatImageView) {
                invoke2(appCompatImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(AppCompatImageView applyForView) {
                float networkIconCornerSize;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (NftCollectionItem.this.isNetworkLogoVisible()) {
                    ViewExtKt.visible$default(applyForView, false, 1, null);
                    ImageViewExtKt.loadFrom$default(applyForView, NftCollectionItem.this.getNetworkItem().getLogoUrl(), null, false, 6, null);
                    MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
                    NftCollectionProvider nftCollectionProvider = this;
                    materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
                    networkIconCornerSize = nftCollectionProvider.getNetworkIconCornerSize();
                    materialShapeDrawable.setCornerSize(networkIconCornerSize);
                    applyForView.setBackground(materialShapeDrawable);
                    return;
                }
                ViewExtKt.gone$default(applyForView, false, 1, null);
            }
        });
    }

    public void convert(BaseViewHolder helper, final NftCollectionItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setRotate(helper, C3473R.C3476id.image_arrow, item.isExpanded() ? BitmapDescriptorFactory.HUE_RED : 270.0f), C3473R.C3476id.image_network_icon, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.NftCollectionProvider$convert$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppCompatImageView appCompatImageView) {
                invoke2(appCompatImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(AppCompatImageView applyForView) {
                float networkIconCornerSize;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (NftCollectionItem.this.isNetworkLogoVisible()) {
                    ViewExtKt.visible$default(applyForView, false, 1, null);
                    ImageViewExtKt.loadFrom$default(applyForView, NftCollectionItem.this.getNetworkItem().getLogoUrl(), null, false, 6, null);
                    MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
                    NftCollectionProvider nftCollectionProvider = this;
                    materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
                    networkIconCornerSize = nftCollectionProvider.getNetworkIconCornerSize();
                    materialShapeDrawable.setCornerSize(networkIconCornerSize);
                    applyForView.setBackground(materialShapeDrawable);
                    return;
                }
                ViewExtKt.gone$default(applyForView, false, 1, null);
            }
        });
    }
}

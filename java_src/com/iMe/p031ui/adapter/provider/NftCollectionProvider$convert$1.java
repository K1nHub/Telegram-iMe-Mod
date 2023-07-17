package com.iMe.p031ui.adapter.provider;

import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.Components.BackupImageView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NftCollectionProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.NftCollectionProvider$convert$1 */
/* loaded from: classes.dex */
public final class NftCollectionProvider$convert$1 extends Lambda implements Function1<BackupImageView, Unit> {
    final /* synthetic */ NftCollectionItem $item;
    final /* synthetic */ NftCollectionProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NftCollectionProvider$convert$1(NftCollectionProvider nftCollectionProvider, NftCollectionItem nftCollectionItem) {
        super(1);
        this.this$0 = nftCollectionProvider;
        this.$item = nftCollectionItem;
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
        resourceManager = this.this$0.resourceManager;
        applyForView.setRoundRadius((int) resourceManager.getDimens(C3417R.dimen.telegram_avatar_size_medium));
        NftTokenItem nftTokenItem = (NftTokenItem) CollectionsKt.firstOrNull(this.$item.getTokens());
        String image = (nftTokenItem == null || (token = nftTokenItem.getToken()) == null) ? null : token.getImage();
        if (image == null) {
            image = "";
        }
        applyForView.setImage(image, "50_50", image, "50_50");
    }
}

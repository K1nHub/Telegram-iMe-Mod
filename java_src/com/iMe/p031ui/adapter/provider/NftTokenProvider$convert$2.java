package com.iMe.p031ui.adapter.provider;

import com.iMe.model.wallet.home.nft.NftTokenItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.BackupImageView;
/* compiled from: NftTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.NftTokenProvider$convert$2 */
/* loaded from: classes3.dex */
final class NftTokenProvider$convert$2 extends Lambda implements Function1<BackupImageView, Unit> {
    final /* synthetic */ NftTokenItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NftTokenProvider$convert$2(NftTokenItem nftTokenItem) {
        super(1);
        this.$item = nftTokenItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(BackupImageView backupImageView) {
        invoke2(backupImageView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(BackupImageView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setAspectFit(true);
        applyForView.setLayerNum(1);
        applyForView.setImage(this.$item.getToken().getImage(), "50_50", this.$item.getToken().getImage(), "50_50");
    }
}

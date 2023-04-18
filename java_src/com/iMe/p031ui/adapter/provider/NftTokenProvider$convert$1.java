package com.iMe.p031ui.adapter.provider;

import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.p031ui.custom.nft.NftRootView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: NftTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.NftTokenProvider$convert$1 */
/* loaded from: classes3.dex */
final class NftTokenProvider$convert$1 extends Lambda implements Function1<NftRootView, Unit> {
    final /* synthetic */ NftTokenItem $item;
    final /* synthetic */ int $leftPadding;
    final /* synthetic */ int $rightPadding;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NftTokenProvider$convert$1(NftTokenItem nftTokenItem, int i, int i2) {
        super(1);
        this.$item = nftTokenItem;
        this.$leftPadding = i;
        this.$rightPadding = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NftRootView nftRootView) {
        invoke2(nftRootView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NftRootView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setNftToken(this.$item.getToken());
        applyForView.setPadding(this.$leftPadding, applyForView.getPaddingTop(), this.$rightPadding, applyForView.getPaddingBottom());
    }
}

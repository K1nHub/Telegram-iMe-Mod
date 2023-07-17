package com.iMe.p031ui.wallet.swap.process;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.iMe.storage.domain.model.wallet.token.Token;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2424x9faf7813 extends Lambda implements Function1<Result<? extends List<? extends CryptoTokenApproveMetadata>>, Unit> {
    final /* synthetic */ Token $forcedCheckToken$inlined;
    final /* synthetic */ boolean $isWithForceLoadingDialog$inlined;
    final /* synthetic */ boolean $isWithTimer$inlined;
    final /* synthetic */ String $selectedNetworkId$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2424x9faf7813(Token token, WalletSwapProcessPresenter walletSwapProcessPresenter, String str, boolean z, boolean z2) {
        super(1);
        this.$forcedCheckToken$inlined = token;
        this.this$0 = walletSwapProcessPresenter;
        this.$selectedNetworkId$inlined = str;
        this.$isWithTimer$inlined = z;
        this.$isWithForceLoadingDialog$inlined = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends CryptoTokenApproveMetadata>> result) {
        m1554invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1554invoke(Result<? extends List<? extends CryptoTokenApproveMetadata>> it) {
        HashMap hashMap;
        List mutableList;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        List mutableList2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends CryptoTokenApproveMetadata>> result = it;
        if (result instanceof Result.Success) {
            if (this.$forcedCheckToken$inlined != null) {
                hashMap2 = this.this$0.approveTokensMetadata;
                if (hashMap2.get(this.$selectedNetworkId$inlined) == null) {
                    hashMap4 = this.this$0.approveTokensMetadata;
                    String str = this.$selectedNetworkId$inlined;
                    mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) ((Collection) ((Result.Success) result).getData()));
                    hashMap4.put(str, mutableList2);
                } else {
                    hashMap3 = this.this$0.approveTokensMetadata;
                    List list = (List) hashMap3.get(this.$selectedNetworkId$inlined);
                    if (list != null) {
                        list.addAll((Collection) ((Result.Success) result).getData());
                    }
                }
            } else {
                hashMap = this.this$0.approveTokensMetadata;
                String str2 = this.$selectedNetworkId$inlined;
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ((Collection) ((Result.Success) result).getData()));
                hashMap.put(str2, mutableList);
            }
            this.this$0.checkSelectedTokenApprove();
            this.this$0.startUpdatingApproveMetadataIfNeed((List) ((Result.Success) result).getData(), this.$isWithTimer$inlined);
        } else if ((result instanceof Result.Loading) && this.$isWithForceLoadingDialog$inlined) {
            T viewState = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.CC.showLoadingDialog$default((BaseView) viewState, true, false, null, 4, null);
        }
    }
}

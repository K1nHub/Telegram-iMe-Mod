package com.iMe.p031ui.wallet.swap.process;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2340x5065f295 extends Lambda implements Function1<Result<? extends List<? extends TokenInfo>>, Unit> {
    final /* synthetic */ Callbacks$Callback $action$inlined;
    final /* synthetic */ NetworkType $selectedNetwork$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2340x5065f295(WalletSwapProcessPresenter walletSwapProcessPresenter, NetworkType networkType, Callbacks$Callback callbacks$Callback) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$selectedNetwork$inlined = networkType;
        this.$action$inlined = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TokenInfo>> result) {
        m1515invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1515invoke(Result<? extends List<? extends TokenInfo>> it) {
        ResourceManager resourceManager;
        HashMap hashMap;
        ResourceManager resourceManager2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends TokenInfo>> result = it;
        if (result instanceof Result.Success) {
            hashMap = this.this$0.selectableSupportedSwapTokens;
            NetworkType networkType = this.$selectedNetwork$inlined;
            resourceManager2 = this.this$0.resourceManager;
            hashMap.put(networkType, SelectableMappingKt.mapToSelectable((List) ((Result.Success) result).getData(), resourceManager2, this.$selectedNetwork$inlined));
            this.$action$inlined.invoke();
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

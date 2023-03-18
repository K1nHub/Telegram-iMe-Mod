package com.smedialink.p031ui.wallet.swap.process;

import com.smedialink.mapper.wallet.select.SelectableMappingKt;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.Callbacks$Callback;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2283x5065f295 extends Lambda implements Function1<Result<? extends List<? extends TokenInfo>>, Unit> {
    final /* synthetic */ Callbacks$Callback $action$inlined;
    final /* synthetic */ NetworkType $selectedNetwork$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2283x5065f295(WalletSwapProcessPresenter walletSwapProcessPresenter, NetworkType networkType, Callbacks$Callback callbacks$Callback) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$selectedNetwork$inlined = networkType;
        this.$action$inlined = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TokenInfo>> result) {
        m1420invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1420invoke(Result<? extends List<? extends TokenInfo>> it) {
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
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}

package com.iMe.p031ui.wallet.home.details;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2271xfd1058cc extends Lambda implements Function1<Result<? extends AccountLevelInformation>, Unit> {
    final /* synthetic */ Callbacks$Callback1 $endAction$inlined;
    final /* synthetic */ boolean $isWithLoading$inlined;
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2271xfd1058cc(WalletTokenDetailsPresenter walletTokenDetailsPresenter, Callbacks$Callback1 callbacks$Callback1, boolean z) {
        super(1);
        this.this$0 = walletTokenDetailsPresenter;
        this.$endAction$inlined = callbacks$Callback1;
        this.$isWithLoading$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AccountLevelInformation> result) {
        m1474invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1474invoke(Result<? extends AccountLevelInformation> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends AccountLevelInformation> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.accountLevelInformation = (AccountLevelInformation) success.getData();
            this.this$0.setupRankBadge();
            this.$endAction$inlined.invoke(success.getData());
        } else if ((result instanceof Result.Error) && this.$isWithLoading$inlined) {
            resourceManager = this.this$0.resourceManager;
            ((WalletTokenDetailsView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}

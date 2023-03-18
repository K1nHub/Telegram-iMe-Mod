package com.smedialink.manager.wallet.create;

import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.Callbacks$Callback;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.manager.wallet.create.WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1483xf0d1187c extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ Callbacks$Callback $endAction$inlined;
    final /* synthetic */ WalletCreateManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1483xf0d1187c(WalletCreateManager walletCreateManager, Callbacks$Callback callbacks$Callback) {
        super(1);
        this.this$0 = walletCreateManager;
        this.$endAction$inlined = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1159invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1159invoke(Result<? extends String> it) {
        WalletCreateManagerView viewState;
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            this.this$0.setLinkedCryptoWalletAddress((String) ((Result.Success) result).getData());
            this.$endAction$inlined.invoke();
        } else if (result instanceof Result.Error) {
            viewState = this.this$0.getViewState();
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            viewState.showToast(error.getMessage(resourceManager));
        }
    }
}

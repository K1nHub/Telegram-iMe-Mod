package com.iMe.p032ui.wallet.crypto.create.pin;

import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3 */
/* loaded from: classes3.dex */
public final class C2132xe4b01fa8 extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ CreateWalletPinPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2132xe4b01fa8(CreateWalletPinPresenter createWalletPinPresenter) {
        super(1);
        this.this$0 = createWalletPinPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1411invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1411invoke(Result<? extends String> it) {
        ResourceManager resourceManager;
        String str;
        String str2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            str = this.this$0.password;
            str2 = this.this$0.pin;
            ((CreateWalletPinView) this.this$0.getViewState()).goToBackUpTutorial(str, str2, (String) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            CreateWalletPinPresenter createWalletPinPresenter = this.this$0;
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            createWalletPinPresenter.onPinError(error.getMessage(resourceManager));
        }
    }
}

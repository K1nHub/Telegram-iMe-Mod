package com.smedialink.p031ui.wallet.crypto.create;

import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2061x1004bc19 extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ CreateWalletPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2061x1004bc19(CreateWalletPresenter createWalletPresenter, String str) {
        super(1);
        this.this$0 = createWalletPresenter;
        this.$password$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1325invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1325invoke(Result<? extends String> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            ((CreateWalletView) this.this$0.getViewState()).createNewWalletWithPassword(StringExtKt.splitBySpace((String) ((Result.Success) result).getData()), this.$password$inlined);
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((CreateWalletView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}

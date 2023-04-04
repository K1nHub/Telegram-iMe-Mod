package com.iMe.p032ui.chat;

import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.chat.ChatPresenter$acceptTelegramAuthUrlAndGetTokens$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1961x5cfaf286 extends Lambda implements Function1<Result<? extends SessionTokens>, Unit> {
    final /* synthetic */ ChatPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1961x5cfaf286(ChatPresenter chatPresenter) {
        super(1);
        this.this$0 = chatPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SessionTokens> result) {
        m1311invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1311invoke(Result<? extends SessionTokens> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends SessionTokens> result = it;
        if (result instanceof Result.Success) {
            ((ChatView) this.this$0.getViewState()).onSuccessGetAuthTokens((SessionTokens) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((ChatView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}

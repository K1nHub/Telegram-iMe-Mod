package com.smedialink.p031ui.chat;

import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.MessageObject;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.chat.ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1917x79efd582 extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ MessageObject $messageObject$inlined;
    final /* synthetic */ ChatPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1917x79efd582(ChatPresenter chatPresenter, MessageObject messageObject) {
        super(1);
        this.this$0 = chatPresenter;
        this.$messageObject$inlined = messageObject;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1236invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1236invoke(Result<? extends String> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            ((ChatView) this.this$0.getViewState()).onVoiceToTextCompleted(this.$messageObject$inlined, (String) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.UNAUTHORIZED) {
                ((ChatView) this.this$0.getViewState()).showAppUpdateDialog();
            } else {
                ErrorModel error2 = error.getError();
                resourceManager = this.this$0.resourceManager;
                ((ChatView) this.this$0.getViewState()).showToast(error2.getMessage(resourceManager));
            }
            ((ChatView) this.this$0.getViewState()).onVoiceToTextCompleted(this.$messageObject$inlined, null);
        }
    }
}

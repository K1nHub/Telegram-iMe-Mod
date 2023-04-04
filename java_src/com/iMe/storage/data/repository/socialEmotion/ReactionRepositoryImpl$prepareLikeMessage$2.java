package com.iMe.storage.data.repository.socialEmotion;

import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ReactionRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class ReactionRepositoryImpl$prepareLikeMessage$2 extends Lambda implements Function1<Throwable, Result<? extends ReactionMessageResult>> {
    final /* synthetic */ ReactionRepositoryImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReactionRepositoryImpl$prepareLikeMessage$2(ReactionRepositoryImpl reactionRepositoryImpl) {
        super(1);
        this.this$0 = reactionRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<ReactionMessageResult> invoke(Throwable it) {
        ApiErrorHandler apiErrorHandler;
        Intrinsics.checkNotNullParameter(it, "it");
        apiErrorHandler = this.this$0.errorHandler;
        return Result.Companion.error$default(Result.Companion, apiErrorHandler.handleError(it), null, 2, null);
    }
}

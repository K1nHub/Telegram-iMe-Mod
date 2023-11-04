package com.iMe.feature.socialMedias;

import android.net.Uri;
import com.iMe.feature.socialMedias.auth.SocialAuthResultMapperKt;
import com.iMe.model.twitter.SocialAuthResult;
import com.jakewharton.rxrelay2.PublishRelay;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: SocialRepositoryImpl.kt */
@DebugMetadata(m145c = "com.iMe.feature.socialMedias.SocialRepositoryImpl$getAuthResult$2", m144f = "SocialRepositoryImpl.kt", m143l = {}, m142m = "invokeSuspend")
/* loaded from: classes3.dex */
final class SocialRepositoryImpl$getAuthResult$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SocialAuthResult>, Object> {
    final /* synthetic */ String $overrideUrl;
    int label;
    final /* synthetic */ SocialRepositoryImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialRepositoryImpl$getAuthResult$2(String str, SocialRepositoryImpl socialRepositoryImpl, Continuation<? super SocialRepositoryImpl$getAuthResult$2> continuation) {
        super(2, continuation);
        this.$overrideUrl = str;
        this.this$0 = socialRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SocialRepositoryImpl$getAuthResult$2(this.$overrideUrl, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super SocialAuthResult> continuation) {
        return ((SocialRepositoryImpl$getAuthResult$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PublishRelay publishRelay;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Uri parse = Uri.parse(this.$overrideUrl);
            Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
            SocialAuthResult authResult = SocialAuthResultMapperKt.toAuthResult(parse);
            publishRelay = this.this$0.authResultRelay;
            publishRelay.accept(authResult);
            return authResult;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}

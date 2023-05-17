package com.iMe.feature.socialMedias.auth;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.orbitmvi.orbit.syntax.simple.SimpleContext;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt;
/* compiled from: AuthViewModel.kt */
@DebugMetadata(m84c = "com.iMe.feature.socialMedias.auth.AuthViewModel$onErrorReceived$1", m83f = "AuthViewModel.kt", m82l = {46}, m81m = "invokeSuspend")
/* loaded from: classes3.dex */
final class AuthViewModel$onErrorReceived$1 extends SuspendLambda implements Function2<SimpleSyntax<AuthState, AuthSideEffects>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthViewModel$onErrorReceived$1(Continuation<? super AuthViewModel$onErrorReceived$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AuthViewModel$onErrorReceived$1 authViewModel$onErrorReceived$1 = new AuthViewModel$onErrorReceived$1(continuation);
        authViewModel$onErrorReceived$1.L$0 = obj;
        return authViewModel$onErrorReceived$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<AuthState, AuthSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((AuthViewModel$onErrorReceived$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AuthViewModel.kt */
    /* renamed from: com.iMe.feature.socialMedias.auth.AuthViewModel$onErrorReceived$1$1 */
    /* loaded from: classes3.dex */
    public static final class C14541 extends Lambda implements Function1<SimpleContext<AuthState>, AuthState> {
        public static final C14541 INSTANCE = new C14541();

        C14541() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final AuthState invoke(SimpleContext<AuthState> reduce) {
            Intrinsics.checkNotNullParameter(reduce, "$this$reduce");
            return AuthState.copy$default(reduce.getState(), null, null, false, 3, null);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            C14541 c14541 = C14541.INSTANCE;
            this.label = 1;
            if (SimpleSyntaxExtensionsKt.reduce((SimpleSyntax) this.L$0, c14541, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}

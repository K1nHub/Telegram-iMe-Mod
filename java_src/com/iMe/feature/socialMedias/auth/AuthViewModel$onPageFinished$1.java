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
import org.orbitmvi.orbit.syntax.simple.SimpleContext;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AuthViewModel.kt */
@DebugMetadata(m102c = "com.iMe.feature.socialMedias.auth.AuthViewModel$onPageFinished$1", m101f = "AuthViewModel.kt", m100l = {44}, m99m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class AuthViewModel$onPageFinished$1 extends SuspendLambda implements Function2<SimpleSyntax<AuthState, AuthSideEffects>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthViewModel$onPageFinished$1(Continuation<? super AuthViewModel$onPageFinished$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AuthViewModel$onPageFinished$1 authViewModel$onPageFinished$1 = new AuthViewModel$onPageFinished$1(continuation);
        authViewModel$onPageFinished$1.L$0 = obj;
        return authViewModel$onPageFinished$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<AuthState, AuthSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((AuthViewModel$onPageFinished$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            C14781 c14781 = new Function1<SimpleContext<AuthState>, AuthState>() { // from class: com.iMe.feature.socialMedias.auth.AuthViewModel$onPageFinished$1.1
                @Override // kotlin.jvm.functions.Function1
                public final AuthState invoke(SimpleContext<AuthState> reduce) {
                    Intrinsics.checkNotNullParameter(reduce, "$this$reduce");
                    return AuthState.copy$default(reduce.getState(), null, null, false, 3, null);
                }
            };
            this.label = 1;
            if (SimpleSyntaxExtensionsKt.reduce((SimpleSyntax) this.L$0, c14781, this) == coroutine_suspended) {
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

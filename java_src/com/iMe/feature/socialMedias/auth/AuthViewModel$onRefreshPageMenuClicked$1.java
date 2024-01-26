package com.iMe.feature.socialMedias.auth;

import com.iMe.feature.socialMedias.auth.AuthSideEffects;
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
/* compiled from: AuthViewModel.kt */
@DebugMetadata(m148c = "com.iMe.feature.socialMedias.auth.AuthViewModel$onRefreshPageMenuClicked$1", m147f = "AuthViewModel.kt", m146l = {49, 50}, m145m = "invokeSuspend")
/* loaded from: classes3.dex */
final class AuthViewModel$onRefreshPageMenuClicked$1 extends SuspendLambda implements Function2<SimpleSyntax<AuthState, AuthSideEffects>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthViewModel$onRefreshPageMenuClicked$1(Continuation<? super AuthViewModel$onRefreshPageMenuClicked$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AuthViewModel$onRefreshPageMenuClicked$1 authViewModel$onRefreshPageMenuClicked$1 = new AuthViewModel$onRefreshPageMenuClicked$1(continuation);
        authViewModel$onRefreshPageMenuClicked$1.L$0 = obj;
        return authViewModel$onRefreshPageMenuClicked$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<AuthState, AuthSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((AuthViewModel$onRefreshPageMenuClicked$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        SimpleSyntax simpleSyntax;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            simpleSyntax = (SimpleSyntax) this.L$0;
            C13861 c13861 = new Function1<SimpleContext<AuthState>, AuthState>() { // from class: com.iMe.feature.socialMedias.auth.AuthViewModel$onRefreshPageMenuClicked$1.1
                @Override // kotlin.jvm.functions.Function1
                public final AuthState invoke(SimpleContext<AuthState> reduce) {
                    Intrinsics.checkNotNullParameter(reduce, "$this$reduce");
                    return AuthState.copy$default(reduce.getState(), null, null, true, 3, null);
                }
            };
            this.L$0 = simpleSyntax;
            this.label = 1;
            if (SimpleSyntaxExtensionsKt.reduce(simpleSyntax, c13861, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            simpleSyntax = (SimpleSyntax) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        AuthSideEffects.ReloadPage reloadPage = AuthSideEffects.ReloadPage.INSTANCE;
        this.L$0 = null;
        this.label = 2;
        if (SimpleSyntaxExtensionsKt.postSideEffect(simpleSyntax, reloadPage, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}

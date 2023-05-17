package com.iMe.feature.socialMedias.auth;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AuthViewModel.kt */
@DebugMetadata(m84c = "com.iMe.feature.socialMedias.auth.AuthViewModel$onOverrideUrl$1", m83f = "AuthViewModel.kt", m82l = {30, 34, 35, 36, 37, 38}, m81m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class AuthViewModel$onOverrideUrl$1 extends SuspendLambda implements Function2<SimpleSyntax<AuthState, AuthSideEffects>, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $overrideUrl;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AuthViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthViewModel$onOverrideUrl$1(AuthViewModel authViewModel, String str, Continuation<? super AuthViewModel$onOverrideUrl$1> continuation) {
        super(2, continuation);
        this.this$0 = authViewModel;
        this.$overrideUrl = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AuthViewModel$onOverrideUrl$1 authViewModel$onOverrideUrl$1 = new AuthViewModel$onOverrideUrl$1(this.this$0, this.$overrideUrl, continuation);
        authViewModel$onOverrideUrl$1.L$0 = obj;
        return authViewModel$onOverrideUrl$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<AuthState, AuthSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((AuthViewModel$onOverrideUrl$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0066  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            switch(r1) {
                case 0: goto L1e;
                case 1: goto L16;
                case 2: goto L11;
                case 3: goto L11;
                case 4: goto L11;
                case 5: goto L11;
                case 6: goto L11;
                default: goto L9;
            }
        L9:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L11:
            kotlin.ResultKt.throwOnFailure(r5)
            goto Lbf
        L16:
            java.lang.Object r1 = r4.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3a
        L1e:
            kotlin.ResultKt.throwOnFailure(r5)
            java.lang.Object r5 = r4.L$0
            r1 = r5
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            com.iMe.feature.socialMedias.auth.AuthViewModel r5 = r4.this$0
            com.iMe.feature.socialMedias.auth.AuthUseCase r5 = com.iMe.feature.socialMedias.auth.AuthViewModel.access$getAuthUseCase$p(r5)
            java.lang.String r2 = r4.$overrideUrl
            r4.L$0 = r1
            r3 = 1
            r4.label = r3
            java.lang.Object r5 = r5.processAuthResult(r2, r4)
            if (r5 != r0) goto L3a
            return r0
        L3a:
            com.iMe.model.twitter.SocialAuthResult r5 = (com.iMe.model.twitter.SocialAuthResult) r5
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "onOverrideUrl authResult: "
            r2.append(r3)
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]
            timber.log.Timber.m5i(r2, r3)
            boolean r2 = r5 instanceof com.iMe.model.twitter.SocialAuthResult.Success
            r3 = 0
            if (r2 == 0) goto L66
            com.iMe.feature.socialMedias.auth.AuthSideEffects$FinishAuth r5 = com.iMe.feature.socialMedias.auth.AuthSideEffects.FinishAuth.INSTANCE
            r4.L$0 = r3
            r2 = 2
            r4.label = r2
            java.lang.Object r5 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r1, r5, r4)
            if (r5 != r0) goto Lbf
            return r0
        L66:
            boolean r2 = r5 instanceof com.iMe.model.twitter.SocialAuthResult.Failure
            if (r2 == 0) goto L81
            com.iMe.feature.socialMedias.auth.AuthSideEffects$ShowError r2 = new com.iMe.feature.socialMedias.auth.AuthSideEffects$ShowError
            com.iMe.model.twitter.SocialAuthResult$Failure r5 = (com.iMe.model.twitter.SocialAuthResult.Failure) r5
            java.lang.String r5 = r5.getMessage()
            r2.<init>(r5)
            r4.L$0 = r3
            r5 = 3
            r4.label = r5
            java.lang.Object r5 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r1, r2, r4)
            if (r5 != r0) goto Lbf
            return r0
        L81:
            com.iMe.model.twitter.SocialAuthResult$Cancelled r2 = com.iMe.model.twitter.SocialAuthResult.Cancelled.INSTANCE
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r2)
            if (r2 == 0) goto L97
            com.iMe.feature.socialMedias.auth.AuthSideEffects$ShowAccessError r5 = com.iMe.feature.socialMedias.auth.AuthSideEffects.ShowAccessError.INSTANCE
            r4.L$0 = r3
            r2 = 4
            r4.label = r2
            java.lang.Object r5 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r1, r5, r4)
            if (r5 != r0) goto Lbf
            return r0
        L97:
            boolean r2 = r5 instanceof com.iMe.model.twitter.SocialAuthResult.Verification
            if (r2 == 0) goto La9
            com.iMe.feature.socialMedias.auth.AuthSideEffects$FinishAuth r5 = com.iMe.feature.socialMedias.auth.AuthSideEffects.FinishAuth.INSTANCE
            r4.L$0 = r3
            r2 = 5
            r4.label = r2
            java.lang.Object r5 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r1, r5, r4)
            if (r5 != r0) goto Lbf
            return r0
        La9:
            com.iMe.model.twitter.SocialAuthResult$Logout r2 = com.iMe.model.twitter.SocialAuthResult.Logout.INSTANCE
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r2)
            if (r5 == 0) goto Lbf
            com.iMe.feature.socialMedias.auth.AuthSideEffects$FinishAuth r5 = com.iMe.feature.socialMedias.auth.AuthSideEffects.FinishAuth.INSTANCE
            r4.L$0 = r3
            r2 = 6
            r4.label = r2
            java.lang.Object r5 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r1, r5, r4)
            if (r5 != r0) goto Lbf
            return r0
        Lbf:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.auth.AuthViewModel$onOverrideUrl$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

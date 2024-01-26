package com.iMe.feature.socialMedias.auth;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
/* compiled from: AuthViewModel.kt */
@DebugMetadata(m148c = "com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1", m147f = "AuthViewModel.kt", m146l = {54, 55, 56, 57}, m145m = "invokeSuspend")
/* loaded from: classes3.dex */
final class AuthViewModel$onMenuResetClicked$1 extends SuspendLambda implements Function2<SimpleSyntax<AuthState, AuthSideEffects>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthViewModel$onMenuResetClicked$1(Continuation<? super AuthViewModel$onMenuResetClicked$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AuthViewModel$onMenuResetClicked$1 authViewModel$onMenuResetClicked$1 = new AuthViewModel$onMenuResetClicked$1(continuation);
        authViewModel$onMenuResetClicked$1.L$0 = obj;
        return authViewModel$onMenuResetClicked$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<AuthState, AuthSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((AuthViewModel$onMenuResetClicked$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0066 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0074 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L38
            if (r1 == r5) goto L30
            if (r1 == r4) goto L28
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            kotlin.ResultKt.throwOnFailure(r7)
            goto L75
        L18:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L20:
            java.lang.Object r1 = r6.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L67
        L28:
            java.lang.Object r1 = r6.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5a
        L30:
            java.lang.Object r1 = r6.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            r1 = r7
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1$1 r7 = new kotlin.jvm.functions.Function1<org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.auth.AuthState>, com.iMe.feature.socialMedias.auth.AuthState>() { // from class: com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1.1
                static {
                    /*
                        com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1$1 r0 = new com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1$1) com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1.1.INSTANCE com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1.C13831.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1.C13831.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public final com.iMe.feature.socialMedias.auth.AuthState invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.auth.AuthState> r7) {
                    /*
                        r6 = this;
                        java.lang.String r0 = "$this$reduce"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                        java.lang.Object r7 = r7.getState()
                        r0 = r7
                        com.iMe.feature.socialMedias.auth.AuthState r0 = (com.iMe.feature.socialMedias.auth.AuthState) r0
                        r1 = 0
                        r2 = 0
                        r3 = 1
                        r4 = 3
                        r5 = 0
                        com.iMe.feature.socialMedias.auth.AuthState r7 = com.iMe.feature.socialMedias.auth.AuthState.copy$default(r0, r1, r2, r3, r4, r5)
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1.C13831.invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext):com.iMe.feature.socialMedias.auth.AuthState");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ com.iMe.feature.socialMedias.auth.AuthState invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.auth.AuthState> r1) {
                    /*
                        r0 = this;
                        org.orbitmvi.orbit.syntax.simple.SimpleContext r1 = (org.orbitmvi.orbit.syntax.simple.SimpleContext) r1
                        com.iMe.feature.socialMedias.auth.AuthState r1 = r0.invoke(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1.C13831.invoke(java.lang.Object):java.lang.Object");
                }
            }
            r6.L$0 = r1
            r6.label = r5
            java.lang.Object r7 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.reduce(r1, r7, r6)
            if (r7 != r0) goto L4d
            return r0
        L4d:
            com.iMe.feature.socialMedias.auth.AuthSideEffects$RemoveCookies r7 = com.iMe.feature.socialMedias.auth.AuthSideEffects.RemoveCookies.INSTANCE
            r6.L$0 = r1
            r6.label = r4
            java.lang.Object r7 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r1, r7, r6)
            if (r7 != r0) goto L5a
            return r0
        L5a:
            r4 = 1000(0x3e8, double:4.94E-321)
            r6.L$0 = r1
            r6.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r6)
            if (r7 != r0) goto L67
            return r0
        L67:
            com.iMe.feature.socialMedias.auth.AuthSideEffects$ReloadPage r7 = com.iMe.feature.socialMedias.auth.AuthSideEffects.ReloadPage.INSTANCE
            r3 = 0
            r6.L$0 = r3
            r6.label = r2
            java.lang.Object r7 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r1, r7, r6)
            if (r7 != r0) goto L75
            return r0
        L75:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.auth.AuthViewModel$onMenuResetClicked$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

package com.iMe.feature.socialMedias.auth;

import com.iMe.feature.socialMedias.SocialAuthDomain;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AuthViewModel.kt */
@DebugMetadata(m102c = "com.iMe.feature.socialMedias.auth.AuthViewModel$onWebViewCreated$1", m101f = "AuthViewModel.kt", m100l = {23, 24, 26}, m99m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class AuthViewModel$onWebViewCreated$1 extends SuspendLambda implements Function2<SimpleSyntax<AuthState, AuthSideEffects>, Continuation<? super Unit>, Object> {
    final /* synthetic */ SocialAuthDomain $socialAuthDomain;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AuthViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthViewModel$onWebViewCreated$1(SocialAuthDomain socialAuthDomain, AuthViewModel authViewModel, Continuation<? super AuthViewModel$onWebViewCreated$1> continuation) {
        super(2, continuation);
        this.$socialAuthDomain = socialAuthDomain;
        this.this$0 = authViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AuthViewModel$onWebViewCreated$1 authViewModel$onWebViewCreated$1 = new AuthViewModel$onWebViewCreated$1(this.$socialAuthDomain, this.this$0, continuation);
        authViewModel$onWebViewCreated$1.L$0 = obj;
        return authViewModel$onWebViewCreated$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<AuthState, AuthSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((AuthViewModel$onWebViewCreated$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0086 A[RETURN] */
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
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2d
            if (r1 == r4) goto L25
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            kotlin.ResultKt.throwOnFailure(r7)
            goto L87
        L15:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1d:
            java.lang.Object r1 = r6.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L60
        L25:
            java.lang.Object r1 = r6.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L2d:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r7 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r7
            com.iMe.feature.socialMedias.SocialAuthDomain r1 = r6.$socialAuthDomain
            com.iMe.feature.socialMedias.SocialType r1 = r1.getSocialType()
            java.lang.String r1 = r1.name()
            java.lang.String r1 = com.iMe.utils.extentions.common.StringExtKt.capitalizeOnlyFirstSymbol(r1)
            com.iMe.feature.socialMedias.auth.AuthViewModel$onWebViewCreated$1$1 r5 = new com.iMe.feature.socialMedias.auth.AuthViewModel$onWebViewCreated$1$1
            r5.<init>()
            r6.L$0 = r7
            r6.label = r4
            java.lang.Object r1 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.reduce(r7, r5, r6)
            if (r1 != r0) goto L52
            return r0
        L52:
            r1 = r7
        L53:
            r4 = 1000(0x3e8, double:4.94E-321)
            r6.L$0 = r1
            r6.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r6)
            if (r7 != r0) goto L60
            return r0
        L60:
            com.iMe.feature.socialMedias.auth.AuthViewModel r7 = r6.this$0
            com.iMe.feature.socialMedias.auth.AuthUseCase r7 = com.iMe.feature.socialMedias.auth.AuthViewModel.access$getAuthUseCase$p(r7)
            com.iMe.feature.socialMedias.SocialAuthDomain r3 = r6.$socialAuthDomain
            java.lang.String r3 = r3.getAuthToken()
            java.util.Map r7 = r7.makeAuthHeader(r3)
            com.iMe.feature.socialMedias.auth.AuthSideEffects$LoadUrl r3 = new com.iMe.feature.socialMedias.auth.AuthSideEffects$LoadUrl
            com.iMe.feature.socialMedias.SocialAuthDomain r4 = r6.$socialAuthDomain
            java.lang.String r4 = r4.getAuthUrl()
            r3.<init>(r4, r7)
            r7 = 0
            r6.L$0 = r7
            r6.label = r2
            java.lang.Object r7 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r1, r3, r6)
            if (r7 != r0) goto L87
            return r0
        L87:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.auth.AuthViewModel$onWebViewCreated$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

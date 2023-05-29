package com.iMe.feature.socialMedias.webScreen;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SocialWebViewModel.kt */
@DebugMetadata(m84c = "com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$processUrl$1", m83f = "SocialWebViewModel.kt", m82l = {55, 56, 57, 58}, m81m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class SocialWebViewModel$processUrl$1 extends SuspendLambda implements Function2<SimpleSyntax<SocialWebState, SocialSideEffects>, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $url;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialWebViewModel$processUrl$1(String str, Continuation<? super SocialWebViewModel$processUrl$1> continuation) {
        super(2, continuation);
        this.$url = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SocialWebViewModel$processUrl$1 socialWebViewModel$processUrl$1 = new SocialWebViewModel$processUrl$1(this.$url, continuation);
        socialWebViewModel$processUrl$1.L$0 = obj;
        return socialWebViewModel$processUrl$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<SocialWebState, SocialSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((SocialWebViewModel$processUrl$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005f A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L31
            if (r1 == r5) goto L29
            if (r1 == r4) goto L21
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            goto L1d
        L15:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1d:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7e
        L21:
            java.lang.Object r1 = r7.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L60
        L29:
            java.lang.Object r1 = r7.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L53
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r8 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r8
            java.lang.String r1 = r7.$url
            int r1 = r1.length()
            if (r1 != 0) goto L42
            r1 = r5
            goto L43
        L42:
            r1 = 0
        L43:
            if (r1 == 0) goto L6e
            com.iMe.feature.socialMedias.webScreen.SocialSideEffects$ShowError r1 = com.iMe.feature.socialMedias.webScreen.SocialSideEffects.ShowError.INSTANCE
            r7.L$0 = r8
            r7.label = r5
            java.lang.Object r1 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r8, r1, r7)
            if (r1 != r0) goto L52
            return r0
        L52:
            r1 = r8
        L53:
            r5 = 1500(0x5dc, double:7.41E-321)
            r7.L$0 = r1
            r7.label = r4
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r5, r7)
            if (r8 != r0) goto L60
            return r0
        L60:
            com.iMe.feature.socialMedias.webScreen.SocialSideEffects$FinishAuth r8 = com.iMe.feature.socialMedias.webScreen.SocialSideEffects.FinishAuth.INSTANCE
            r2 = 0
            r7.L$0 = r2
            r7.label = r3
            java.lang.Object r8 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r1, r8, r7)
            if (r8 != r0) goto L7e
            return r0
        L6e:
            com.iMe.feature.socialMedias.webScreen.SocialSideEffects$LoadUrl r1 = new com.iMe.feature.socialMedias.webScreen.SocialSideEffects$LoadUrl
            java.lang.String r3 = r7.$url
            r1.<init>(r3)
            r7.label = r2
            java.lang.Object r8 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.postSideEffect(r8, r1, r7)
            if (r8 != r0) goto L7e
            return r0
        L7e:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$processUrl$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

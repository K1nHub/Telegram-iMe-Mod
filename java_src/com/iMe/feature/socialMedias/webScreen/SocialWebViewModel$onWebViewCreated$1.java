package com.iMe.feature.socialMedias.webScreen;

import com.iMe.feature.socialMedias.SocialNetwork;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SocialWebViewModel.kt */
@DebugMetadata(m143c = "com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1", m142f = "SocialWebViewModel.kt", m141l = {29, 30, 32}, m140m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class SocialWebViewModel$onWebViewCreated$1 extends SuspendLambda implements Function2<SimpleSyntax<SocialWebState, SocialSideEffects>, Continuation<? super Unit>, Object> {
    final /* synthetic */ SocialNetwork $socialNetwork;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ SocialWebViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialWebViewModel$onWebViewCreated$1(SocialNetwork socialNetwork, SocialWebViewModel socialWebViewModel, Continuation<? super SocialWebViewModel$onWebViewCreated$1> continuation) {
        super(2, continuation);
        this.$socialNetwork = socialNetwork;
        this.this$0 = socialWebViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SocialWebViewModel$onWebViewCreated$1 socialWebViewModel$onWebViewCreated$1 = new SocialWebViewModel$onWebViewCreated$1(this.$socialNetwork, this.this$0, continuation);
        socialWebViewModel$onWebViewCreated$1.L$0 = obj;
        return socialWebViewModel$onWebViewCreated$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<SocialWebState, SocialSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((SocialWebViewModel$onWebViewCreated$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0081 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L36
            if (r1 == r4) goto L29
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            kotlin.ResultKt.throwOnFailure(r9)
            goto L82
        L15:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1d:
            java.lang.Object r1 = r8.L$1
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r3 = r8.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r3 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r3
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6d
        L29:
            java.lang.Object r1 = r8.L$1
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r4 = r8.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r4 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r4
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r4
            goto L5d
        L36:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r9 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r9
            com.iMe.feature.socialMedias.SocialNetwork r1 = r8.$socialNetwork
            java.lang.String r1 = r1.getSocialWebUrl()
            com.iMe.feature.socialMedias.SocialNetwork r5 = r8.$socialNetwork
            java.lang.String r5 = r5.getSocialName()
            com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1$1 r6 = new com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1$1
            com.iMe.feature.socialMedias.SocialNetwork r7 = r8.$socialNetwork
            r6.<init>()
            r8.L$0 = r9
            r8.L$1 = r1
            r8.label = r4
            java.lang.Object r4 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.reduce(r9, r6, r8)
            if (r4 != r0) goto L5d
            return r0
        L5d:
            r4 = 1500(0x5dc, double:7.41E-321)
            r8.L$0 = r9
            r8.L$1 = r1
            r8.label = r3
            java.lang.Object r3 = kotlinx.coroutines.DelayKt.delay(r4, r8)
            if (r3 != r0) goto L6c
            return r0
        L6c:
            r3 = r9
        L6d:
            com.iMe.feature.socialMedias.webScreen.SocialWebViewModel r9 = r8.this$0
            com.iMe.feature.socialMedias.webScreen.SocialWebViewModel.access$processUrl(r9, r1)
            com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1$2 r9 = new kotlin.jvm.functions.Function1<org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.webScreen.SocialWebState>, com.iMe.feature.socialMedias.webScreen.SocialWebState>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1.2
                static {
                    /*
                        com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1$2 r0 = new com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1$2) com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1.2.INSTANCE com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1.C13902.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1.C13902.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public final com.iMe.feature.socialMedias.webScreen.SocialWebState invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.webScreen.SocialWebState> r7) {
                    /*
                        r6 = this;
                        java.lang.String r0 = "$this$reduce"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                        java.lang.Object r7 = r7.getState()
                        r0 = r7
                        com.iMe.feature.socialMedias.webScreen.SocialWebState r0 = (com.iMe.feature.socialMedias.webScreen.SocialWebState) r0
                        r1 = 0
                        r2 = 0
                        r3 = 0
                        r4 = 3
                        r5 = 0
                        com.iMe.feature.socialMedias.webScreen.SocialWebState r7 = com.iMe.feature.socialMedias.webScreen.SocialWebState.copy$default(r0, r1, r2, r3, r4, r5)
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1.C13902.invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext):com.iMe.feature.socialMedias.webScreen.SocialWebState");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ com.iMe.feature.socialMedias.webScreen.SocialWebState invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.webScreen.SocialWebState> r1) {
                    /*
                        r0 = this;
                        org.orbitmvi.orbit.syntax.simple.SimpleContext r1 = (org.orbitmvi.orbit.syntax.simple.SimpleContext) r1
                        com.iMe.feature.socialMedias.webScreen.SocialWebState r1 = r0.invoke(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1.C13902.invoke(java.lang.Object):java.lang.Object");
                }
            }
            r1 = 0
            r8.L$0 = r1
            r8.L$1 = r1
            r8.label = r2
            java.lang.Object r9 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.reduce(r3, r9, r8)
            if (r9 != r0) goto L82
            return r0
        L82:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

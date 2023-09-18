package com.iMe.feature.socialMedias.webScreen;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SocialWebViewModel.kt */
@DebugMetadata(m102c = "com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1", m101f = "SocialWebViewModel.kt", m100l = {46, 47, 48}, m99m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class SocialWebViewModel$onResetClicked$1 extends SuspendLambda implements Function2<SimpleSyntax<SocialWebState, SocialSideEffects>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SocialWebViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialWebViewModel$onResetClicked$1(SocialWebViewModel socialWebViewModel, Continuation<? super SocialWebViewModel$onResetClicked$1> continuation) {
        super(2, continuation);
        this.this$0 = socialWebViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SocialWebViewModel$onResetClicked$1 socialWebViewModel$onResetClicked$1 = new SocialWebViewModel$onResetClicked$1(this.this$0, continuation);
        socialWebViewModel$onResetClicked$1.L$0 = obj;
        return socialWebViewModel$onResetClicked$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<SocialWebState, SocialSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((SocialWebViewModel$onResetClicked$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0077 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008d  */
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
            if (r1 == 0) goto L31
            if (r1 == r4) goto L29
            if (r1 == r3) goto L21
            if (r1 != r2) goto L19
            java.lang.Object r0 = r6.L$0
            com.iMe.storage.domain.model.Result r0 = (com.iMe.storage.domain.model.Result) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L79
        L19:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L21:
            java.lang.Object r1 = r6.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L69
        L29:
            java.lang.Object r1 = r6.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r1 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L46
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            org.orbitmvi.orbit.syntax.simple.SimpleSyntax r7 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntax) r7
            com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$1 r1 = new kotlin.jvm.functions.Function1<org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.webScreen.SocialWebState>, com.iMe.feature.socialMedias.webScreen.SocialWebState>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.1
                static {
                    /*
                        com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$1 r0 = new com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$1) com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.1.INSTANCE com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.C14851.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.C14851.<init>():void");
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
                        r3 = 1
                        r4 = 3
                        r5 = 0
                        com.iMe.feature.socialMedias.webScreen.SocialWebState r7 = com.iMe.feature.socialMedias.webScreen.SocialWebState.copy$default(r0, r1, r2, r3, r4, r5)
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.C14851.invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext):com.iMe.feature.socialMedias.webScreen.SocialWebState");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ com.iMe.feature.socialMedias.webScreen.SocialWebState invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.webScreen.SocialWebState> r1) {
                    /*
                        r0 = this;
                        org.orbitmvi.orbit.syntax.simple.SimpleContext r1 = (org.orbitmvi.orbit.syntax.simple.SimpleContext) r1
                        com.iMe.feature.socialMedias.webScreen.SocialWebState r1 = r0.invoke(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.C14851.invoke(java.lang.Object):java.lang.Object");
                }
            }
            r6.L$0 = r7
            r6.label = r4
            java.lang.Object r1 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.reduce(r7, r1, r6)
            if (r1 != r0) goto L45
            return r0
        L45:
            r1 = r7
        L46:
            com.iMe.feature.socialMedias.webScreen.SocialWebViewModel r7 = r6.this$0
            com.iMe.feature.socialMedias.SocialUseCase r7 = com.iMe.feature.socialMedias.webScreen.SocialWebViewModel.access$getSocialUseCase$p(r7)
            java.lang.Object r5 = r1.getState()
            com.iMe.feature.socialMedias.webScreen.SocialWebState r5 = (com.iMe.feature.socialMedias.webScreen.SocialWebState) r5
            com.iMe.feature.socialMedias.SocialNetwork r5 = r5.getSocialNetwork()
            io.reactivex.Observable r7 = r7.logout(r5)
            kotlinx.coroutines.flow.Flow r7 = kotlinx.coroutines.rx2.RxConvertKt.asFlow(r7)
            r6.L$0 = r1
            r6.label = r3
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r6)
            if (r7 != r0) goto L69
            return r0
        L69:
            com.iMe.storage.domain.model.Result r7 = (com.iMe.storage.domain.model.Result) r7
            com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$2 r3 = new kotlin.jvm.functions.Function1<org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.webScreen.SocialWebState>, com.iMe.feature.socialMedias.webScreen.SocialWebState>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.2
                static {
                    /*
                        com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$2 r0 = new com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$2) com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.2.INSTANCE com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.C14862.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.C14862.<init>():void");
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
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.C14862.invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext):com.iMe.feature.socialMedias.webScreen.SocialWebState");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ com.iMe.feature.socialMedias.webScreen.SocialWebState invoke(org.orbitmvi.orbit.syntax.simple.SimpleContext<com.iMe.feature.socialMedias.webScreen.SocialWebState> r1) {
                    /*
                        r0 = this;
                        org.orbitmvi.orbit.syntax.simple.SimpleContext r1 = (org.orbitmvi.orbit.syntax.simple.SimpleContext) r1
                        com.iMe.feature.socialMedias.webScreen.SocialWebState r1 = r0.invoke(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.C14862.invoke(java.lang.Object):java.lang.Object");
                }
            }
            r6.L$0 = r7
            r6.label = r2
            java.lang.Object r1 = org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.reduce(r1, r3, r6)
            if (r1 != r0) goto L78
            return r0
        L78:
            r0 = r7
        L79:
            java.lang.Object r7 = r0.getData()
            java.lang.Boolean r0 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r0)
            if (r7 == 0) goto L8d
            com.iMe.feature.socialMedias.webScreen.SocialWebViewModel r7 = r6.this$0
            com.iMe.feature.socialMedias.webScreen.SocialWebViewModel.access$resetCookiesAndFinish(r7)
            goto L95
        L8d:
            r7 = 0
            java.lang.Object[] r7 = new java.lang.Object[r7]
            java.lang.String r0 = "onResetClicked error"
            timber.log.Timber.m7e(r0, r7)
        L95:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

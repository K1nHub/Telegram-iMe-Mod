package com.iMe.feature.socialMedias.webScreen;

import com.iMe.feature.socialMedias.webScreen.SocialSideEffects;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt;
/* compiled from: SocialWebViewModel.kt */
@DebugMetadata(m102c = "com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onMenuClicked$1", m101f = "SocialWebViewModel.kt", m100l = {67}, m99m = "invokeSuspend")
/* loaded from: classes4.dex */
final class SocialWebViewModel$onMenuClicked$1 extends SuspendLambda implements Function2<SimpleSyntax<SocialWebState, SocialSideEffects>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SocialWebViewModel$onMenuClicked$1(Continuation<? super SocialWebViewModel$onMenuClicked$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SocialWebViewModel$onMenuClicked$1 socialWebViewModel$onMenuClicked$1 = new SocialWebViewModel$onMenuClicked$1(continuation);
        socialWebViewModel$onMenuClicked$1.L$0 = obj;
        return socialWebViewModel$onMenuClicked$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<SocialWebState, SocialSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((SocialWebViewModel$onMenuClicked$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SimpleSyntax simpleSyntax = (SimpleSyntax) this.L$0;
            SocialSideEffects.ShowMenu showMenu = new SocialSideEffects.ShowMenu(((SocialWebState) simpleSyntax.getState()).getSocialNetwork());
            this.label = 1;
            if (SimpleSyntaxExtensionsKt.postSideEffect(simpleSyntax, showMenu, this) == coroutine_suspended) {
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

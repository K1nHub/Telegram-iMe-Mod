package com.iMe.feature.socialMedias.webScreen;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
/* compiled from: SocialWebScreen.kt */
/* loaded from: classes4.dex */
/* synthetic */ class SocialWebScreen$onCreate$2 extends AdaptedFunctionReference implements Function2<SocialSideEffects, Continuation<? super Unit>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SocialWebScreen$onCreate$2(Object obj) {
        super(2, obj, SocialWebScreen.class, "sideEffects", "sideEffects(Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SocialSideEffects socialSideEffects, Continuation<? super Unit> continuation) {
        Object onCreate$sideEffects;
        onCreate$sideEffects = SocialWebScreen.onCreate$sideEffects((SocialWebScreen) this.receiver, socialSideEffects, continuation);
        return onCreate$sideEffects;
    }
}

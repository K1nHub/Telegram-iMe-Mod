package com.iMe.feature.socialMedias.webScreen;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
/* compiled from: SocialWebScreen.kt */
/* loaded from: classes3.dex */
/* synthetic */ class SocialWebScreen$onCreate$1 extends AdaptedFunctionReference implements Function2<SocialWebState, Continuation<? super Unit>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SocialWebScreen$onCreate$1(Object obj) {
        super(2, obj, SocialWebScreen.class, "render", "render(Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SocialWebState socialWebState, Continuation<? super Unit> continuation) {
        Object onCreate$render;
        onCreate$render = SocialWebScreen.onCreate$render((SocialWebScreen) this.receiver, socialWebState, continuation);
        return onCreate$render;
    }
}

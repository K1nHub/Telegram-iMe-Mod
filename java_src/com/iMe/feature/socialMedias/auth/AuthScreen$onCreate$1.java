package com.iMe.feature.socialMedias.auth;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
/* compiled from: AuthScreen.kt */
/* loaded from: classes4.dex */
/* synthetic */ class AuthScreen$onCreate$1 extends AdaptedFunctionReference implements Function2<AuthState, Continuation<? super Unit>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthScreen$onCreate$1(Object obj) {
        super(2, obj, AuthScreen.class, "render", "render(Lcom/iMe/feature/socialMedias/auth/AuthState;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(AuthState authState, Continuation<? super Unit> continuation) {
        Object onCreate$render;
        onCreate$render = AuthScreen.onCreate$render((AuthScreen) this.receiver, authState, continuation);
        return onCreate$render;
    }
}

package com.iMe.feature.socialMedias.auth;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
/* compiled from: AuthScreen.kt */
/* loaded from: classes4.dex */
/* synthetic */ class AuthScreen$onCreate$2 extends AdaptedFunctionReference implements Function2<AuthSideEffects, Continuation<? super Unit>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthScreen$onCreate$2(Object obj) {
        super(2, obj, AuthScreen.class, "sideEffects", "sideEffects(Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(AuthSideEffects authSideEffects, Continuation<? super Unit> continuation) {
        Object onCreate$sideEffects;
        onCreate$sideEffects = AuthScreen.onCreate$sideEffects((AuthScreen) this.receiver, authSideEffects, continuation);
        return onCreate$sideEffects;
    }
}

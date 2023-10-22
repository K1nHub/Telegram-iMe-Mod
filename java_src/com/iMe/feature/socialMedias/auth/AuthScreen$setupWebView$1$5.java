package com.iMe.feature.socialMedias.auth;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* compiled from: AuthScreen.kt */
/* loaded from: classes3.dex */
/* synthetic */ class AuthScreen$setupWebView$1$5 extends FunctionReferenceImpl implements Function0<Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthScreen$setupWebView$1$5(Object obj) {
        super(0, obj, AuthViewModel.class, "onErrorReceived", "onErrorReceived()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((AuthViewModel) this.receiver).onErrorReceived();
    }
}

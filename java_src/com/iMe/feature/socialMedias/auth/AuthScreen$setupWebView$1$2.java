package com.iMe.feature.socialMedias.auth;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AuthScreen.kt */
/* loaded from: classes4.dex */
/* synthetic */ class AuthScreen$setupWebView$1$2 extends FunctionReferenceImpl implements Function1<String, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthScreen$setupWebView$1$2(Object obj) {
        super(1, obj, AuthViewModel.class, "onOverrideUrl", "onOverrideUrl(Ljava/lang/String;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(String str) {
        invoke2(str);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(String p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((AuthViewModel) this.receiver).onOverrideUrl(p0);
    }
}

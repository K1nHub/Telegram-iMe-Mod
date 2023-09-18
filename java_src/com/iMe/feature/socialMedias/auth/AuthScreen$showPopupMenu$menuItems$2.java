package com.iMe.feature.socialMedias.auth;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* compiled from: AuthScreen.kt */
/* loaded from: classes4.dex */
/* synthetic */ class AuthScreen$showPopupMenu$menuItems$2 extends FunctionReferenceImpl implements Function0<Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthScreen$showPopupMenu$menuItems$2(Object obj) {
        super(0, obj, AuthViewModel.class, "onMenuResetClicked", "onMenuResetClicked()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((AuthViewModel) this.receiver).onMenuResetClicked();
    }
}

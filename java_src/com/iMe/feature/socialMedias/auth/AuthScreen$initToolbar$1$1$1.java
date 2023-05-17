package com.iMe.feature.socialMedias.auth;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AuthScreen.kt */
/* loaded from: classes3.dex */
public final class AuthScreen$initToolbar$1$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ AuthScreen this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthScreen$initToolbar$1$1$1(AuthScreen authScreen) {
        super(1);
        this.this$0 = authScreen;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.showCloseDialog();
    }
}

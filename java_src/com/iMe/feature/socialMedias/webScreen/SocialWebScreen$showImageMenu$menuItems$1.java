package com.iMe.feature.socialMedias.webScreen;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* compiled from: SocialWebScreen.kt */
/* loaded from: classes3.dex */
/* synthetic */ class SocialWebScreen$showImageMenu$menuItems$1 extends FunctionReferenceImpl implements Function0<Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SocialWebScreen$showImageMenu$menuItems$1(Object obj) {
        super(0, obj, SocialWebViewModel.class, "onMenuOpenInClicked", "onMenuOpenInClicked()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((SocialWebViewModel) this.receiver).onMenuOpenInClicked();
    }
}

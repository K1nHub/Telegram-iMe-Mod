package com.iMe.feature.socialMedias.webScreen;

import androidx.activity.OnBackPressedCallback;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SocialWebScreen.kt */
/* loaded from: classes3.dex */
final class SocialWebScreen$onViewCreated$1 extends Lambda implements Function1<OnBackPressedCallback, Unit> {
    final /* synthetic */ SocialWebScreen this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialWebScreen$onViewCreated$1(SocialWebScreen socialWebScreen) {
        super(1);
        this.this$0 = socialWebScreen;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(OnBackPressedCallback onBackPressedCallback) {
        invoke2(onBackPressedCallback);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(OnBackPressedCallback addCallback) {
        Intrinsics.checkNotNullParameter(addCallback, "$this$addCallback");
        this.this$0.showCloseDialog();
    }
}

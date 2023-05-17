package com.iMe.feature.socialMedias;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SocialDialog.kt */
/* loaded from: classes3.dex */
final class SocialDialog$addItemToContainer$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ SocialNetwork $item;
    final /* synthetic */ Function1<SocialNetwork, Unit> $onNetworkChosen;
    final /* synthetic */ SocialDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SocialDialog$addItemToContainer$1$1(Function1<? super SocialNetwork, Unit> function1, SocialNetwork socialNetwork, SocialDialog socialDialog) {
        super(1);
        this.$onNetworkChosen = function1;
        this.$item = socialNetwork;
        this.this$0 = socialDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$onNetworkChosen.invoke(this.$item);
        Unit unit = Unit.INSTANCE;
        this.this$0.dismiss();
    }
}

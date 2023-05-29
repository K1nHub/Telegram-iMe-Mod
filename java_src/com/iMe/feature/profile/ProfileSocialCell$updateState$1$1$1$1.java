package com.iMe.feature.profile;

import android.view.View;
import com.iMe.feature.socialMedias.SocialNetwork;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ProfileSocialCell.kt */
/* loaded from: classes3.dex */
final class ProfileSocialCell$updateState$1$1$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ SocialNetwork $network;
    final /* synthetic */ Function1<SocialNetwork, Unit> $onNetworkClick;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ProfileSocialCell$updateState$1$1$1$1(Function1<? super SocialNetwork, Unit> function1, SocialNetwork socialNetwork) {
        super(1);
        this.$onNetworkClick = function1;
        this.$network = socialNetwork;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$onNetworkClick.invoke(this.$network);
    }
}

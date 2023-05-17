package com.iMe.feature.profile;

import android.view.View;
import com.iMe.feature.socialMedias.SocialNetwork;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ProfileSocialCell.kt */
/* loaded from: classes3.dex */
final class ProfileSocialCell$updateState$1$3 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ List<SocialNetwork> $notActiveNetworks;
    final /* synthetic */ Function1<List<SocialNetwork>, Unit> $onAddButtonClick;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ProfileSocialCell$updateState$1$3(Function1<? super List<SocialNetwork>, Unit> function1, List<SocialNetwork> list) {
        super(1);
        this.$onAddButtonClick = function1;
        this.$notActiveNetworks = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$onAddButtonClick.invoke(this.$notActiveNetworks);
    }
}

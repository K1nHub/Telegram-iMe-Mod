package com.iMe.p031ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.shape.MaterialShapeDrawable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingProgrammeProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingProgrammeProvider$convert$1$2 */
/* loaded from: classes3.dex */
public final class StakingProgrammeProvider$convert$1$2 extends Lambda implements Function1<AppCompatImageView, Unit> {
    final /* synthetic */ StakingProgrammeProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingProgrammeProvider$convert$1$2(StakingProgrammeProvider stakingProgrammeProvider) {
        super(1);
        this.this$0 = stakingProgrammeProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AppCompatImageView appCompatImageView) {
        invoke2(appCompatImageView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(AppCompatImageView applyForView) {
        float networkIconCornerSize;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        StakingProgrammeProvider stakingProgrammeProvider = this.this$0;
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor("windowBackgroundWhite")));
        networkIconCornerSize = stakingProgrammeProvider.getNetworkIconCornerSize();
        materialShapeDrawable.setCornerSize(networkIconCornerSize);
        applyForView.setBackground(materialShapeDrawable);
    }
}

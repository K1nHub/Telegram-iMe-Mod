package com.iMe.p031ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingCalculatorProgrammeProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingCalculatorProgrammeProvider$convert$1$1 */
/* loaded from: classes.dex */
public final class StakingCalculatorProgrammeProvider$convert$1$1 extends Lambda implements Function1<AppCompatImageView, Unit> {
    final /* synthetic */ StakingProgrammeItem $this_with;
    final /* synthetic */ StakingCalculatorProgrammeProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingCalculatorProgrammeProvider$convert$1$1(StakingProgrammeItem stakingProgrammeItem, StakingCalculatorProgrammeProvider stakingCalculatorProgrammeProvider) {
        super(1);
        this.$this_with = stakingProgrammeItem;
        this.this$0 = stakingCalculatorProgrammeProvider;
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
        ImageViewExtKt.loadFrom$default(applyForView, NetworksHelper.getNetworkById(this.$this_with.getTokenBalance().getToken().getNetworkId()).getLogoUrl(), null, false, 6, null);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        StakingCalculatorProgrammeProvider stakingCalculatorProgrammeProvider = this.this$0;
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
        networkIconCornerSize = stakingCalculatorProgrammeProvider.getNetworkIconCornerSize();
        materialShapeDrawable.setCornerSize(networkIconCornerSize);
        applyForView.setBackground(materialShapeDrawable);
    }
}

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
/* compiled from: StakingOperationProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingOperationProvider$convert$2 */
/* loaded from: classes.dex */
public final class StakingOperationProvider$convert$2 extends Lambda implements Function1<AppCompatImageView, Unit> {
    final /* synthetic */ StakingOperationProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationProvider$convert$2(StakingOperationProvider stakingOperationProvider) {
        super(1);
        this.this$0 = stakingOperationProvider;
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
        StakingOperationProvider stakingOperationProvider = this.this$0;
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
        networkIconCornerSize = stakingOperationProvider.getNetworkIconCornerSize();
        materialShapeDrawable.setCornerSize(networkIconCornerSize);
        applyForView.setBackground(materialShapeDrawable);
    }
}

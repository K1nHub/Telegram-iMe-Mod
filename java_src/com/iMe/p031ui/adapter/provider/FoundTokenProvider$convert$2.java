package com.iMe.p031ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.shape.MaterialShapeDrawable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FoundTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.FoundTokenProvider$convert$2 */
/* loaded from: classes.dex */
public final class FoundTokenProvider$convert$2 extends Lambda implements Function1<AppCompatImageView, Unit> {
    final /* synthetic */ FoundTokenProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FoundTokenProvider$convert$2(FoundTokenProvider foundTokenProvider) {
        super(1);
        this.this$0 = foundTokenProvider;
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
        FoundTokenProvider foundTokenProvider = this.this$0;
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
        networkIconCornerSize = foundTokenProvider.getNetworkIconCornerSize();
        materialShapeDrawable.setCornerSize(networkIconCornerSize);
        applyForView.setBackground(materialShapeDrawable);
    }
}

package com.smedialink.utils.hints;

import android.content.Context;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.model.hint.HintModel;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.Components.HintView;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: HintFactory.kt */
/* loaded from: classes3.dex */
public final class HintFactory {
    private HintView hintView;

    public final void hideHint() {
        HintView hintView = this.hintView;
        if (hintView == null) {
            return;
        }
        hintView.hide();
    }

    public final void showHint(INavigationLayout parentLayout, View anchorView, HintModel model) {
        Intrinsics.checkNotNullParameter(parentLayout, "parentLayout");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        Intrinsics.checkNotNullParameter(model, "model");
        HintView hintView = this.hintView;
        if (hintView != null) {
            hintView.hide();
        }
        Context context = parentLayout.getView().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "parentLayout.view.context");
        HintView createHintView = createHintView(context, model.getType(), model.getTopArrow());
        createHintView.setText(model.getText());
        parentLayout.getView().addView(createHintView, LayoutHelper.createFrame(-2, -2, 51, 0, 0, 10, 0));
        createHintView.showForView(anchorView, true, model.getAutoHide());
        Unit unit = Unit.INSTANCE;
        this.hintView = createHintView;
    }

    private final HintView createHintView(Context context, int i, boolean z) {
        HintView hintView = new HintView(context, i, z);
        hintView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        ViewExtKt.invisible(hintView);
        hintView.setHideRunnable(new Runnable() { // from class: com.smedialink.utils.hints.HintFactory$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HintFactory.m1861createHintView$lambda2$lambda1(HintFactory.this);
            }
        });
        return hintView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createHintView$lambda-2$lambda-1  reason: not valid java name */
    public static final void m1861createHintView$lambda2$lambda1(HintFactory this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.hintView = null;
    }
}

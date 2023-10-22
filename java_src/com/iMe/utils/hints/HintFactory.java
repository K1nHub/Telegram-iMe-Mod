package com.iMe.utils.hints;

import android.content.Context;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.model.hint.HintModel;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p042ui.ActionBar.INavigationLayout;
import org.telegram.p042ui.Components.HintView;
import org.telegram.p042ui.Components.LayoutHelper;
/* compiled from: HintFactory.kt */
/* loaded from: classes4.dex */
public final class HintFactory {
    private HintView hintView;

    public final void hideHint() {
        HintView hintView = this.hintView;
        if (hintView != null) {
            hintView.hide();
        }
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
        if (!model.getAutoHide()) {
            createHintView.createCloseButton();
        }
        createHintView.showForView(anchorView, true);
        this.hintView = createHintView;
    }

    private final HintView createHintView(Context context, int i, boolean z) {
        HintView hintView = new HintView(context, i, z);
        hintView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        ViewExtKt.invisible$default(hintView, false, 1, null);
        hintView.setHideRunnable(new Runnable() { // from class: com.iMe.utils.hints.HintFactory$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HintFactory.createHintView$lambda$2$lambda$1(HintFactory.this);
            }
        });
        return hintView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createHintView$lambda$2$lambda$1(HintFactory this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.hintView = null;
    }
}

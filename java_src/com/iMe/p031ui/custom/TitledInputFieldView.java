package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.databinding.ForkContentTitledInputFieldBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LinkActionView;
/* compiled from: TitledInputFieldView.kt */
/* renamed from: com.iMe.ui.custom.TitledInputFieldView */
/* loaded from: classes4.dex */
public final class TitledInputFieldView extends FrameLayout {
    private final ForkContentTitledInputFieldBinding binding;
    private View customView;
    private Callbacks$Callback1<View> customViewColorsUpdateAction;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TitledInputFieldView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void customViewColorsUpdateAction$lambda$1(View view) {
    }

    public /* synthetic */ TitledInputFieldView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TitledInputFieldView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.customViewColorsUpdateAction = new Callbacks$Callback1() { // from class: com.iMe.ui.custom.TitledInputFieldView$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                TitledInputFieldView.customViewColorsUpdateAction$lambda$1((View) obj);
            }
        };
        ForkContentTitledInputFieldBinding inflate = ForkContentTitledInputFieldBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final LinkActionView getInputView() {
        LinkActionView linkActionView = this.binding.viewInput;
        Intrinsics.checkNotNullExpressionValue(linkActionView, "binding.viewInput");
        return linkActionView;
    }

    public final View getCustomView() {
        return this.customView;
    }

    public final void setCustomView(View view) {
        this.customView = view;
        FrameLayout frameLayout = this.binding.frameContainer;
        frameLayout.removeAllViews();
        frameLayout.addView(view);
    }

    public final Callbacks$Callback1<View> getCustomViewColorsUpdateAction() {
        return this.customViewColorsUpdateAction;
    }

    public final void setCustomViewColorsUpdateAction(Callbacks$Callback1<View> callbacks$Callback1) {
        Intrinsics.checkNotNullParameter(callbacks$Callback1, "<set-?>");
        this.customViewColorsUpdateAction = callbacks$Callback1;
    }

    public final void setTitle(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.binding.textTitle.setText(text);
    }

    public final void setupColors() {
        TextView setupColors$lambda$3$lambda$2 = this.binding.textTitle;
        setupColors$lambda$3$lambda$2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$3$lambda$2, "setupColors$lambda$3$lambda$2");
        ViewExtKt.withMediumTypeface(setupColors$lambda$3$lambda$2);
        getInputView().updateColors();
        View view = this.customView;
        if (view != null) {
            this.customViewColorsUpdateAction.invoke(view);
        }
    }

    private final void setupView() {
        setupColors();
        LinkActionView inputView = getInputView();
        int m72dp = AndroidUtilities.m72dp(-4);
        ViewExtKt.setMargins$default(inputView, m72dp, 0, m72dp, 0, 10, null);
        inputView.hideAvatarsContainer();
        inputView.setOptionsViewClickable(false);
        addView(this.binding.getRoot());
    }
}

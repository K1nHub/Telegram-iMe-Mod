package com.iMe.p030ui.custom;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.LoadingDrawable;
/* compiled from: ActionButton.kt */
/* renamed from: com.iMe.ui.custom.ActionButton */
/* loaded from: classes3.dex */
public class ActionButton extends AppCompatTextView {
    private final Lazy buttonHeight$delegate;
    private final Lazy cornerRadius$delegate;
    private Integer forcedButtonHeight;
    private final Lazy horizontalPadding$delegate;
    private boolean isLoading;
    private boolean isLoadingBeforeDetach;
    private final Lazy loadingDrawable$delegate;
    private String originalText;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ActionButton(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.ActionButton$buttonHeight$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(ActionButton.this.calculateButtonHeight());
            }
        });
        this.buttonHeight$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.ActionButton$cornerRadius$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(ActionButton.this.calculateCornerRadius());
            }
        });
        this.cornerRadius$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.ActionButton$horizontalPadding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(ActionButton.this.calculateHorizontalPadding());
            }
        });
        this.horizontalPadding$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<LoadingDrawable>() { // from class: com.iMe.ui.custom.ActionButton$loadingDrawable$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final LoadingDrawable invoke() {
                LoadingDrawable initLoadingDrawable;
                initLoadingDrawable = ActionButton.this.initLoadingDrawable();
                return initLoadingDrawable;
            }
        });
        this.loadingDrawable$delegate = lazy4;
        this.originalText = "";
        setupView();
    }

    private final int getButtonHeight() {
        return ((Number) this.buttonHeight$delegate.getValue()).intValue();
    }

    private final int getCornerRadius() {
        return ((Number) this.cornerRadius$delegate.getValue()).intValue();
    }

    private final int getHorizontalPadding() {
        return ((Number) this.horizontalPadding$delegate.getValue()).intValue();
    }

    private final LoadingDrawable getLoadingDrawable() {
        return (LoadingDrawable) this.loadingDrawable$delegate.getValue();
    }

    public final void applyColors() {
        setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), Theme.getColor(Theme.key_chats_actionBackground), Theme.getColor(Theme.key_chats_actionPressedBackground)));
        setTextColor(Theme.getColor(Theme.key_chats_actionIcon));
        ViewExtKt.withMediumTypeface(this);
        getLoadingDrawable().setColors(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), ViewExtKt.withAlpha(-1, 0.5f));
    }

    public final void setForcedCustomHeight(int i) {
        this.forcedButtonHeight = Integer.valueOf(AndroidUtilities.m102dp(i));
        invalidate();
    }

    public final void updateLoadingState(boolean z) {
        boolean z2 = this.isLoading;
        if (!z2 && z) {
            this.originalText = getText().toString();
        } else if (!z2 || z) {
            return;
        } else {
            setText(this.originalText);
            getLoadingDrawable().disappear();
        }
        this.isLoading = z;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int calculateCornerRadius() {
        return AndroidUtilities.m102dp(4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int calculateHorizontalPadding() {
        return AndroidUtilities.m102dp(34);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int calculateButtonHeight() {
        return AndroidUtilities.m102dp(40);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getPreferredButtonHeight() {
        Integer num = this.forcedButtonHeight;
        return num != null ? num.intValue() : getButtonHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getPreferredButtonHeight(), 1073741824));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.isLoading || canvas == null) {
            return;
        }
        canvas.save();
        LoadingDrawable loadingDrawable = getLoadingDrawable();
        loadingDrawable.setBounds(canvas.getClipBounds());
        loadingDrawable.draw(canvas);
        canvas.restore();
        invalidate();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (this.isLoading) {
            this.isLoadingBeforeDetach = true;
            updateLoadingState(false);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateLoadingState(this.isLoadingBeforeDetach);
    }

    private final void setupView() {
        applyColors();
        setGravity(17);
        setTextSize(14.0f);
        setPadding(getHorizontalPadding(), 0, getHorizontalPadding(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LoadingDrawable initLoadingDrawable() {
        LoadingDrawable loadingDrawable = new LoadingDrawable();
        loadingDrawable.setColors(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), ViewExtKt.withAlpha(-1, 0.5f));
        loadingDrawable.setAppearByGradient(true);
        loadingDrawable.setRadiiDp(4.0f);
        return loadingDrawable;
    }
}

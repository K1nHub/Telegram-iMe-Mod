package com.smedialink.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: ActionButton.kt */
/* renamed from: com.smedialink.ui.custom.ActionButton */
/* loaded from: classes3.dex */
public class ActionButton extends AppCompatTextView {
    private final Lazy buttonHeight$delegate;
    private final Lazy cornerRadius$delegate;
    private Integer forcedButtonHeight;
    private final Lazy horizontalPadding$delegate;

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
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new ActionButton$buttonHeight$2(this));
        this.buttonHeight$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new ActionButton$cornerRadius$2(this));
        this.cornerRadius$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new ActionButton$horizontalPadding$2(this));
        this.horizontalPadding$delegate = lazy3;
        setupView();
    }

    protected final int getButtonHeight() {
        return ((Number) this.buttonHeight$delegate.getValue()).intValue();
    }

    private final int getCornerRadius() {
        return ((Number) this.cornerRadius$delegate.getValue()).intValue();
    }

    private final int getHorizontalPadding() {
        return ((Number) this.horizontalPadding$delegate.getValue()).intValue();
    }

    public final void applyColors() {
        setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), Theme.getColor("chats_actionBackground"), Theme.getColor("chats_actionPressedBackground")));
        setTextColor(Theme.getColor("chats_actionIcon"));
        ViewExtKt.withMediumTypeface(this);
    }

    public final void setForcedCustomHeight(int i) {
        this.forcedButtonHeight = Integer.valueOf(AndroidUtilities.m50dp(i));
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int calculateCornerRadius() {
        return AndroidUtilities.m50dp(4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int calculateHorizontalPadding() {
        return AndroidUtilities.m50dp(34);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int calculateButtonHeight() {
        return AndroidUtilities.m50dp(42);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getPreferredButtonHeight() {
        Integer num = this.forcedButtonHeight;
        return num == null ? getButtonHeight() : num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getPreferredButtonHeight(), 1073741824));
    }

    private final void setupView() {
        applyColors();
        setGravity(17);
        setTextSize(14.0f);
        setPadding(getHorizontalPadding(), 0, getHorizontalPadding(), 0);
    }
}

package com.iMe.p030ui.custom;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: ProgressView.kt */
/* renamed from: com.iMe.ui.custom.ProgressView */
/* loaded from: classes3.dex */
public final class ProgressView extends View {
    private final Paint backgroundPaint;
    private final Paint dividerPaint;
    private final Lazy lineY$delegate;
    private float progress;
    private final Paint progressPaint;
    private final Lazy strokePadding$delegate;
    private final Lazy strokeWidth$delegate;
    private final Lazy viewHeight$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ProgressView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.ProgressView$viewHeight$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AndroidUtilities.m102dp(24));
            }
        });
        this.viewHeight$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.custom.ProgressView$strokeWidth$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(AndroidUtilities.m102dp(6));
            }
        });
        this.strokeWidth$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.custom.ProgressView$strokePadding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                float strokeWidth;
                strokeWidth = ProgressView.this.getStrokeWidth();
                return Float.valueOf(strokeWidth / 2);
            }
        });
        this.strokePadding$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.custom.ProgressView$lineY$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(AndroidUtilities.m102dp(15));
            }
        });
        this.lineY$delegate = lazy4;
        this.backgroundPaint = getBarPaint();
        this.progressPaint = getBarPaint();
        this.dividerPaint = new Paint();
    }

    private final int getViewHeight() {
        return ((Number) this.viewHeight$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getStrokeWidth() {
        return ((Number) this.strokeWidth$delegate.getValue()).floatValue();
    }

    private final float getStrokePadding() {
        return ((Number) this.strokePadding$delegate.getValue()).floatValue();
    }

    private final float getLineY() {
        return ((Number) this.lineY$delegate.getValue()).floatValue();
    }

    public final void updateProgress(float f) {
        this.progress = f;
        invalidate();
    }

    public final void setupColors() {
        Paint paint = this.backgroundPaint;
        int i = Theme.key_player_progress;
        paint.setColor(Theme.getColor(i));
        paint.setAlpha(46);
        Paint paint2 = this.progressPaint;
        paint2.setColor(Theme.getColor(i));
        paint2.setAlpha(255);
        this.dividerPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getViewHeight(), 1073741824));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        float measuredWidth = ((getMeasuredWidth() - (getStrokePadding() * 2)) * this.progress) + getStrokePadding();
        canvas.drawLine(getStrokePadding(), getLineY(), getMeasuredWidth() - getStrokePadding(), getLineY(), this.backgroundPaint);
        canvas.drawLine(getStrokePadding(), getLineY(), measuredWidth, getLineY(), this.progressPaint);
        if (this.progress < 1.0f) {
            canvas.drawRect(measuredWidth, getLineY() - getStrokePadding(), measuredWidth + getStrokePadding(), getLineY() + getStrokePadding(), this.dividerPaint);
        }
    }

    private final Paint getBarPaint() {
        Paint paint = new Paint(1);
        paint.setStrokeWidth(getStrokeWidth());
        paint.setStrokeCap(Paint.Cap.ROUND);
        return paint;
    }

    /* compiled from: ProgressView.kt */
    /* renamed from: com.iMe.ui.custom.ProgressView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}

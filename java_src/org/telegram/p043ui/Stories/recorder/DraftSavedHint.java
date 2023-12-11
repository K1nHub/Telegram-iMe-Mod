package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
/* renamed from: org.telegram.ui.Stories.recorder.DraftSavedHint */
/* loaded from: classes6.dex */
public class DraftSavedHint extends View {
    private final Paint backgroundPaint;
    private Runnable hideRunnable;
    private final StaticLayout layout;
    private final float layoutLeft;
    private final float layoutWidth;
    private final Path path;
    private final AnimatedFloat showT;
    private boolean shown;
    private final TextPaint textPaint;

    public DraftSavedHint(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        this.path = new Path();
        AnimatedFloat animatedFloat = new AnimatedFloat(this);
        this.showT = animatedFloat;
        paint.setColor(-869783512);
        paint.setPathEffect(new CornerPathEffect(AndroidUtilities.m104dp(6)));
        textPaint.setTextSize(AndroidUtilities.m104dp(14));
        textPaint.setColor(-1);
        StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(LocaleController.getString("StoryDraftSaved"), textPaint, AndroidUtilities.displaySize.x, TextUtils.TruncateAt.END), textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.layout = staticLayout;
        this.layoutWidth = staticLayout.getLineCount() > 0 ? staticLayout.getLineWidth(0) : 0.0f;
        this.layoutLeft = staticLayout.getLineCount() > 0 ? staticLayout.getLineLeft(0) : 0.0f;
        animatedFloat.set(BitmapDescriptorFactory.HUE_RED, true);
    }

    public void hide(boolean z) {
        show(false, z);
    }

    public void show(boolean z, boolean z2) {
        Runnable runnable;
        if (!z && (runnable = this.hideRunnable) != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideRunnable = null;
        }
        this.shown = z;
        if (!z2) {
            this.showT.set(z, true);
        }
        invalidate();
    }

    public void show() {
        this.showT.set(BitmapDescriptorFactory.HUE_RED, true);
        show(true, true);
        Runnable runnable = this.hideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.DraftSavedHint$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DraftSavedHint.this.lambda$show$0();
            }
        };
        this.hideRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 3500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$0() {
        hide(true);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f = this.showT.set(this.shown);
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        canvas.save();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, (this.shown ? CubicBezierInterpolator.EASE_OUT_BACK.getInterpolation(f) : 1.0f) * AndroidUtilities.m104dp(12));
        float interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(f);
        float measuredWidth = getMeasuredWidth();
        float measuredHeight = getMeasuredHeight();
        float m104dp = AndroidUtilities.m104dp(22) + this.layoutWidth;
        float min = (measuredWidth / 2.0f) - Math.min(AndroidUtilities.m104dp((int) TsExtractor.TS_STREAM_TYPE_E_AC3), 0.35f * measuredWidth);
        float max = Math.max(AndroidUtilities.m104dp(8), min - (m104dp / 2.0f));
        this.path.rewind();
        this.path.moveTo(max, BitmapDescriptorFactory.HUE_RED);
        float f2 = m104dp + max;
        this.path.lineTo(f2, BitmapDescriptorFactory.HUE_RED);
        this.path.lineTo(f2, measuredHeight - AndroidUtilities.m104dp(18));
        this.path.lineTo(AndroidUtilities.m104dp(7) + min, measuredHeight - AndroidUtilities.m104dp(18));
        this.path.lineTo(AndroidUtilities.m104dp(1) + min, measuredHeight - AndroidUtilities.m104dp(12));
        this.path.lineTo(min - AndroidUtilities.m104dp(1), measuredHeight - AndroidUtilities.m104dp(12));
        this.path.lineTo(min - AndroidUtilities.m104dp(7), measuredHeight - AndroidUtilities.m104dp(18));
        this.path.lineTo(max, measuredHeight - AndroidUtilities.m104dp(18));
        this.path.close();
        this.backgroundPaint.setAlpha((int) (204.0f * interpolation));
        canvas.drawPath(this.path, this.backgroundPaint);
        canvas.save();
        canvas.translate((max + AndroidUtilities.m104dp(11)) - this.layoutLeft, ((measuredHeight - AndroidUtilities.m104dp(18)) - this.layout.getHeight()) / 2.0f);
        this.textPaint.setAlpha((int) (interpolation * 255.0f));
        this.layout.draw(canvas);
        canvas.restore();
        canvas.restore();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m104dp(50));
    }
}

package org.telegram.p043ui.Components.voip;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.voip.VoIPService;
/* renamed from: org.telegram.ui.Components.voip.VoIPTimerView */
/* loaded from: classes6.dex */
public class VoIPTimerView extends View {
    Paint activePaint;
    private final Drawable callsDeclineDrawable;
    String currentTimeStr;
    Paint inactivePaint;
    private boolean isDrawCallIcon;
    RectF rectF;
    private int signalBarCount;
    TextPaint textPaint;
    StaticLayout timerLayout;
    Runnable updater;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (getVisibility() == 0) {
            updateTimer();
        }
    }

    public VoIPTimerView(Context context) {
        super(context);
        this.rectF = new RectF();
        this.activePaint = new Paint(1);
        this.inactivePaint = new Paint(1);
        this.textPaint = new TextPaint(1);
        this.signalBarCount = 4;
        this.isDrawCallIcon = false;
        this.updater = new Runnable() { // from class: org.telegram.ui.Components.voip.VoIPTimerView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                VoIPTimerView.this.lambda$new$0();
            }
        };
        this.textPaint.setTextSize(AndroidUtilities.m107dp(15));
        this.textPaint.setColor(-1);
        this.activePaint.setColor(ColorUtils.setAlphaComponent(-1, 229));
        this.inactivePaint.setColor(ColorUtils.setAlphaComponent(-1, 102));
        Drawable drawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.calls_decline);
        this.callsDeclineDrawable = drawable;
        drawable.setBounds(0, 0, AndroidUtilities.m107dp(24), AndroidUtilities.m107dp(24));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        StaticLayout staticLayout = this.timerLayout;
        if (staticLayout != null) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), staticLayout.getHeight());
        } else {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(15));
        }
    }

    public void updateTimer() {
        removeCallbacks(this.updater);
        VoIPService sharedInstance = VoIPService.getSharedInstance();
        if (sharedInstance == null) {
            return;
        }
        String formatLongDuration = AndroidUtilities.formatLongDuration((int) (sharedInstance.getCallDuration() / 1000));
        String str = this.currentTimeStr;
        if (str == null || !str.equals(formatLongDuration)) {
            this.currentTimeStr = formatLongDuration;
            if (this.timerLayout == null) {
                requestLayout();
            }
            String str2 = this.currentTimeStr;
            TextPaint textPaint = this.textPaint;
            this.timerLayout = new StaticLayout(str2, textPaint, (int) textPaint.measureText(str2), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        }
        postDelayed(this.updater, 300L);
        invalidate();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (getVisibility() != i) {
            if (i == 0) {
                this.currentTimeStr = "00:00";
                String str = this.currentTimeStr;
                TextPaint textPaint = this.textPaint;
                this.timerLayout = new StaticLayout(str, textPaint, (int) textPaint.measureText(str), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                updateTimer();
            } else {
                this.currentTimeStr = null;
                this.timerLayout = null;
            }
        }
        super.setVisibility(i);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        StaticLayout staticLayout = this.timerLayout;
        int i = 0;
        int width = staticLayout == null ? 0 : staticLayout.getWidth() + AndroidUtilities.m107dp(21);
        canvas.save();
        canvas.translate((getMeasuredWidth() - width) / 2.0f, BitmapDescriptorFactory.HUE_RED);
        canvas.save();
        if (this.isDrawCallIcon) {
            canvas.translate(-AndroidUtilities.m107dp(7), -AndroidUtilities.m107dp(3));
            this.callsDeclineDrawable.draw(canvas);
        } else {
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (getMeasuredHeight() - AndroidUtilities.m107dp(11)) / 2.0f);
            while (i < 4) {
                int i2 = i + 1;
                Paint paint = i2 > this.signalBarCount ? this.inactivePaint : this.activePaint;
                float f = i;
                this.rectF.set(AndroidUtilities.dpf2(4.16f) * f, AndroidUtilities.dpf2(2.75f) * (3 - i), (AndroidUtilities.dpf2(4.16f) * f) + AndroidUtilities.dpf2(2.75f), AndroidUtilities.m107dp(11));
                canvas.drawRoundRect(this.rectF, AndroidUtilities.dpf2(0.7f), AndroidUtilities.dpf2(0.7f), paint);
                i = i2;
            }
        }
        canvas.restore();
        if (staticLayout != null) {
            canvas.translate(AndroidUtilities.m107dp(21), BitmapDescriptorFactory.HUE_RED);
            staticLayout.draw(canvas);
        }
        canvas.restore();
    }

    public void setSignalBarCount(int i) {
        this.signalBarCount = i;
        invalidate();
    }

    public void setDrawCallIcon() {
        this.isDrawCallIcon = true;
        invalidate();
    }
}

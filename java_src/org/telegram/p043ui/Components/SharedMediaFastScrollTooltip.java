package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.SharedMediaFastScrollTooltip */
/* loaded from: classes6.dex */
public class SharedMediaFastScrollTooltip extends FrameLayout {
    public SharedMediaFastScrollTooltip(Context context) {
        super(context);
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString("SharedMediaFastScrollHint", C3417R.string.SharedMediaFastScrollHint));
        textView.setTextSize(1, 14.0f);
        textView.setMaxLines(3);
        textView.setTextColor(Theme.getColor(Theme.key_chat_gifSaveHintText));
        setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m54dp(6), Theme.getColor(Theme.key_chat_gifSaveHintBackground)));
        addView(textView, LayoutHelper.createFrame(-2, -2, 16, 46, 8, 8, 8));
        addView(new TooltipDrawableView(this, context), LayoutHelper.createFrame(29, 32, 0, 8, 8, 8, 8));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m54dp(300), View.MeasureSpec.getSize(i) - AndroidUtilities.m54dp(32)), Integer.MIN_VALUE), i2);
    }

    /* renamed from: org.telegram.ui.Components.SharedMediaFastScrollTooltip$TooltipDrawableView */
    /* loaded from: classes6.dex */
    private class TooltipDrawableView extends View {
        Paint fadePaint;
        Paint fadePaintBack;
        float fromProgress;
        Paint paint;
        Paint paint2;
        float progress;
        Random random;
        float toProgress;

        public TooltipDrawableView(SharedMediaFastScrollTooltip sharedMediaFastScrollTooltip, Context context) {
            super(context);
            this.random = new Random();
            this.paint = new Paint(1);
            this.paint2 = new Paint(1);
            this.progress = 1.0f;
            this.fromProgress = BitmapDescriptorFactory.HUE_RED;
            Paint paint = this.paint;
            int i = Theme.key_chat_gifSaveHintText;
            paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i), 76));
            this.paint2.setColor(Theme.getColor(i));
            this.fadePaint = new Paint();
            this.fadePaint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(4), (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            this.fadePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.fadePaintBack = new Paint();
            this.fadePaintBack.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(4), new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            this.fadePaintBack.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
            int measuredWidth = (getMeasuredWidth() / 2) - AndroidUtilities.m54dp(3);
            int m54dp = ((AndroidUtilities.m54dp(1) + measuredWidth) * 7) + AndroidUtilities.m54dp(1);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
            float f = this.progress;
            float interpolation = cubicBezierInterpolator.getInterpolation(f > 0.4f ? (f - 0.4f) / 0.6f : 0.0f);
            float f2 = (this.toProgress * interpolation) + (this.fromProgress * (1.0f - interpolation));
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (-(m54dp - (getMeasuredHeight() - AndroidUtilities.m54dp(4)))) * f2);
            int i = 0;
            for (int i2 = 7; i < i2; i2 = 7) {
                int m54dp2 = AndroidUtilities.m54dp(3) + ((AndroidUtilities.m54dp(1) + measuredWidth) * i);
                RectF rectF = AndroidUtilities.rectTmp;
                float f3 = m54dp2;
                float f4 = m54dp2 + measuredWidth;
                rectF.set(BitmapDescriptorFactory.HUE_RED, f3, measuredWidth, f4);
                canvas.drawRoundRect(rectF, AndroidUtilities.m54dp(2), AndroidUtilities.m54dp(2), this.paint);
                rectF.set(AndroidUtilities.m54dp(1) + measuredWidth, f3, AndroidUtilities.m54dp(1) + measuredWidth + measuredWidth, f4);
                canvas.drawRoundRect(rectF, AndroidUtilities.m54dp(2), AndroidUtilities.m54dp(2), this.paint);
                i++;
            }
            canvas.restore();
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m54dp(4), this.fadePaint);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - AndroidUtilities.m54dp(4));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m54dp(4), this.fadePaintBack);
            canvas.restore();
            float m54dp3 = AndroidUtilities.m54dp(3) + ((getMeasuredHeight() - AndroidUtilities.m54dp(21)) * f2);
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(getMeasuredWidth() - AndroidUtilities.m54dp(3), m54dp3, getMeasuredWidth(), AndroidUtilities.m54dp(15) + m54dp3);
            canvas.drawRoundRect(rectF2, AndroidUtilities.m55dp(1.5f), AndroidUtilities.m55dp(1.5f), this.paint2);
            float centerY = rectF2.centerY();
            float m55dp = measuredWidth + AndroidUtilities.m55dp(0.5f);
            rectF2.set(m55dp - AndroidUtilities.m54dp(8), centerY - AndroidUtilities.m54dp(3), m55dp + AndroidUtilities.m54dp(8), centerY + AndroidUtilities.m54dp(3));
            canvas.drawRoundRect(rectF2, AndroidUtilities.m54dp(3), AndroidUtilities.m54dp(3), this.paint2);
            float f5 = this.progress + 0.016f;
            this.progress = f5;
            if (f5 > 1.0f) {
                this.fromProgress = this.toProgress;
                float abs = Math.abs(this.random.nextInt() % 1001) / 1000.0f;
                this.toProgress = abs;
                if (abs > this.fromProgress) {
                    this.toProgress = abs + 0.3f;
                } else {
                    this.toProgress = abs - 0.3f;
                }
                this.toProgress = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, this.toProgress));
                this.progress = BitmapDescriptorFactory.HUE_RED;
            }
            invalidate();
        }
    }
}

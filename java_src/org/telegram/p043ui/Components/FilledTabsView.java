package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
/* renamed from: org.telegram.ui.Components.FilledTabsView */
/* loaded from: classes6.dex */
public class FilledTabsView extends View {
    private final Paint backgroundPaint;
    private RectF[] bounds;
    private int lastPressedIndex;
    private Utilities.Callback<Integer> onTabClick;
    private final Paint selectedPaint;
    private float selectedTabIndex;
    private Text[] tabs;

    public FilledTabsView(Context context) {
        super(context);
        this.backgroundPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.selectedPaint = paint;
        this.lastPressedIndex = -1;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT));
        paint.setColor(-1);
    }

    public void setTabs(CharSequence... charSequenceArr) {
        this.tabs = new Text[charSequenceArr.length];
        this.bounds = new RectF[charSequenceArr.length];
        for (int i = 0; i < charSequenceArr.length; i++) {
            this.tabs[i] = new Text(charSequenceArr[i], 14.0f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.bounds[i] = new RectF();
        }
        invalidate();
    }

    public void setSelected(float f) {
        if (Math.abs(f - this.selectedTabIndex) > 0.001f) {
            invalidate();
        }
        this.selectedTabIndex = f;
    }

    public FilledTabsView onTabSelected(Utilities.Callback<Integer> callback) {
        this.onTabClick = callback;
        return this;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.backgroundPaint.setColor(i);
        invalidate();
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.tabs == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int m107dp = AndroidUtilities.m107dp(2) + (this.tabs.length * AndroidUtilities.m107dp(24)) + AndroidUtilities.m107dp(2);
        int i = 0;
        while (true) {
            Text[] textArr = this.tabs;
            if (i >= textArr.length) {
                break;
            }
            m107dp = (int) (m107dp + textArr[i].getWidth());
            i++;
        }
        float m107dp2 = (height - AndroidUtilities.m107dp(30)) / 2.0f;
        float m107dp3 = (AndroidUtilities.m107dp(30) + height) / 2.0f;
        float f = (width - m107dp) / 2.0f;
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f, m107dp2, m107dp + f, m107dp3);
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(15), AndroidUtilities.m107dp(15), this.backgroundPaint);
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
        float m107dp4 = f + AndroidUtilities.m107dp(14);
        int i2 = 0;
        while (true) {
            Text[] textArr2 = this.tabs;
            if (i2 < textArr2.length) {
                int i3 = i2;
                textArr2[i2].draw(canvas, m107dp4, height / 2.0f, -1, 1.0f);
                this.bounds[i3].set(m107dp4 - AndroidUtilities.m107dp(14), m107dp2, m107dp4 + this.tabs[i3].getWidth() + AndroidUtilities.m107dp(14), m107dp3);
                m107dp4 += this.tabs[i3].getWidth() + AndroidUtilities.m107dp(24);
                i2 = i3 + 1;
            } else {
                AndroidUtilities.m107dp(2);
                int clamp = Utilities.clamp((int) Math.floor(this.selectedTabIndex), this.tabs.length - 1, 0);
                int clamp2 = Utilities.clamp((int) Math.ceil(this.selectedTabIndex), this.tabs.length - 1, 0);
                float m107dp5 = this.bounds[clamp].left + AndroidUtilities.m107dp(2);
                float m107dp6 = this.bounds[clamp2].left + AndroidUtilities.m107dp(2);
                float f2 = this.selectedTabIndex;
                float lerp = AndroidUtilities.lerp(m107dp5, m107dp6, (float) (f2 - Math.floor(f2)));
                float m107dp7 = this.bounds[clamp].right - AndroidUtilities.m107dp(2);
                float m107dp8 = this.bounds[clamp2].right - AndroidUtilities.m107dp(2);
                float f3 = this.selectedTabIndex;
                float lerp2 = AndroidUtilities.lerp(m107dp7, m107dp8, (float) (f3 - Math.floor(f3)));
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(lerp, (height - AndroidUtilities.m107dp(26)) / 2.0f, lerp2, (height + AndroidUtilities.m107dp(26)) / 2.0f);
                canvas.drawRoundRect(rectF2, AndroidUtilities.m107dp(15), AndroidUtilities.m107dp(15), this.selectedPaint);
                canvas.restore();
                return;
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i = 0;
        if (this.tabs == null || this.bounds == null) {
            return false;
        }
        while (true) {
            RectF[] rectFArr = this.bounds;
            if (i >= rectFArr.length) {
                i = -1;
                break;
            } else if (rectFArr[i].contains(motionEvent.getX(), motionEvent.getY())) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0 && i != this.lastPressedIndex) {
            this.lastPressedIndex = i;
            Utilities.Callback<Integer> callback = this.onTabClick;
            if (callback != null) {
                callback.run(Integer.valueOf(i));
            }
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.lastPressedIndex = -1;
        }
        if (motionEvent.getAction() != 0 || i < 0) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }
}

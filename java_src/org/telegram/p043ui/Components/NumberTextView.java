package org.telegram.p043ui.Components;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import androidx.annotation.Keep;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.NumberTextView */
/* loaded from: classes6.dex */
public class NumberTextView extends View {
    private boolean addNumber;
    private ObjectAnimator animator;
    private boolean center;
    private int currentNumber;
    private ArrayList<StaticLayout> letters;
    private ArrayList<StaticLayout> oldLetters;
    private float oldTextWidth;
    private OnTextWidthProgressChangedListener onTextWidthProgressChangedListener;
    private float progress;
    private TextPaint textPaint;
    private float textWidth;

    /* renamed from: org.telegram.ui.Components.NumberTextView$OnTextWidthProgressChangedListener */
    /* loaded from: classes6.dex */
    public interface OnTextWidthProgressChangedListener {
        void onTextWidthProgress(float f, float f2, float f3);
    }

    public NumberTextView(Context context) {
        super(context);
        this.letters = new ArrayList<>();
        this.oldLetters = new ArrayList<>();
        this.textPaint = new TextPaint(1);
        this.progress = BitmapDescriptorFactory.HUE_RED;
        this.currentNumber = 1;
    }

    public void setOnTextWidthProgressChangedListener(OnTextWidthProgressChangedListener onTextWidthProgressChangedListener) {
        this.onTextWidthProgressChangedListener = onTextWidthProgressChangedListener;
    }

    @Keep
    public void setProgress(float f) {
        if (this.progress == f) {
            return;
        }
        this.progress = f;
        OnTextWidthProgressChangedListener onTextWidthProgressChangedListener = this.onTextWidthProgressChangedListener;
        if (onTextWidthProgressChangedListener != null) {
            onTextWidthProgressChangedListener.onTextWidthProgress(this.oldTextWidth, this.textWidth, f);
        }
        invalidate();
    }

    @Keep
    public float getProgress() {
        return this.progress;
    }

    public void setAddNumber() {
        this.addNumber = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004c, code lost:
        if (r22 < r21.currentNumber) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0072, code lost:
        if (r22 > r21.currentNumber) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setNumber(int r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.NumberTextView.setNumber(int, boolean):void");
    }

    public void setTextSize(int i) {
        this.textPaint.setTextSize(AndroidUtilities.m72dp(i));
        this.oldLetters.clear();
        this.letters.clear();
        setNumber(this.currentNumber, false);
    }

    public void setTextColor(int i) {
        this.textPaint.setColor(i);
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        this.textPaint.setTypeface(typeface);
        this.oldLetters.clear();
        this.letters.clear();
        setNumber(this.currentNumber, false);
    }

    public void setCenterAlign(boolean z) {
        this.center = z;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        if (this.letters.isEmpty()) {
            return;
        }
        float height = this.letters.get(0).getHeight();
        float m72dp = this.addNumber ? AndroidUtilities.m72dp(4) : height;
        if (this.center) {
            f = (getMeasuredWidth() - this.textWidth) / 2.0f;
            f2 = ((getMeasuredWidth() - this.oldTextWidth) / 2.0f) - f;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        canvas.save();
        canvas.translate(getPaddingLeft() + f, (getMeasuredHeight() - height) / 2.0f);
        int max = Math.max(this.letters.size(), this.oldLetters.size());
        int i = 0;
        while (i < max) {
            canvas.save();
            StaticLayout staticLayout = i < this.oldLetters.size() ? this.oldLetters.get(i) : null;
            StaticLayout staticLayout2 = i < this.letters.size() ? this.letters.get(i) : null;
            float f3 = this.progress;
            if (f3 > BitmapDescriptorFactory.HUE_RED) {
                if (staticLayout != null) {
                    this.textPaint.setAlpha((int) (f3 * 255.0f));
                    canvas.save();
                    canvas.translate(f2, (this.progress - 1.0f) * m72dp);
                    staticLayout.draw(canvas);
                    canvas.restore();
                    if (staticLayout2 != null) {
                        this.textPaint.setAlpha((int) ((1.0f - this.progress) * 255.0f));
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.progress * m72dp);
                    }
                } else {
                    this.textPaint.setAlpha(255);
                }
            } else if (f3 < BitmapDescriptorFactory.HUE_RED) {
                if (staticLayout != null) {
                    this.textPaint.setAlpha((int) ((-f3) * 255.0f));
                    canvas.save();
                    canvas.translate(f2, (this.progress + 1.0f) * m72dp);
                    staticLayout.draw(canvas);
                    canvas.restore();
                }
                if (staticLayout2 != null) {
                    if (i == max - 1 || staticLayout != null) {
                        this.textPaint.setAlpha((int) ((this.progress + 1.0f) * 255.0f));
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.progress * m72dp);
                    } else {
                        this.textPaint.setAlpha(255);
                    }
                }
            } else if (staticLayout2 != null) {
                this.textPaint.setAlpha(255);
            }
            if (staticLayout2 != null) {
                staticLayout2.draw(canvas);
            }
            canvas.restore();
            canvas.translate(staticLayout2 != null ? staticLayout2.getLineWidth(0) : staticLayout.getLineWidth(0) + AndroidUtilities.m72dp(1), BitmapDescriptorFactory.HUE_RED);
            if (staticLayout2 != null && staticLayout != null) {
                f2 += staticLayout.getLineWidth(0) - staticLayout2.getLineWidth(0);
            }
            i++;
        }
        canvas.restore();
    }

    public float getOldTextWidth() {
        return this.oldTextWidth;
    }

    public float getTextWidth() {
        return this.textWidth;
    }
}

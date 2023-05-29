package org.telegram.p044ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.PhoneFormat.C3207PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.CodeFieldContainer */
/* loaded from: classes5.dex */
public class CodeFieldContainer extends LinearLayout {
    Paint bitmapPaint;
    public CodeNumberField[] codeField;
    public boolean ignoreOnTextChange;
    public boolean isFocusSuppressed;
    Paint paint;
    float strokeWidth;

    protected void processNextPressed() {
    }

    public CodeFieldContainer(Context context) {
        super(context);
        this.paint = new Paint(1);
        this.bitmapPaint = new Paint(1);
        this.paint.setStyle(Paint.Style.STROKE);
        setOrientation(0);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Paint paint = this.paint;
        float m55dp = AndroidUtilities.m55dp(1.5f);
        this.strokeWidth = m55dp;
        paint.setStrokeWidth(m55dp);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof CodeNumberField) {
                CodeNumberField codeNumberField = (CodeNumberField) childAt;
                if (!this.isFocusSuppressed) {
                    if (childAt.isFocused()) {
                        codeNumberField.animateFocusedProgress(1.0f);
                    } else if (!childAt.isFocused()) {
                        codeNumberField.animateFocusedProgress(BitmapDescriptorFactory.HUE_RED);
                    }
                }
                float successProgress = codeNumberField.getSuccessProgress();
                this.paint.setColor(ColorUtils.blendARGB(ColorUtils.blendARGB(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhiteInputField), Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated), codeNumberField.getFocusedProgress()), Theme.getColor(Theme.key_text_RedBold), codeNumberField.getErrorProgress()), Theme.getColor(Theme.key_checkbox), successProgress));
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                float f = this.strokeWidth;
                rectF.inset(f, f);
                if (successProgress != BitmapDescriptorFactory.HUE_RED) {
                    float f2 = -Math.max((float) BitmapDescriptorFactory.HUE_RED, this.strokeWidth * (codeNumberField.getSuccessScaleProgress() - 1.0f));
                    rectF.inset(f2, f2);
                }
                canvas.drawRoundRect(rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), this.paint);
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view instanceof CodeNumberField) {
            CodeNumberField codeNumberField = (CodeNumberField) view;
            canvas.save();
            float f = codeNumberField.enterAnimation;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(view.getX(), view.getY(), view.getX() + view.getMeasuredWidth(), view.getY() + view.getMeasuredHeight());
            float f2 = this.strokeWidth;
            rectF.inset(f2, f2);
            canvas.clipRect(rectF);
            if (codeNumberField.replaceAnimation) {
                float f3 = (f * 0.5f) + 0.5f;
                view.setAlpha(f);
                canvas.scale(f3, f3, codeNumberField.getX() + (codeNumberField.getMeasuredWidth() / 2.0f), codeNumberField.getY() + (codeNumberField.getMeasuredHeight() / 2.0f));
            } else {
                view.setAlpha(1.0f);
                canvas.translate(BitmapDescriptorFactory.HUE_RED, view.getMeasuredHeight() * (1.0f - f));
            }
            super.drawChild(canvas, view, j);
            canvas.restore();
            float f4 = codeNumberField.exitAnimation;
            if (f4 < 1.0f) {
                canvas.save();
                float f5 = 1.0f - f4;
                float f6 = (f5 * 0.5f) + 0.5f;
                canvas.scale(f6, f6, codeNumberField.getX() + (codeNumberField.getMeasuredWidth() / 2.0f), codeNumberField.getY() + (codeNumberField.getMeasuredHeight() / 2.0f));
                this.bitmapPaint.setAlpha((int) (f5 * 255.0f));
                canvas.drawBitmap(codeNumberField.exitBitmap, codeNumberField.getX(), codeNumberField.getY(), this.bitmapPaint);
                canvas.restore();
                return true;
            }
            return true;
        }
        return super.drawChild(canvas, view, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setNumbersCount(final int r13, int r14) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.CodeFieldContainer.setNumbersCount(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setNumbersCount$0(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 5) {
            processNextPressed();
            return true;
        }
        return false;
    }

    public String getCode() {
        if (this.codeField == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            CodeNumberField[] codeNumberFieldArr = this.codeField;
            if (i < codeNumberFieldArr.length) {
                sb.append(C3207PhoneFormat.stripExceptNumbers(codeNumberFieldArr[i].getText().toString()));
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    public void setCode(String str) {
        this.codeField[0].setText(str);
    }

    public void setText(String str) {
        setText(str, false);
    }

    public void setText(String str, boolean z) {
        if (this.codeField == null) {
            return;
        }
        int i = 0;
        if (z) {
            int i2 = 0;
            while (true) {
                CodeNumberField[] codeNumberFieldArr = this.codeField;
                if (i2 >= codeNumberFieldArr.length) {
                    break;
                } else if (codeNumberFieldArr[i2].isFocused()) {
                    i = i2;
                    break;
                } else {
                    i2++;
                }
            }
        }
        for (int i3 = i; i3 < Math.min(this.codeField.length, str.length() + i); i3++) {
            this.codeField[i3].setText(Character.toString(str.charAt(i3 - i)));
        }
    }
}

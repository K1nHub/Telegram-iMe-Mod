package org.telegram.p044ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.text.Editable;
import android.text.Spanned;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.Components.AnimatedEmojiSpan;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.Paint.PaintTypeface;
import org.telegram.p044ui.Components.Paint.Swatch;
import org.telegram.p044ui.Components.Paint.Views.EntityView;
import org.telegram.p044ui.Components.Point;
import org.telegram.p044ui.Components.Rect;
/* renamed from: org.telegram.ui.Components.Paint.Views.TextPaintView */
/* loaded from: classes6.dex */
public class TextPaintView extends EntityView {
    private int align;
    private int baseFontSize;
    private int currentType;
    private EditTextOutline editText;
    private Swatch swatch;
    private PaintTypeface typeface;

    public TextPaintView(Context context, Point point, int i, CharSequence charSequence, Swatch swatch, int i2) {
        super(context, point);
        this.typeface = PaintTypeface.ROBOTO_MEDIUM;
        this.baseFontSize = i;
        EditTextOutline editTextOutline = new EditTextOutline(context) { // from class: org.telegram.ui.Components.Paint.Views.TextPaintView.1
            {
                this.animatedEmojiOffsetX = AndroidUtilities.m54dp(8);
            }

            @Override // org.telegram.p044ui.Components.EditTextEffects, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                EntityView.SelectionView selectionView = TextPaintView.this.selectionView;
                if (selectionView == null || selectionView.getVisibility() != 0) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.editText = editTextOutline;
        editTextOutline.setGravity(19);
        this.editText.setBackgroundColor(0);
        this.editText.setPadding(AndroidUtilities.m54dp(7), AndroidUtilities.m54dp(7), AndroidUtilities.m54dp(7), AndroidUtilities.m54dp(7));
        this.editText.setClickable(false);
        this.editText.setEnabled(false);
        this.editText.setCursorColor(-1);
        this.editText.setTextSize(0, this.baseFontSize);
        this.editText.setCursorSize(AndroidUtilities.m55dp(this.baseFontSize * 0.4f));
        this.editText.setText(charSequence);
        this.editText.setTextColor(swatch.color);
        this.editText.setTypeface(null, 1);
        this.editText.setHorizontallyScrolling(false);
        this.editText.setImeOptions(268435456);
        this.editText.setFocusableInTouchMode(true);
        EditTextOutline editTextOutline2 = this.editText;
        editTextOutline2.setInputType(editTextOutline2.getInputType() | 16384);
        addView(this.editText, LayoutHelper.createFrame(-2, -2, 51));
        if (Build.VERSION.SDK_INT >= 23) {
            this.editText.setBreakStrategy(0);
        }
        setSwatch(swatch);
        setType(i2);
        updatePosition();
        this.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.Paint.Views.TextPaintView.2
            private int beforeCursorPosition = 0;
            private String text;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence2, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence2, int i3, int i4, int i5) {
                this.text = charSequence2.toString();
                this.beforeCursorPosition = i3;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextPaintView.this.editText.removeTextChangedListener(this);
                if (TextPaintView.this.editText.getLineCount() > 9) {
                    TextPaintView.this.editText.setText(this.text);
                    TextPaintView.this.editText.setSelection(this.beforeCursorPosition);
                }
                TextPaintView.this.editText.addTextChangedListener(this);
            }
        });
    }

    public TextPaintView(Context context, TextPaintView textPaintView, Point point) {
        this(context, point, textPaintView.baseFontSize, textPaintView.getText(), textPaintView.getSwatch(), textPaintView.currentType);
        setRotation(textPaintView.getRotation());
        setScale(textPaintView.getScale());
        setTypeface(textPaintView.getTypeface());
        setAlign(textPaintView.getAlign());
        int align = getAlign();
        int i = 2;
        this.editText.setGravity(align != 1 ? align != 2 ? 19 : 21 : 17);
        if (Build.VERSION.SDK_INT >= 17) {
            int align2 = getAlign();
            if (align2 == 1) {
                i = 4;
            } else if (align2 == 2 ? !LocaleController.isRTL : LocaleController.isRTL) {
                i = 3;
            }
            this.editText.setTextAlignment(i);
        }
    }

    public int getBaseFontSize() {
        return this.baseFontSize;
    }

    public void setBaseFontSize(int i) {
        this.baseFontSize = i;
        float f = i;
        this.editText.setTextSize(0, f);
        this.editText.setCursorSize(AndroidUtilities.m55dp(f * 0.4f));
        if (this.editText.getText() instanceof Spanned) {
            Editable text = this.editText.getText();
            for (Emoji.EmojiSpan emojiSpan : (Emoji.EmojiSpan[]) text.getSpans(0, text.length(), Emoji.EmojiSpan.class)) {
                emojiSpan.replaceFontMetrics(getFontMetricsInt());
            }
            for (AnimatedEmojiSpan animatedEmojiSpan : (AnimatedEmojiSpan[]) text.getSpans(0, text.length(), AnimatedEmojiSpan.class)) {
                animatedEmojiSpan.replaceFontMetrics(getFontMetricsInt());
            }
            this.editText.invalidateForce();
        }
    }

    public void setAlign(int i) {
        this.align = i;
    }

    public int getAlign() {
        return this.align;
    }

    public void setTypeface(PaintTypeface paintTypeface) {
        this.typeface = paintTypeface;
        this.editText.setTypeface(paintTypeface.getTypeface());
    }

    public void setTypeface(String str) {
        for (PaintTypeface paintTypeface : PaintTypeface.get()) {
            if (paintTypeface.getKey().equals(str)) {
                setTypeface(paintTypeface);
                return;
            }
        }
    }

    public PaintTypeface getTypeface() {
        return this.typeface;
    }

    public EditTextOutline getEditText() {
        return this.editText;
    }

    public void setMaxWidth(int i) {
        this.editText.setMaxWidth(i);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updatePosition();
    }

    public CharSequence getText() {
        return this.editText.getText();
    }

    public void setText(CharSequence charSequence) {
        this.editText.setText(charSequence);
    }

    public Paint.FontMetricsInt getFontMetricsInt() {
        return this.editText.getPaint().getFontMetricsInt();
    }

    public float getFontSize() {
        return this.editText.getTextSize();
    }

    public View getFocusedView() {
        return this.editText;
    }

    public void beginEditing() {
        this.editText.setEnabled(true);
        this.editText.setClickable(true);
        this.editText.requestFocus();
        EditTextOutline editTextOutline = this.editText;
        editTextOutline.setSelection(editTextOutline.getText().length());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.TextPaintView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TextPaintView.this.lambda$beginEditing$0();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$beginEditing$0() {
        AndroidUtilities.showKeyboard(this.editText);
    }

    public void endEditing() {
        this.editText.clearFocus();
        this.editText.setEnabled(false);
        this.editText.setClickable(false);
        updateSelectionView();
    }

    public Swatch getSwatch() {
        return this.swatch;
    }

    public int getTextSize() {
        return (int) this.editText.getTextSize();
    }

    public void setSwatch(Swatch swatch) {
        this.swatch = swatch;
        updateColor();
    }

    public void setType(int i) {
        this.currentType = i;
        updateColor();
    }

    public int getType() {
        return this.currentType;
    }

    public void updateColor() {
        int i = this.currentType;
        if (i == 0) {
            this.editText.setTextColor(-1);
            this.editText.setStrokeColor(this.swatch.color);
            this.editText.setFrameColor(0);
            this.editText.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        } else if (i == 1) {
            this.editText.setTextColor(this.swatch.color);
            this.editText.setStrokeColor(0);
            this.editText.setFrameColor(0);
            this.editText.setShadowLayer(5.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, 1711276032);
        } else if (i == 2) {
            this.editText.setTextColor(-16777216);
            this.editText.setStrokeColor(0);
            this.editText.setFrameColor(this.swatch.color);
            this.editText.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        }
    }

    @Override // org.telegram.p044ui.Components.Paint.Views.EntityView
    protected Rect getSelectionBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return new Rect();
        }
        float scaleX = viewGroup.getScaleX();
        float measuredWidth = (getMeasuredWidth() * getScale()) + (AndroidUtilities.m54dp(64) / scaleX);
        float measuredHeight = (getMeasuredHeight() * getScale()) + (AndroidUtilities.m54dp(52) / scaleX);
        return new Rect((getPositionX() - (measuredWidth / 2.0f)) * scaleX, (getPositionY() - (measuredHeight / 2.0f)) * scaleX, measuredWidth * scaleX, measuredHeight * scaleX);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.Components.Paint.Views.EntityView
    public TextViewSelectionView createSelectionView() {
        return new TextViewSelectionView(this, getContext());
    }

    /* renamed from: org.telegram.ui.Components.Paint.Views.TextPaintView$TextViewSelectionView */
    /* loaded from: classes6.dex */
    public class TextViewSelectionView extends EntityView.SelectionView {
        private Path path;

        public TextViewSelectionView(TextPaintView textPaintView, Context context) {
            super(context);
            this.path = new Path();
        }

        @Override // org.telegram.p044ui.Components.Paint.Views.EntityView.SelectionView
        protected int pointInsideHandle(float f, float f2) {
            float m55dp = AndroidUtilities.m55dp(19.5f);
            float m55dp2 = AndroidUtilities.m55dp(1.0f) + m55dp;
            float f3 = m55dp2 * 2.0f;
            float measuredWidth = getMeasuredWidth() - f3;
            float measuredHeight = getMeasuredHeight() - f3;
            float f4 = (measuredHeight / 2.0f) + m55dp2;
            if (f <= m55dp2 - m55dp || f2 <= f4 - m55dp || f >= m55dp2 + m55dp || f2 >= f4 + m55dp) {
                float f5 = m55dp2 + measuredWidth;
                if (f <= f5 - m55dp || f2 <= f4 - m55dp || f >= f5 + m55dp || f2 >= f4 + m55dp) {
                    return (f <= m55dp2 || f >= measuredWidth || f2 <= m55dp2 || f2 >= measuredHeight) ? 0 : 3;
                }
                return 2;
            }
            return 1;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            float m55dp = AndroidUtilities.m55dp(4.5f);
            float m55dp2 = AndroidUtilities.m55dp(2.0f) + m55dp + AndroidUtilities.m54dp(15);
            float f = m55dp2 * 2.0f;
            float measuredWidth = getMeasuredWidth() - f;
            float measuredHeight = getMeasuredHeight() - f;
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = m55dp2 + measuredWidth;
            float f3 = m55dp2 + measuredHeight;
            rectF.set(m55dp2, m55dp2, f2, f3);
            float m54dp = AndroidUtilities.m54dp(12);
            float min = Math.min(m54dp, measuredWidth / 2.0f);
            float f4 = measuredHeight / 2.0f;
            float min2 = Math.min(m54dp, f4);
            this.path.rewind();
            float f5 = min * 2.0f;
            float f6 = m55dp2 + f5;
            float f7 = 2.0f * min2;
            float f8 = m55dp2 + f7;
            rectF.set(m55dp2, m55dp2, f6, f8);
            this.path.arcTo(rectF, 180.0f, 90.0f);
            float f9 = f2 - f5;
            rectF.set(f9, m55dp2, f2, f8);
            this.path.arcTo(rectF, 270.0f, 90.0f);
            canvas.drawPath(this.path, this.paint);
            this.path.rewind();
            float f10 = f3 - f7;
            rectF.set(m55dp2, f10, f6, f3);
            this.path.arcTo(rectF, 180.0f, -90.0f);
            rectF.set(f9, f10, f2, f3);
            this.path.arcTo(rectF, 90.0f, -90.0f);
            canvas.drawPath(this.path, this.paint);
            float f11 = m55dp2 + min2;
            float f12 = f3 - min2;
            canvas.drawLine(m55dp2, f11, m55dp2, f12, this.paint);
            canvas.drawLine(f2, f11, f2, f12, this.paint);
            float f13 = f4 + m55dp2;
            canvas.drawCircle(m55dp2, f13, m55dp, this.dotPaint);
            canvas.drawCircle(m55dp2, f13, m55dp, this.dotStrokePaint);
            canvas.drawCircle(f2, f13, m55dp, this.dotPaint);
            canvas.drawCircle(f2, f13, m55dp, this.dotStrokePaint);
        }
    }
}

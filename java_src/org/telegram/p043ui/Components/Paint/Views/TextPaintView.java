package org.telegram.p043ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.text.Editable;
import android.text.Spanned;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Paint.PaintTypeface;
import org.telegram.p043ui.Components.Paint.Swatch;
import org.telegram.p043ui.Components.Paint.Views.EntityView;
import org.telegram.p043ui.Components.Point;
import org.telegram.p043ui.Components.Rect;
/* renamed from: org.telegram.ui.Components.Paint.Views.TextPaintView */
/* loaded from: classes7.dex */
public class TextPaintView extends EntityView {
    private int align;
    private int baseFontSize;
    private int currentType;
    private EditTextOutline editText;
    private String lastTypefaceKey;
    private Swatch swatch;
    private PaintTypeface typeface;

    public TextPaintView(Context context, Point point, int i, CharSequence charSequence, Swatch swatch, int i2) {
        super(context, point);
        this.typeface = PaintTypeface.ROBOTO_MEDIUM;
        this.baseFontSize = i;
        EditTextOutline editTextOutline = new EditTextOutline(context) { // from class: org.telegram.ui.Components.Paint.Views.TextPaintView.1
            @Override // org.telegram.p043ui.Components.EditTextEffects, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                EntityView.SelectionView selectionView = TextPaintView.this.selectionView;
                if (selectionView == null || selectionView.getVisibility() != 0) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.EditTextEffects, android.widget.TextView, android.view.View
            public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                super.onLayout(z, i3, i4, i5, i6);
                TextPaintView.this.updateSelectionView();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public void onMeasure(int i3, int i4) {
                super.onMeasure(i3, i4);
                TextPaintView.this.updateSelectionView();
            }
        };
        this.editText = editTextOutline;
        NotificationCenter.listenEmojiLoading(editTextOutline);
        this.editText.setGravity(19);
        this.editText.setBackgroundColor(0);
        this.editText.setPadding(AndroidUtilities.m72dp(7), AndroidUtilities.m72dp(7), AndroidUtilities.m72dp(7), AndroidUtilities.m72dp(7));
        this.editText.setClickable(false);
        this.editText.setEnabled(false);
        this.editText.setCursorColor(-1);
        this.editText.setTextSize(0, this.baseFontSize);
        this.editText.setCursorSize(AndroidUtilities.m73dp(this.baseFontSize * 0.4f));
        this.editText.setText(charSequence);
        updateHint();
        this.editText.setTextColor(swatch.color);
        this.editText.setTypeface(null, 1);
        this.editText.setHorizontallyScrolling(false);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 26) {
            this.editText.setImeOptions(285212672);
        } else {
            this.editText.setImeOptions(268435456);
        }
        this.editText.setFocusableInTouchMode(true);
        this.editText.setInputType(16384);
        this.editText.setSingleLine(false);
        addView(this.editText, LayoutHelper.createFrame(-2, -2, 51));
        if (i3 >= 29) {
            this.editText.setBreakStrategy(0);
        } else if (i3 >= 23) {
            this.editText.setBreakStrategy(0);
        }
        setSwatch(swatch);
        setType(i2);
        updatePosition();
        this.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.Paint.Views.TextPaintView.2
            private int beforeCursorPosition = 0;
            private String text;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence2, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence2, int i4, int i5, int i6) {
                this.text = charSequence2.toString();
                this.beforeCursorPosition = i4;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextPaintView.this.editText.removeTextChangedListener(this);
                if (TextPaintView.this.editText.getLineCount() > 9) {
                    TextPaintView.this.editText.setText(this.text);
                    TextPaintView.this.editText.setSelection(this.beforeCursorPosition);
                }
                TextPaintView.this.updateHint();
                TextPaintView.this.editText.addTextChangedListener(this);
            }
        });
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getStickyPaddingLeft() {
        RectF rectF = this.editText.framePadding;
        return rectF == null ? BitmapDescriptorFactory.HUE_RED : rectF.left;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getStickyPaddingRight() {
        RectF rectF = this.editText.framePadding;
        return rectF == null ? BitmapDescriptorFactory.HUE_RED : rectF.right;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getStickyPaddingTop() {
        RectF rectF = this.editText.framePadding;
        return rectF == null ? BitmapDescriptorFactory.HUE_RED : rectF.top;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getStickyPaddingBottom() {
        RectF rectF = this.editText.framePadding;
        return rectF == null ? BitmapDescriptorFactory.HUE_RED : rectF.bottom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHint() {
        if (this.editText.getText().length() <= 0) {
            this.editText.setHint(LocaleController.getString(C3473R.string.TextPlaceholder));
            this.editText.setHintTextColor(1627389951);
            return;
        }
        this.editText.setHint((CharSequence) null);
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
        this.editText.setCursorSize(AndroidUtilities.m73dp(f * 0.4f));
        if (this.editText.getText() instanceof Spanned) {
            Editable text = this.editText.getText();
            Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) text.getSpans(0, text.length(), Emoji.EmojiSpan.class);
            for (int i2 = 0; i2 < emojiSpanArr.length; i2++) {
                emojiSpanArr[i2].replaceFontMetrics(getFontMetricsInt());
                emojiSpanArr[i2].scale = 0.85f;
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
        if (paintTypeface != null) {
            this.editText.setTypeface(paintTypeface.getTypeface());
        }
        updateSelectionView();
    }

    public void setTypeface(String str) {
        boolean z;
        Iterator<PaintTypeface> it = PaintTypeface.get().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            PaintTypeface next = it.next();
            if (next.getKey().equals(str)) {
                setTypeface(next);
                z = true;
                break;
            }
        }
        if (z) {
            str = null;
        }
        this.lastTypefaceKey = str;
        updateSelectionView();
    }

    public void updateTypeface() {
        String str = this.lastTypefaceKey;
        if (str != null) {
            setTypeface(str);
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

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updatePosition();
    }

    public CharSequence getText() {
        return this.editText.getText();
    }

    public void setText(CharSequence charSequence) {
        this.editText.setText(charSequence);
        updateHint();
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
        this.editText.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        int i = this.swatch.color;
        int i2 = this.currentType;
        if (i2 == 0) {
            this.editText.setFrameColor(i);
            i = AndroidUtilities.computePerceivedBrightness(this.swatch.color) >= 0.721f ? -16777216 : -1;
        } else if (i2 == 1) {
            this.editText.setFrameColor(AndroidUtilities.computePerceivedBrightness(i) >= 0.25f ? -1728053248 : -1711276033);
        } else if (i2 == 2) {
            this.editText.setFrameColor(AndroidUtilities.computePerceivedBrightness(i) < 0.25f ? -1 : -16777216);
        } else {
            this.editText.setFrameColor(0);
        }
        this.editText.setTextColor(i);
        this.editText.setCursorColor(i);
        this.editText.setHandlesColor(i);
        this.editText.setHighlightColor(Theme.multAlpha(i, 0.4f));
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected Rect getSelectionBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return new Rect();
        }
        float scaleX = viewGroup.getScaleX();
        float measuredWidth = (getMeasuredWidth() * getScale()) + (AndroidUtilities.m72dp(64) / scaleX);
        float measuredHeight = (getMeasuredHeight() * getScale()) + (AndroidUtilities.m72dp(52) / scaleX);
        float positionX = (getPositionX() - (measuredWidth / 2.0f)) * scaleX;
        return new Rect(positionX, (getPositionY() - (((measuredHeight - this.editText.getExtendedPaddingTop()) - AndroidUtilities.dpf2(4.0f)) / 2.0f)) * scaleX, ((measuredWidth * scaleX) + positionX) - positionX, (measuredHeight - this.editText.getExtendedPaddingBottom()) * scaleX);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    public TextViewSelectionView createSelectionView() {
        return new TextViewSelectionView(this, getContext());
    }

    /* renamed from: org.telegram.ui.Components.Paint.Views.TextPaintView$TextViewSelectionView */
    /* loaded from: classes7.dex */
    public class TextViewSelectionView extends EntityView.SelectionView {
        private final Paint clearPaint;
        private Path path;

        public TextViewSelectionView(TextPaintView textPaintView, Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.clearPaint = paint;
            this.path = new Path();
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }

        @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.SelectionView
        protected int pointInsideHandle(float f, float f2) {
            float m73dp = AndroidUtilities.m73dp(19.5f);
            float m73dp2 = AndroidUtilities.m73dp(1.0f) + m73dp;
            float f3 = m73dp2 * 2.0f;
            float measuredWidth = getMeasuredWidth() - f3;
            float measuredHeight = ((getMeasuredHeight() - f3) / 2.0f) + m73dp2;
            if (f <= m73dp2 - m73dp || f2 <= measuredHeight - m73dp || f >= m73dp2 + m73dp || f2 >= measuredHeight + m73dp) {
                float f4 = m73dp2 + measuredWidth;
                return (f <= f4 - m73dp || f2 <= measuredHeight - m73dp || f >= f4 + m73dp || f2 >= measuredHeight + m73dp) ? 0 : 2;
            }
            return 1;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int saveCount = canvas.getSaveCount();
            float showAlpha = getShowAlpha();
            if (showAlpha <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            if (showAlpha < 1.0f) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (showAlpha * 255.0f), 31);
            }
            float dpf2 = AndroidUtilities.dpf2(5.66f);
            float m73dp = AndroidUtilities.m73dp(2.0f) + dpf2 + AndroidUtilities.m72dp(15);
            float f = m73dp * 2.0f;
            float measuredWidth = getMeasuredWidth() - f;
            float measuredHeight = getMeasuredHeight() - f;
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = m73dp + measuredWidth;
            float f3 = m73dp + measuredHeight;
            rectF.set(m73dp, m73dp, f2, f3);
            float m72dp = AndroidUtilities.m72dp(12);
            float min = Math.min(m72dp, measuredWidth / 2.0f);
            float f4 = measuredHeight / 2.0f;
            float min2 = Math.min(m72dp, f4);
            this.path.rewind();
            float f5 = min * 2.0f;
            float f6 = m73dp + f5;
            float f7 = 2.0f * min2;
            float f8 = m73dp + f7;
            rectF.set(m73dp, m73dp, f6, f8);
            this.path.arcTo(rectF, 180.0f, 90.0f);
            float f9 = f2 - f5;
            rectF.set(f9, m73dp, f2, f8);
            this.path.arcTo(rectF, 270.0f, 90.0f);
            canvas.drawPath(this.path, this.paint);
            this.path.rewind();
            float f10 = f3 - f7;
            rectF.set(m73dp, f10, f6, f3);
            this.path.arcTo(rectF, 180.0f, -90.0f);
            rectF.set(f9, f10, f2, f3);
            this.path.arcTo(rectF, 90.0f, -90.0f);
            canvas.drawPath(this.path, this.paint);
            float f11 = m73dp + f4;
            canvas.drawCircle(m73dp, f11, dpf2, this.dotStrokePaint);
            canvas.drawCircle(m73dp, f11, (dpf2 - AndroidUtilities.m72dp(1)) + 1.0f, this.dotPaint);
            canvas.drawCircle(f2, f11, dpf2, this.dotStrokePaint);
            canvas.drawCircle(f2, f11, (dpf2 - AndroidUtilities.m72dp(1)) + 1.0f, this.dotPaint);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            float f12 = m73dp + min2;
            float f13 = f3 - min2;
            canvas.drawLine(m73dp, f12, m73dp, f13, this.paint);
            canvas.drawLine(f2, f12, f2, f13, this.paint);
            canvas.drawCircle(f2, f11, (AndroidUtilities.m72dp(1) + dpf2) - 1.0f, this.clearPaint);
            canvas.drawCircle(m73dp, f11, (dpf2 + AndroidUtilities.m72dp(1)) - 1.0f, this.clearPaint);
            canvas.restoreToCount(saveCount);
        }
    }
}

package me.grantland.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.text.Editable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.text.method.SingleLineTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes6.dex */
public class AutofitHelper {
    private boolean mEnabled;
    private boolean mIsAutofitting;
    private ArrayList<OnTextSizeChangeListener> mListeners;
    private int mMaxLines;
    private float mMaxTextSize;
    private float mMinTextSize;
    private TextPaint mPaint;
    private float mPrecision;
    private float mTextSize;
    private TextView mTextView;
    private TextWatcher mTextWatcher = new AutofitTextWatcher();
    private View.OnLayoutChangeListener mOnLayoutChangeListener = new AutofitOnLayoutChangeListener();

    /* loaded from: classes6.dex */
    public interface OnTextSizeChangeListener {
        void onTextSizeChange(float f, float f2);
    }

    public static AutofitHelper create(TextView textView, AttributeSet attributeSet, int i) {
        AutofitHelper autofitHelper = new AutofitHelper(textView);
        boolean z = true;
        if (attributeSet != null) {
            Context context = textView.getContext();
            float precision = autofitHelper.getPrecision();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AutofitTextView, i, 0);
            z = obtainStyledAttributes.getBoolean(R$styleable.AutofitTextView_sizeToFit, true);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.AutofitTextView_minTextSize, (int) autofitHelper.getMinTextSize());
            float f = obtainStyledAttributes.getFloat(R$styleable.AutofitTextView_precision, precision);
            obtainStyledAttributes.recycle();
            autofitHelper.setMinTextSize(0, dimensionPixelSize).setPrecision(f);
        }
        autofitHelper.setEnabled(z);
        return autofitHelper;
    }

    private static void autofit(TextView textView, TextPaint textPaint, float f, float f2, int i, float f3) {
        int width;
        if (i <= 0 || i == Integer.MAX_VALUE || (width = (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight()) <= 0) {
            return;
        }
        CharSequence text = textView.getText();
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (transformationMethod != null) {
            text = transformationMethod.getTransformation(text, textView);
        }
        Context context = textView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        DisplayMetrics displayMetrics = system.getDisplayMetrics();
        textPaint.set(textView.getPaint());
        textPaint.setTextSize(f2);
        float autofitTextSize = ((i != 1 || textPaint.measureText(text, 0, text.length()) <= ((float) width)) && getLineCount(text, textPaint, f2, (float) width, displayMetrics) <= i) ? f2 : getAutofitTextSize(text, textPaint, width, i, BitmapDescriptorFactory.HUE_RED, f2, f3, displayMetrics);
        if (autofitTextSize < f) {
            autofitTextSize = f;
        }
        textView.setTextSize(0, autofitTextSize);
    }

    private static float getAutofitTextSize(CharSequence charSequence, TextPaint textPaint, float f, int i, float f2, float f3, float f4, DisplayMetrics displayMetrics) {
        StaticLayout staticLayout;
        int i2;
        float f5;
        float f6 = (f2 + f3) / 2.0f;
        textPaint.setTextSize(TypedValue.applyDimension(0, f6, displayMetrics));
        if (i != 1) {
            staticLayout = new StaticLayout(charSequence, textPaint, (int) f, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
            i2 = staticLayout.getLineCount();
        } else {
            staticLayout = null;
            i2 = 1;
        }
        if (i2 > i) {
            return f3 - f2 < f4 ? f2 : getAutofitTextSize(charSequence, textPaint, f, i, f2, f6, f4, displayMetrics);
        } else if (i2 < i) {
            return getAutofitTextSize(charSequence, textPaint, f, i, f6, f3, f4, displayMetrics);
        } else {
            float f7 = BitmapDescriptorFactory.HUE_RED;
            if (i == 1) {
                f5 = textPaint.measureText(charSequence, 0, charSequence.length());
            } else {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (staticLayout.getLineWidth(i3) > f7) {
                        f7 = staticLayout.getLineWidth(i3);
                    }
                }
                f5 = f7;
            }
            if (f3 - f2 < f4) {
                return f2;
            }
            if (f5 > f) {
                return getAutofitTextSize(charSequence, textPaint, f, i, f2, f6, f4, displayMetrics);
            }
            return f5 < f ? getAutofitTextSize(charSequence, textPaint, f, i, f6, f3, f4, displayMetrics) : f6;
        }
    }

    private static int getLineCount(CharSequence charSequence, TextPaint textPaint, float f, float f2, DisplayMetrics displayMetrics) {
        textPaint.setTextSize(TypedValue.applyDimension(0, f, displayMetrics));
        return new StaticLayout(charSequence, textPaint, (int) f2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true).getLineCount();
    }

    private static int getMaxLines(TextView textView) {
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (transformationMethod == null || !(transformationMethod instanceof SingleLineTransformationMethod)) {
            if (Build.VERSION.SDK_INT >= 16) {
                return textView.getMaxLines();
            }
            return -1;
        }
        return 1;
    }

    private AutofitHelper(TextView textView) {
        float f = textView.getContext().getResources().getDisplayMetrics().scaledDensity;
        this.mTextView = textView;
        this.mPaint = new TextPaint();
        setRawTextSize(textView.getTextSize());
        this.mMaxLines = getMaxLines(textView);
        this.mMinTextSize = f * 8.0f;
        this.mMaxTextSize = this.mTextSize;
        this.mPrecision = 0.5f;
    }

    public AutofitHelper addOnTextSizeChangeListener(OnTextSizeChangeListener onTextSizeChangeListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(onTextSizeChangeListener);
        return this;
    }

    public float getPrecision() {
        return this.mPrecision;
    }

    public AutofitHelper setPrecision(float f) {
        if (this.mPrecision != f) {
            this.mPrecision = f;
            autofit();
        }
        return this;
    }

    public float getMinTextSize() {
        return this.mMinTextSize;
    }

    public AutofitHelper setMinTextSize(int i, float f) {
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        setRawMinTextSize(TypedValue.applyDimension(i, f, system.getDisplayMetrics()));
        return this;
    }

    private void setRawMinTextSize(float f) {
        if (f != this.mMinTextSize) {
            this.mMinTextSize = f;
            autofit();
        }
    }

    public float getMaxTextSize() {
        return this.mMaxTextSize;
    }

    public AutofitHelper setMaxTextSize(float f) {
        return setMaxTextSize(2, f);
    }

    public AutofitHelper setMaxTextSize(int i, float f) {
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        setRawMaxTextSize(TypedValue.applyDimension(i, f, system.getDisplayMetrics()));
        return this;
    }

    private void setRawMaxTextSize(float f) {
        if (f != this.mMaxTextSize) {
            this.mMaxTextSize = f;
            autofit();
        }
    }

    public AutofitHelper setMaxLines(int i) {
        if (this.mMaxLines != i) {
            this.mMaxLines = i;
            autofit();
        }
        return this;
    }

    public AutofitHelper setEnabled(boolean z) {
        if (this.mEnabled != z) {
            this.mEnabled = z;
            if (z) {
                this.mTextView.addTextChangedListener(this.mTextWatcher);
                this.mTextView.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
                autofit();
            } else {
                this.mTextView.removeTextChangedListener(this.mTextWatcher);
                this.mTextView.removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
                this.mTextView.setTextSize(0, this.mTextSize);
            }
        }
        return this;
    }

    public void setTextSize(int i, float f) {
        if (this.mIsAutofitting) {
            return;
        }
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        setRawTextSize(TypedValue.applyDimension(i, f, system.getDisplayMetrics()));
    }

    private void setRawTextSize(float f) {
        if (this.mTextSize != f) {
            this.mTextSize = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autofit() {
        float textSize = this.mTextView.getTextSize();
        this.mIsAutofitting = true;
        autofit(this.mTextView, this.mPaint, this.mMinTextSize, this.mMaxTextSize, this.mMaxLines, this.mPrecision);
        this.mIsAutofitting = false;
        float textSize2 = this.mTextView.getTextSize();
        if (textSize2 != textSize) {
            sendTextSizeChange(textSize2, textSize);
        }
    }

    private void sendTextSizeChange(float f, float f2) {
        ArrayList<OnTextSizeChangeListener> arrayList = this.mListeners;
        if (arrayList == null) {
            return;
        }
        Iterator<OnTextSizeChangeListener> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().onTextSizeChange(f, f2);
        }
    }

    /* loaded from: classes6.dex */
    private class AutofitTextWatcher implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private AutofitTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AutofitHelper.this.autofit();
        }
    }

    /* loaded from: classes6.dex */
    private class AutofitOnLayoutChangeListener implements View.OnLayoutChangeListener {
        private AutofitOnLayoutChangeListener() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            AutofitHelper.this.autofit();
        }
    }
}

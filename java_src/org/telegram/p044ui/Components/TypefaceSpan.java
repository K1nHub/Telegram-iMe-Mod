package org.telegram.p044ui.Components;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.TypefaceSpan */
/* loaded from: classes6.dex */
public class TypefaceSpan extends MetricAffectingSpan {
    private int color;
    private String colorKey;
    Theme.ResourcesProvider resourcesProvider;
    private int textSize;
    private Typeface typeface;

    public TypefaceSpan(Typeface typeface) {
        this.typeface = typeface;
    }

    public TypefaceSpan(Typeface typeface, int i, int i2) {
        this.typeface = typeface;
        if (i > 0) {
            this.textSize = i;
        }
        this.color = i2;
    }

    public TypefaceSpan(Typeface typeface, int i, String str, Theme.ResourcesProvider resourcesProvider) {
        this.typeface = typeface;
        if (i > 0) {
            this.textSize = i;
        }
        this.resourcesProvider = resourcesProvider;
        this.colorKey = str;
        this.color = Theme.getColor(str, resourcesProvider);
    }

    public void setColor(int i) {
        this.color = i;
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        Typeface typeface = this.typeface;
        if (typeface != null) {
            textPaint.setTypeface(typeface);
        }
        int i = this.textSize;
        if (i != 0) {
            textPaint.setTextSize(i);
        }
        textPaint.setFlags(textPaint.getFlags() | 128);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        String str = this.colorKey;
        if (str != null) {
            this.color = Theme.getColor(str, this.resourcesProvider);
        }
        Typeface typeface = this.typeface;
        if (typeface != null) {
            textPaint.setTypeface(typeface);
        }
        int i = this.textSize;
        if (i != 0) {
            textPaint.setTextSize(i);
        }
        int i2 = this.color;
        if (i2 != 0) {
            textPaint.setColor(i2);
        }
        textPaint.setFlags(textPaint.getFlags() | 128);
    }
}

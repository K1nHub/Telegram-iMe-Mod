package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.LoadingSpan */
/* loaded from: classes6.dex */
public class LoadingSpan extends ReplacementSpan {
    private LoadingDrawable drawable;
    private int size;
    private View view;
    public int yOffset;

    public LoadingSpan(View view, int i) {
        this(view, i, AndroidUtilities.m107dp(2));
    }

    public LoadingSpan(View view, int i, int i2) {
        this(view, i, i2, null);
    }

    public LoadingSpan(View view, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        this.view = view;
        this.size = i;
        this.yOffset = i2;
        LoadingDrawable loadingDrawable = new LoadingDrawable(resourcesProvider);
        this.drawable = loadingDrawable;
        loadingDrawable.setRadiiDp(4.0f);
    }

    public void setColors(int i, int i2) {
        this.drawable.color1 = Integer.valueOf(i);
        this.drawable.color2 = Integer.valueOf(i2);
    }

    public void setView(View view) {
        this.view = view;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (paint != null) {
            LoadingDrawable loadingDrawable = this.drawable;
            if (loadingDrawable.color1 == null && loadingDrawable.color2 == null) {
                loadingDrawable.setColors(Theme.multAlpha(paint.getColor(), 0.1f), Theme.multAlpha(paint.getColor(), 0.25f));
            }
        }
        if (paint != null) {
            this.drawable.setAlpha(paint.getAlpha());
        }
        return this.size;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        int i6 = (int) f;
        this.drawable.setBounds(i6, i3 + this.yOffset, this.size + i6, (i5 - AndroidUtilities.m107dp(2)) + this.yOffset);
        this.drawable.draw(canvas);
        View view = this.view;
        if (view != null) {
            view.invalidate();
        }
    }
}

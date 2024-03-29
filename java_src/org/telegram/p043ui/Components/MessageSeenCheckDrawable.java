package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.DialogCell;
/* renamed from: org.telegram.ui.Components.MessageSeenCheckDrawable */
/* loaded from: classes6.dex */
public class MessageSeenCheckDrawable {
    private int colorKey;
    private Drawable drawable;

    /* renamed from: h */
    private int f1867h;
    private int lastColor;
    private float lastDensity;
    private CharSequence lastSpanned;

    /* renamed from: oy */
    private float f1868oy;
    private int resId;

    /* renamed from: w */
    private int f1869w;

    public MessageSeenCheckDrawable(int i, int i2) {
        this.f1869w = -1;
        this.f1867h = -1;
        this.f1868oy = 4.66f;
        this.resId = i;
        this.colorKey = i2;
    }

    public MessageSeenCheckDrawable(int i, int i2, int i3, int i4, float f) {
        this(i, i2);
        this.f1869w = i3;
        this.f1867h = i4;
        this.f1868oy = f;
    }

    public CharSequence getSpanned(Context context, Theme.ResourcesProvider resourcesProvider) {
        if (this.lastSpanned != null && this.drawable != null && AndroidUtilities.density == this.lastDensity) {
            if (this.lastColor != Theme.getColor(this.colorKey, resourcesProvider)) {
                Drawable drawable = this.drawable;
                int color = Theme.getColor(this.colorKey, resourcesProvider);
                this.lastColor = color;
                drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            }
            return this.lastSpanned;
        } else if (context == null) {
            return null;
        } else {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("v ");
            this.lastDensity = AndroidUtilities.density;
            Drawable mutate = context.getResources().getDrawable(this.resId).mutate();
            this.drawable = mutate;
            int color2 = Theme.getColor(this.colorKey, resourcesProvider);
            this.lastColor = color2;
            mutate.setColorFilter(new PorterDuffColorFilter(color2, PorterDuff.Mode.SRC_IN));
            int i = this.f1869w;
            int intrinsicWidth = i <= 0 ? this.drawable.getIntrinsicWidth() : AndroidUtilities.m107dp(i);
            int i2 = this.f1867h;
            int intrinsicHeight = i2 <= 0 ? this.drawable.getIntrinsicHeight() : AndroidUtilities.m107dp(i2);
            int m108dp = AndroidUtilities.m108dp(this.f1868oy);
            this.drawable.setBounds(0, m108dp, intrinsicWidth, intrinsicHeight + m108dp);
            spannableStringBuilder.setSpan(new ImageSpan(this.drawable, 2), 0, 1, 33);
            spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m107dp(2)), 1, 2, 33);
            this.lastSpanned = spannableStringBuilder;
            return spannableStringBuilder;
        }
    }
}

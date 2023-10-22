package org.telegram.p042ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Cells.DialogCell;
/* renamed from: org.telegram.ui.Components.MessageSeenCheckDrawable */
/* loaded from: classes6.dex */
public class MessageSeenCheckDrawable {
    private int colorKey;
    private Drawable drawable;

    /* renamed from: h */
    private int f1856h;
    private int lastColor;
    private float lastDensity;
    private CharSequence lastSpanned;

    /* renamed from: oy */
    private float f1857oy;
    private int resId;

    /* renamed from: w */
    private int f1858w;

    public MessageSeenCheckDrawable(int i, int i2) {
        this.f1858w = -1;
        this.f1856h = -1;
        this.f1857oy = 4.66f;
        this.resId = i;
        this.colorKey = i2;
    }

    public MessageSeenCheckDrawable(int i, int i2, int i3, int i4, float f) {
        this(i, i2);
        this.f1858w = i3;
        this.f1856h = i4;
        this.f1857oy = f;
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
            int i = this.f1858w;
            int intrinsicWidth = i <= 0 ? this.drawable.getIntrinsicWidth() : AndroidUtilities.m102dp(i);
            int i2 = this.f1856h;
            int intrinsicHeight = i2 <= 0 ? this.drawable.getIntrinsicHeight() : AndroidUtilities.m102dp(i2);
            int m103dp = AndroidUtilities.m103dp(this.f1857oy);
            this.drawable.setBounds(0, m103dp, intrinsicWidth, intrinsicHeight + m103dp);
            spannableStringBuilder.setSpan(new ImageSpan(this.drawable, 2), 0, 1, 33);
            spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m102dp(2)), 1, 2, 33);
            this.lastSpanned = spannableStringBuilder;
            return spannableStringBuilder;
        }
    }
}

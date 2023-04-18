package org.telegram.p044ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.DialogCell;
/* renamed from: org.telegram.ui.Components.MessageSeenCheckDrawable */
/* loaded from: classes6.dex */
public class MessageSeenCheckDrawable {
    private String colorKey;
    private Drawable drawable;

    /* renamed from: h */
    private int f1657h;
    private int lastColor;
    private float lastDensity;
    private CharSequence lastSpanned;

    /* renamed from: oy */
    private float f1658oy;
    private int resId;

    /* renamed from: w */
    private int f1659w;

    public MessageSeenCheckDrawable(int i, String str) {
        this.f1659w = -1;
        this.f1657h = -1;
        this.f1658oy = 4.66f;
        this.resId = i;
        this.colorKey = str;
    }

    public MessageSeenCheckDrawable(int i, String str, int i2, int i3, float f) {
        this(i, str);
        this.f1659w = i2;
        this.f1657h = i3;
        this.f1658oy = f;
    }

    public CharSequence getSpanned(Context context) {
        if (this.lastSpanned != null && this.drawable != null && AndroidUtilities.density == this.lastDensity) {
            if (this.lastColor != Theme.getColor(this.colorKey)) {
                Drawable drawable = this.drawable;
                int color = Theme.getColor(this.colorKey);
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
            int color2 = Theme.getColor(this.colorKey);
            this.lastColor = color2;
            mutate.setColorFilter(new PorterDuffColorFilter(color2, PorterDuff.Mode.SRC_IN));
            int i = this.f1659w;
            int intrinsicWidth = i <= 0 ? this.drawable.getIntrinsicWidth() : AndroidUtilities.m50dp(i);
            int i2 = this.f1657h;
            int intrinsicHeight = i2 <= 0 ? this.drawable.getIntrinsicHeight() : AndroidUtilities.m50dp(i2);
            int m51dp = AndroidUtilities.m51dp(this.f1658oy);
            this.drawable.setBounds(0, m51dp, intrinsicWidth, intrinsicHeight + m51dp);
            spannableStringBuilder.setSpan(new ImageSpan(this.drawable, 2), 0, 1, 33);
            spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m50dp(2)), 1, 2, 33);
            this.lastSpanned = spannableStringBuilder;
            return spannableStringBuilder;
        }
    }
}
package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
/* renamed from: org.telegram.ui.Stories.recorder.HintTextView */
/* loaded from: classes6.dex */
public class HintTextView extends View {
    private final AnimatedTextView.AnimatedTextDrawable textDrawable;

    public HintTextView(Context context) {
        super(context);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
        this.textDrawable = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.35f, 0L, 300L, CubicBezierInterpolator.EASE_OUT_QUINT);
        animatedTextDrawable.setTextColor(-1);
        animatedTextDrawable.setTextSize(AndroidUtilities.m72dp(14));
        animatedTextDrawable.getPaint().setShadowLayer(AndroidUtilities.m73dp(1.4f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m73dp(0.4f), 1275068416);
        animatedTextDrawable.setGravity(1);
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
    }

    public void setText(CharSequence charSequence, boolean z) {
        this.textDrawable.setText(charSequence, z);
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        this.textDrawable.setBounds(0, 0, getWidth(), getHeight());
        this.textDrawable.draw(canvas);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.textDrawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.textDrawable.setOverrideFullWidth(getMeasuredWidth());
    }
}

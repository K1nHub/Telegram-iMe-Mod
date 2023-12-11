package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.exoplayer2.C0485C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.RLottieDrawable;
/* renamed from: org.telegram.ui.Stories.recorder.TrashView */
/* loaded from: classes6.dex */
public class TrashView extends View {
    private final ButtonBounce bounce;
    private final Paint circlePaint;
    private boolean dragged;
    private final AnimatedFloat draggedT;
    private final RLottieDrawable drawable;
    private final Paint greyPaint;
    private final AnimatedTextView.AnimatedTextDrawable textDrawable;

    public TrashView(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.circlePaint = paint;
        Paint paint2 = new Paint(1);
        this.greyPaint = paint2;
        this.bounce = new ButtonBounce(this);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.draggedT = new AnimatedFloat(this, 0L, 240L, cubicBezierInterpolator);
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(AndroidUtilities.dpf2(2.66f));
        paint.setShadowLayer(AndroidUtilities.dpf2(3.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m105dp(1.66f), C0485C.ENCODING_PCM_32BIT);
        paint2.setColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
        int i = C3632R.raw.group_pip_delete_icon;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m104dp(48), AndroidUtilities.m104dp(48), true, null);
        this.drawable = rLottieDrawable;
        rLottieDrawable.setMasterParent(this);
        rLottieDrawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
        rLottieDrawable.setCustomEndFrame(0);
        rLottieDrawable.setAllowDecodeSingleFrame(true);
        rLottieDrawable.start();
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, false);
        this.textDrawable = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.3f, 0L, 250L, cubicBezierInterpolator);
        animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
        animatedTextDrawable.setTextSize(AndroidUtilities.m104dp(14));
        animatedTextDrawable.setTextColor(-1);
        animatedTextDrawable.setShadowLayer(AndroidUtilities.dpf2(1.33f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(1), 1073741824);
        animatedTextDrawable.setText(LocaleController.getString("TrashHintDrag", C3632R.string.TrashHintDrag));
        animatedTextDrawable.setGravity(17);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.textDrawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float m104dp = AndroidUtilities.m104dp(30);
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float m104dp2 = (AndroidUtilities.m104dp(3) * this.draggedT.set(this.dragged)) + m104dp;
        canvas.drawCircle(width, height, m104dp2, this.greyPaint);
        canvas.drawCircle(width, height, m104dp2, this.circlePaint);
        float m104dp3 = AndroidUtilities.m104dp(48) / 2.0f;
        this.drawable.setBounds((int) (width - m104dp3), (int) (height - m104dp3), (int) (width + m104dp3), (int) (m104dp3 + height));
        this.drawable.draw(canvas);
        this.textDrawable.setBounds(0, (int) (height + m104dp + AndroidUtilities.m104dp(7)), getWidth(), getHeight());
        this.textDrawable.draw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(i, AndroidUtilities.m104dp(120));
    }

    public void onDragInfo(boolean z, boolean z2) {
        int i;
        String str;
        this.bounce.setPressed(z);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.textDrawable;
        if (z || z2) {
            i = C3632R.string.TrashHintRelease;
            str = "TrashHintRelease";
        } else {
            i = C3632R.string.TrashHintDrag;
            str = "TrashHintDrag";
        }
        animatedTextDrawable.setText(LocaleController.getString(str, i));
        boolean z3 = z && !z2;
        this.dragged = z3;
        if (z3) {
            if (this.drawable.getCurrentFrame() > 34) {
                this.drawable.setCurrentFrame(0, false);
            }
            this.drawable.setCustomEndFrame(33);
            this.drawable.start();
        } else {
            this.drawable.setCustomEndFrame(z2 ? 66 : 0);
            this.drawable.start();
        }
        invalidate();
    }
}

package org.telegram.p043ui.Components.Premium.boosts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.voip.CellFlickerDrawable;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
/* renamed from: org.telegram.ui.Components.Premium.boosts.GradientButtonWithCounterView */
/* loaded from: classes6.dex */
public class GradientButtonWithCounterView extends ButtonWithCounterView {
    private final CellFlickerDrawable flickerDrawable;
    private boolean incGradient;
    private float progress;
    private final RectF rect;

    public GradientButtonWithCounterView(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context, z, resourcesProvider);
        this.rect = new RectF();
        CellFlickerDrawable cellFlickerDrawable = new CellFlickerDrawable();
        this.flickerDrawable = cellFlickerDrawable;
        cellFlickerDrawable.animationSpeedScale = 1.2f;
        cellFlickerDrawable.drawFrame = false;
        cellFlickerDrawable.repeatProgress = 4.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Stories.recorder.ButtonWithCounterView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.incGradient) {
            float f = this.progress + 0.016f;
            this.progress = f;
            if (f > 3.0f) {
                this.incGradient = false;
            }
        } else {
            float f2 = this.progress - 0.016f;
            this.progress = f2;
            if (f2 < 1.0f) {
                this.incGradient = true;
            }
        }
        this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
        PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), (-getMeasuredWidth()) * 0.1f * this.progress, BitmapDescriptorFactory.HUE_RED);
        canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), PremiumGradient.getInstance().getMainGradientPaint());
        this.flickerDrawable.setParentWidth(getMeasuredWidth());
        this.flickerDrawable.draw(canvas, this.rect, AndroidUtilities.m107dp(8), null);
        super.onDraw(canvas);
        invalidate();
    }
}

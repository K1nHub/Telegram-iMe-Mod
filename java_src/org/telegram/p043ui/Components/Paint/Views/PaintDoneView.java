package org.telegram.p043ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.Paint.Views.PaintDoneView */
/* loaded from: classes6.dex */
public class PaintDoneView extends View {
    private Paint paint;
    private float progress;

    public PaintDoneView(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(-1);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(AndroidUtilities.m104dp(2));
    }

    public void setProgress(float f) {
        this.progress = f;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawLine((getWidth() / 2.0f) + AndroidUtilities.m105dp(AndroidUtilities.lerp(-6.7f, -7.0f, this.progress)), (getHeight() / 2.0f) + AndroidUtilities.m105dp(AndroidUtilities.lerp(0.71f, (float) BitmapDescriptorFactory.HUE_RED, this.progress)), (getWidth() / 2.0f) + AndroidUtilities.m105dp(AndroidUtilities.lerp(-2.45f, 7.0f, this.progress)), (getHeight() / 2.0f) + AndroidUtilities.m105dp(AndroidUtilities.lerp(4.79f, (float) BitmapDescriptorFactory.HUE_RED, this.progress)), this.paint);
        canvas.drawLine((getWidth() / 2.0f) + AndroidUtilities.m105dp(AndroidUtilities.lerp(-2.45f, (float) BitmapDescriptorFactory.HUE_RED, this.progress)), (getHeight() / 2.0f) + AndroidUtilities.m105dp(AndroidUtilities.lerp(4.79f, 7.0f, this.progress)), (getWidth() / 2.0f) + AndroidUtilities.m105dp(AndroidUtilities.lerp(6.59f, (float) BitmapDescriptorFactory.HUE_RED, this.progress)), (getHeight() / 2.0f) + AndroidUtilities.m105dp(AndroidUtilities.lerp(-4.27f, -7.0f, this.progress)), this.paint);
    }
}

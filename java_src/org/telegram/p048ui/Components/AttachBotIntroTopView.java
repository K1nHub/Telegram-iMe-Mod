package org.telegram.p048ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaDataController;
import org.telegram.tgnet.TLRPC$TL_attachMenuBot;
import org.telegram.tgnet.TLRPC$TL_attachMenuBotIcon;
/* renamed from: org.telegram.ui.Components.AttachBotIntroTopView */
/* loaded from: classes6.dex */
public class AttachBotIntroTopView extends View {
    private Drawable attachDrawable;
    private Paint backgroundPaint;
    private ImageReceiver imageReceiver;
    private Paint paint;

    public AttachBotIntroTopView(Context context) {
        super(context);
        this.paint = new Paint(1);
        this.backgroundPaint = new Paint(1);
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        imageReceiver.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.AttachBotIntroTopView$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver2, boolean z, boolean z2, boolean z3) {
                AttachBotIntroTopView.this.lambda$new$1(imageReceiver2, z, z2, z3);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver2) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver2);
            }
        });
        this.attachDrawable = ContextCompat.getDrawable(context, C3158R.C3160drawable.input_attach).mutate().getConstantState().newDrawable();
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(AndroidUtilities.m50dp(3));
        this.paint.setStrokeCap(Paint.Cap.ROUND);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(150L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AttachBotIntroTopView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AttachBotIntroTopView.this.lambda$new$0(valueAnimator);
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
        this.imageReceiver.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        invalidate();
    }

    public void setAttachBot(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot) {
        TLRPC$TL_attachMenuBotIcon staticAttachMenuBotIcon = MediaDataController.getStaticAttachMenuBotIcon(tLRPC$TL_attachMenuBot);
        if (staticAttachMenuBotIcon != null) {
            this.imageReceiver.setImage(ImageLocation.getForDocument(staticAttachMenuBotIcon.icon), "42_42", DocumentObject.getSvgThumb(staticAttachMenuBotIcon.icon, "dialogTextGray2", 1.0f), "svg", tLRPC$TL_attachMenuBot, 0);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.backgroundPaint.setColor(i);
    }

    public void setColor(int i) {
        this.attachDrawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        this.paint.setColor(i);
        this.imageReceiver.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.imageReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.imageReceiver.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight() + AndroidUtilities.m50dp(10));
        canvas.drawRoundRect(rectF, AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), this.backgroundPaint);
        this.imageReceiver.setImageCoords((getWidth() / 2.0f) - AndroidUtilities.m50dp(66), (getHeight() / 2.0f) - (AndroidUtilities.m50dp(42) / 2.0f), AndroidUtilities.m50dp(42), AndroidUtilities.m50dp(42));
        this.imageReceiver.draw(canvas);
        canvas.drawLine((getWidth() / 2.0f) - AndroidUtilities.m50dp(8), getHeight() / 2.0f, (getWidth() / 2.0f) + AndroidUtilities.m50dp(8), getHeight() / 2.0f, this.paint);
        canvas.drawLine(getWidth() / 2.0f, (getHeight() / 2.0f) - AndroidUtilities.m50dp(8), getWidth() / 2.0f, (getHeight() / 2.0f) + AndroidUtilities.m50dp(8), this.paint);
        this.attachDrawable.setBounds((getWidth() / 2) + AndroidUtilities.m50dp(24), (getHeight() / 2) - (AndroidUtilities.m50dp(42) / 2), (getWidth() / 2) + AndroidUtilities.m50dp(66), (getHeight() / 2) + (AndroidUtilities.m50dp(42) / 2));
        this.attachDrawable.draw(canvas);
    }
}

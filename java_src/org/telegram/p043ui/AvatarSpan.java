package org.telegram.p043ui;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.AvatarSpan */
/* loaded from: classes5.dex */
public class AvatarSpan extends ReplacementSpan {
    private final AvatarDrawable avatarDrawable;
    private final int currentAccount;
    private final ImageReceiver imageReceiver;
    private final Paint shadowPaint;

    /* renamed from: sz */
    private final int f1794sz;
    private float translateX;
    private float translateY;

    public AvatarSpan(View view, int i, int i2) {
        this.currentAccount = i;
        ImageReceiver imageReceiver = new ImageReceiver(view);
        this.imageReceiver = imageReceiver;
        this.avatarDrawable = new AvatarDrawable();
        imageReceiver.setRoundRadius(AndroidUtilities.m107dp(i2));
        this.f1794sz = i2;
        Paint paint = new Paint(1);
        this.shadowPaint = paint;
        paint.setShadowLayer(AndroidUtilities.m107dp(1), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m108dp(0.66f), AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
        if (view != null && view.isAttachedToWindow()) {
            imageReceiver.onAttachedToWindow();
        }
        if (view != null) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.AvatarSpan.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    AvatarSpan.this.imageReceiver.onAttachedToWindow();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    AvatarSpan.this.imageReceiver.onDetachedFromWindow();
                }
            });
        }
    }

    public void setChat(TLRPC$Chat tLRPC$Chat) {
        this.avatarDrawable.setInfo(this.currentAccount, tLRPC$Chat);
        this.imageReceiver.setForUserOrChat(tLRPC$Chat, this.avatarDrawable);
    }

    public void setUser(TLRPC$User tLRPC$User) {
        this.avatarDrawable.setInfo(this.currentAccount, tLRPC$User);
        this.imageReceiver.setForUserOrChat(tLRPC$User, this.avatarDrawable);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return AndroidUtilities.m107dp(this.f1794sz);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        float f2 = (i3 + i5) / 2.0f;
        canvas.drawCircle(this.translateX + f + (AndroidUtilities.m107dp(this.f1794sz) / 2.0f), this.translateY + f2, AndroidUtilities.m107dp(this.f1794sz) / 2.0f, this.shadowPaint);
        this.imageReceiver.setImageCoords(this.translateX + f, (this.translateY + f2) - (AndroidUtilities.m107dp(this.f1794sz) / 2.0f), AndroidUtilities.m107dp(this.f1794sz), AndroidUtilities.m107dp(this.f1794sz));
        this.imageReceiver.draw(canvas);
    }
}

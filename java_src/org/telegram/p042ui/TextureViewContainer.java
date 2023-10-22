package org.telegram.p042ui;

import android.content.Context;
import android.graphics.Canvas;
import android.view.TextureView;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.ImageReceiver;
/* renamed from: org.telegram.ui.TextureViewContainer */
/* loaded from: classes5.dex */
public class TextureViewContainer extends FrameLayout {
    boolean firstFrameRendered;
    ImageReceiver imageReceiver;
    TextureView textureView;

    public TextureViewContainer(Context context) {
        super(context);
        this.imageReceiver = new ImageReceiver(this);
        TextureView textureView = new TextureView(context);
        this.textureView = textureView;
        addView(textureView);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (!this.firstFrameRendered) {
            this.imageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
            this.imageReceiver.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.imageReceiver.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.imageReceiver.onDetachedFromWindow();
    }
}

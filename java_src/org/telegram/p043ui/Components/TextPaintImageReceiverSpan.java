package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.tgnet.TLRPC$Document;
/* renamed from: org.telegram.ui.Components.TextPaintImageReceiverSpan */
/* loaded from: classes6.dex */
public class TextPaintImageReceiverSpan extends ReplacementSpan {
    private boolean alignTop;
    private int height;
    private ImageReceiver imageReceiver;
    private int width;

    public TextPaintImageReceiverSpan(View view, TLRPC$Document tLRPC$Document, Object obj, int i, int i2, boolean z, boolean z2) {
        String format = String.format(Locale.US, "%d_%d_i", Integer.valueOf(i), Integer.valueOf(i2));
        this.width = i;
        this.height = i2;
        ImageReceiver imageReceiver = new ImageReceiver(view);
        this.imageReceiver = imageReceiver;
        imageReceiver.setInvalidateAll(true);
        if (z2) {
            this.imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.TextPaintImageReceiverSpan$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public final void didSetImage(ImageReceiver imageReceiver2, boolean z3, boolean z4, boolean z5) {
                    TextPaintImageReceiverSpan.lambda$new$0(imageReceiver2, z3, z4, z5);
                }

                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver2) {
                    ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver2);
                }
            });
        }
        this.imageReceiver.setImage(ImageLocation.getForDocument(tLRPC$Document), format, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90), tLRPC$Document), format, -1L, null, obj, 1);
        this.alignTop = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        if (imageReceiver.canInvertBitmap()) {
            imageReceiver.setColorFilter(new ColorMatrixColorFilter(new float[]{-1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 255.0f, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 255.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, 255.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED}));
        }
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            if (this.alignTop) {
                int m107dp = (fontMetricsInt.descent - fontMetricsInt.ascent) - AndroidUtilities.m107dp(4);
                int i3 = this.height - m107dp;
                fontMetricsInt.descent = i3;
                fontMetricsInt.bottom = i3;
                int i4 = 0 - m107dp;
                fontMetricsInt.ascent = i4;
                fontMetricsInt.top = i4;
            } else {
                int m107dp2 = ((-this.height) / 2) - AndroidUtilities.m107dp(4);
                fontMetricsInt.ascent = m107dp2;
                fontMetricsInt.top = m107dp2;
                int i5 = this.height;
                int m107dp3 = (i5 - (i5 / 2)) - AndroidUtilities.m107dp(4);
                fontMetricsInt.descent = m107dp3;
                fontMetricsInt.bottom = m107dp3;
            }
        }
        return this.width;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        canvas.save();
        if (this.alignTop) {
            this.imageReceiver.setImageCoords((int) f, i3 - 1, this.width, this.height);
        } else {
            int i6 = this.height;
            this.imageReceiver.setImageCoords((int) f, i3 + ((((i5 - AndroidUtilities.m107dp(4)) - i3) - i6) / 2), this.width, i6);
        }
        this.imageReceiver.draw(canvas);
        canvas.restore();
    }
}

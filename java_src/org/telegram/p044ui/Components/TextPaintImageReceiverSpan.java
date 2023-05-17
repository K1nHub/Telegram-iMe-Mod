package org.telegram.p044ui.Components;

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
            this.imageReceiver.setDelegate(TextPaintImageReceiverSpan$$ExternalSyntheticLambda0.INSTANCE);
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
                int m54dp = (fontMetricsInt.descent - fontMetricsInt.ascent) - AndroidUtilities.m54dp(4);
                int i3 = this.height - m54dp;
                fontMetricsInt.descent = i3;
                fontMetricsInt.bottom = i3;
                int i4 = 0 - m54dp;
                fontMetricsInt.ascent = i4;
                fontMetricsInt.top = i4;
            } else {
                int m54dp2 = ((-this.height) / 2) - AndroidUtilities.m54dp(4);
                fontMetricsInt.ascent = m54dp2;
                fontMetricsInt.top = m54dp2;
                int i5 = this.height;
                int m54dp3 = (i5 - (i5 / 2)) - AndroidUtilities.m54dp(4);
                fontMetricsInt.descent = m54dp3;
                fontMetricsInt.bottom = m54dp3;
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
            this.imageReceiver.setImageCoords((int) f, i3 + ((((i5 - AndroidUtilities.m54dp(4)) - i3) - i6) / 2), this.width, i6);
        }
        this.imageReceiver.draw(canvas);
        canvas.restore();
    }
}

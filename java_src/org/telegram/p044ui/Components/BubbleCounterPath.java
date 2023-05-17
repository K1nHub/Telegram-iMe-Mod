package org.telegram.p044ui.Components;

import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.BubbleCounterPath */
/* loaded from: classes6.dex */
public class BubbleCounterPath {
    private static RectF tmpRect;

    public static void addBubbleRect(Path path, RectF rectF, float f) {
        if (path == null) {
            return;
        }
        if (tmpRect == null) {
            tmpRect = new RectF();
        }
        float f2 = 2.0f * f;
        path.rewind();
        tmpRect.set(BitmapDescriptorFactory.HUE_RED, -rectF.height(), f2, (-rectF.height()) + f2);
        path.arcTo(tmpRect, 180.0f, 90.0f);
        tmpRect.set(rectF.width() - f2, -rectF.height(), rectF.width(), (-rectF.height()) + f2);
        path.arcTo(tmpRect, 270.0f, 90.0f);
        tmpRect.set(rectF.width() - f2, -f2, rectF.width(), BitmapDescriptorFactory.HUE_RED);
        path.arcTo(tmpRect, BitmapDescriptorFactory.HUE_RED, 90.0f);
        path.quadTo(f, BitmapDescriptorFactory.HUE_RED, f, BitmapDescriptorFactory.HUE_RED);
        path.cubicTo(AndroidUtilities.m55dp(7.62f), AndroidUtilities.m55dp(-0.5f), AndroidUtilities.m55dp(5.807f), AndroidUtilities.m55dp(-1.502f), AndroidUtilities.m55dp(6.02f), AndroidUtilities.m55dp(-1.386f));
        path.cubicTo(AndroidUtilities.m55dp(4.814f), AndroidUtilities.m55dp(-0.81f), AndroidUtilities.m55dp(2.706f), AndroidUtilities.m55dp(-0.133f), AndroidUtilities.m55dp(3.6f), AndroidUtilities.m55dp(-0.44f));
        path.cubicTo(AndroidUtilities.m55dp(1.004f), AndroidUtilities.m55dp(-0.206f), AndroidUtilities.m55dp(-0.047f), AndroidUtilities.m55dp(-0.32f), AndroidUtilities.m55dp(0.247f), AndroidUtilities.m55dp(-0.29f));
        path.cubicTo(AndroidUtilities.m55dp(-0.334f), AndroidUtilities.m55dp(-1.571f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m55dp(-1.155f), AndroidUtilities.m55dp(-0.06f), AndroidUtilities.m55dp(-1.154f));
        path.cubicTo(AndroidUtilities.m55dp(1.083f), AndroidUtilities.m55dp(-2.123f), AndroidUtilities.m55dp(1.667f), AndroidUtilities.m55dp(-3.667f), AndroidUtilities.m55dp(1.453f), AndroidUtilities.m55dp(-3.12f));
        path.cubicTo(AndroidUtilities.m55dp(2.1f), AndroidUtilities.m55dp(-4.793f), AndroidUtilities.m55dp(1.24f), AndroidUtilities.m55dp(-6.267f), AndroidUtilities.m55dp(1.67f), AndroidUtilities.m55dp(-5.53f));
        float f3 = -f;
        path.quadTo(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m55dp(2.187f) + f3, BitmapDescriptorFactory.HUE_RED, f3);
        path.close();
        path.offset(rectF.left, rectF.bottom);
    }
}

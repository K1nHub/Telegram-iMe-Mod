package org.telegram.p043ui.Components;

import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
/* renamed from: org.telegram.ui.Components.LayoutHelper */
/* loaded from: classes6.dex */
public class LayoutHelper {
    public static RecyclerView.LayoutParams createRecycler(int i, int i2) {
        return createRecycler(i, i2, 0, 0, 0, 0);
    }

    public static RecyclerView.LayoutParams createRecycler(int i, int i2, int i3, int i4, int i5, int i6) {
        return createRecycler(i, i2, i3, i4, i5, i6);
    }

    public static RecyclerView.LayoutParams createRecycler(int i, int i2, float f, float f2, float f3, float f4) {
        RecyclerView.LayoutParams layoutParams = new RecyclerView.LayoutParams(getSize(i), getSize(i2));
        layoutParams.setMargins(AndroidUtilities.m108dp(f), AndroidUtilities.m108dp(f2), AndroidUtilities.m108dp(f3), AndroidUtilities.m108dp(f4));
        return layoutParams;
    }

    public static void addFrameParams(View view, int i, int i2, float f, float f2, float f3, float f4) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width += AndroidUtilities.m107dp(i);
        layoutParams.height += AndroidUtilities.m107dp(i2);
        layoutParams.leftMargin += AndroidUtilities.m108dp(f);
        layoutParams.topMargin += AndroidUtilities.m108dp(f2);
        layoutParams.rightMargin += AndroidUtilities.m108dp(f3);
        layoutParams.bottomMargin += AndroidUtilities.m108dp(f4);
        view.setLayoutParams(layoutParams);
    }

    public static FrameLayout.LayoutParams createFrame(int i, int i2) {
        return createFrame(i, i2);
    }

    public static FrameLayout.LayoutParams createFrame(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return createFrame(i, i2, i3, i4, i5, i6, i7);
    }

    public static LinearLayout.LayoutParams createLinear(int i, int i2, int i3, int i4, int i5, int i6) {
        return createLinear(i, i2, i3, i4, i5, i6);
    }

    private static int getSize(float f) {
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            f = AndroidUtilities.m108dp(f);
        }
        return (int) f;
    }

    private static int getAbsoluteGravity(int i) {
        return Gravity.getAbsoluteGravity(i, LocaleController.isRTL ? 1 : 0);
    }

    public static int getAbsoluteGravityStart() {
        return LocaleController.isRTL ? 5 : 3;
    }

    public static FrameLayout.LayoutParams createScroll(int i, int i2, int i3) {
        return new FrameLayout.LayoutParams(getSize(i), getSize(i2), i3);
    }

    public static FrameLayout.LayoutParams createFrame(int i, float f, int i2, float f2, float f3, float f4, float f5) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(getSize(i), getSize(f), i2);
        layoutParams.setMargins(AndroidUtilities.m108dp(f2), AndroidUtilities.m108dp(f3), AndroidUtilities.m108dp(f4), AndroidUtilities.m108dp(f5));
        return layoutParams;
    }

    public static FrameLayout.LayoutParams createFrameMarginPx(int i, float f, int i2, int i3, int i4, int i5, int i6) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(getSize(i), getSize(f), i2);
        layoutParams.setMargins(i3, i4, i5, i6);
        return layoutParams;
    }

    public static FrameLayout.LayoutParams createFrame(int i, int i2, int i3) {
        return new FrameLayout.LayoutParams(getSize(i), getSize(i2), i3);
    }

    public static FrameLayout.LayoutParams createFrame(int i, float f) {
        return new FrameLayout.LayoutParams(getSize(i), getSize(f));
    }

    public static FrameLayout.LayoutParams createFrame(float f, float f2, int i) {
        return new FrameLayout.LayoutParams(getSize(f), getSize(f2), i);
    }

    public static FrameLayout.LayoutParams createFrameRelatively(float f, float f2, int i, float f3, float f4, float f5, float f6) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(getSize(f), getSize(f2), getAbsoluteGravity(i));
        layoutParams.leftMargin = AndroidUtilities.m108dp(LocaleController.isRTL ? f5 : f3);
        layoutParams.topMargin = AndroidUtilities.m108dp(f4);
        if (!LocaleController.isRTL) {
            f3 = f5;
        }
        layoutParams.rightMargin = AndroidUtilities.m108dp(f3);
        layoutParams.bottomMargin = AndroidUtilities.m108dp(f6);
        return layoutParams;
    }

    public static FrameLayout.LayoutParams createFrameRelatively(float f, float f2, int i) {
        return new FrameLayout.LayoutParams(getSize(f), getSize(f2), getAbsoluteGravity(i));
    }

    public static RelativeLayout.LayoutParams createRelative(float f, float f2, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getSize(f), getSize(f2));
        if (i5 >= 0) {
            layoutParams.addRule(i5);
        }
        if (i6 >= 0 && i7 >= 0) {
            layoutParams.addRule(i6, i7);
        }
        layoutParams.leftMargin = AndroidUtilities.m107dp(i);
        layoutParams.topMargin = AndroidUtilities.m107dp(i2);
        layoutParams.rightMargin = AndroidUtilities.m107dp(i3);
        layoutParams.bottomMargin = AndroidUtilities.m107dp(i4);
        return layoutParams;
    }

    public static RelativeLayout.LayoutParams createRelative(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return createRelative(i, i2, i3, i4, i5, i6, i7, -1, -1);
    }

    public static RelativeLayout.LayoutParams createRelative(int i, int i2) {
        return createRelative(i, i2, 0, 0, 0, 0, -1, -1, -1);
    }

    public static RelativeLayout.LayoutParams createRelative(int i, int i2, int i3) {
        return createRelative(i, i2, 0, 0, 0, 0, i3, -1, -1);
    }

    public static LinearLayout.LayoutParams createLinear(int i, int i2, float f, int i3, int i4, int i5, int i6, int i7) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getSize(i), getSize(i2), f);
        layoutParams.setMargins(AndroidUtilities.m107dp(i4), AndroidUtilities.m107dp(i5), AndroidUtilities.m107dp(i6), AndroidUtilities.m107dp(i7));
        layoutParams.gravity = i3;
        return layoutParams;
    }

    public static LinearLayout.LayoutParams createLinear(int i, int i2, float f, int i3, int i4, int i5, int i6) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getSize(i), getSize(i2), f);
        layoutParams.setMargins(AndroidUtilities.m107dp(i3), AndroidUtilities.m107dp(i4), AndroidUtilities.m107dp(i5), AndroidUtilities.m107dp(i6));
        return layoutParams;
    }

    public static LinearLayout.LayoutParams createLinear(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getSize(i), getSize(i2));
        layoutParams.setMargins(AndroidUtilities.m107dp(i4), AndroidUtilities.m107dp(i5), AndroidUtilities.m107dp(i6), AndroidUtilities.m107dp(i7));
        layoutParams.gravity = i3;
        return layoutParams;
    }

    public static LinearLayout.LayoutParams createLinear(int i, int i2, float f, float f2, float f3, float f4) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getSize(i), getSize(i2));
        layoutParams.setMargins(AndroidUtilities.m108dp(f), AndroidUtilities.m108dp(f2), AndroidUtilities.m108dp(f3), AndroidUtilities.m108dp(f4));
        return layoutParams;
    }

    public static LinearLayout.LayoutParams createLinear(int i, int i2, float f, int i3) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getSize(i), getSize(i2), f);
        layoutParams.gravity = i3;
        return layoutParams;
    }

    public static LinearLayout.LayoutParams createLinear(int i, int i2, int i3) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getSize(i), getSize(i2));
        layoutParams.gravity = i3;
        return layoutParams;
    }

    public static LinearLayout.LayoutParams createLinear(int i, int i2, float f) {
        return new LinearLayout.LayoutParams(getSize(i), getSize(i2), f);
    }

    public static LinearLayout.LayoutParams createLinear(int i, int i2) {
        return new LinearLayout.LayoutParams(getSize(i), getSize(i2));
    }

    public static LinearLayout.LayoutParams createLinearRelatively(float f, float f2, int i, float f3, float f4, float f5, float f6) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getSize(f), getSize(f2), getAbsoluteGravity(i));
        layoutParams.leftMargin = AndroidUtilities.m108dp(LocaleController.isRTL ? f5 : f3);
        layoutParams.topMargin = AndroidUtilities.m108dp(f4);
        if (!LocaleController.isRTL) {
            f3 = f5;
        }
        layoutParams.rightMargin = AndroidUtilities.m108dp(f3);
        layoutParams.bottomMargin = AndroidUtilities.m108dp(f6);
        return layoutParams;
    }
}

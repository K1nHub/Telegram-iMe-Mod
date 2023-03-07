package com.smedialink.p031ui.shop.view.custom;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.material.tabs.TabLayout;
import java.lang.reflect.Field;
import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CustomTabLayout.kt */
/* renamed from: com.smedialink.ui.shop.view.custom.CustomTabLayout */
/* loaded from: classes3.dex */
public final class CustomTabLayout extends TabLayout {
    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTabLayout(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        initTabMinWidth(3);
    }

    public final void initTabMinWidth(int i) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int i2 = getScreenSize(context)[0] / i;
        try {
            Field declaredField = TabLayout.class.getDeclaredField("scrollableTabMinWidth");
            Intrinsics.checkNotNullExpressionValue(declaredField, "TabLayout::class.java.ge…SCROLLABLE_TAB_MIN_WIDTH)");
            declaredField.setAccessible(true);
            declaredField.set(this, Integer.valueOf(i2));
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    private final boolean isScreenSizeRetrieved(int[] iArr) {
        return (iArr[0] == 0 || iArr[1] == 0) ? false : true;
    }

    private final int[] getScreenSize(Context context) {
        int[] iArr = {0, 0};
        Object systemService = context.getSystemService("window");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        iArr[0] = point.x;
        iArr[1] = point.y;
        if (!isScreenSizeRetrieved(iArr)) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            iArr[0] = displayMetrics.widthPixels;
            iArr[1] = displayMetrics.heightPixels;
        }
        if (!isScreenSizeRetrieved(iArr)) {
            iArr[0] = defaultDisplay.getWidth();
            iArr[1] = defaultDisplay.getHeight();
        }
        return iArr;
    }

    /* compiled from: CustomTabLayout.kt */
    /* renamed from: com.smedialink.ui.shop.view.custom.CustomTabLayout$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}

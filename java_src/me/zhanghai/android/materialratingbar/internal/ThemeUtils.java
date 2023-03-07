package me.zhanghai.android.materialratingbar.internal;

import android.content.Context;
import android.content.res.TypedArray;
/* loaded from: classes4.dex */
public class ThemeUtils {
    public static int getColorFromAttrRes(int i, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}

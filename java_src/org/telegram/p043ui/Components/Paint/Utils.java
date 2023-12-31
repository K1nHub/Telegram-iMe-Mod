package org.telegram.p043ui.Components.Paint;

import android.graphics.RectF;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
/* renamed from: org.telegram.ui.Components.Paint.Utils */
/* loaded from: classes6.dex */
public class Utils {
    public static void HasGLError() {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            Log.d("Paint", GLUtils.getEGLErrorString(glGetError));
        }
    }

    public static void RectFIntegral(RectF rectF) {
        rectF.left = (int) Math.floor(rectF.left);
        rectF.top = (int) Math.floor(rectF.top);
        rectF.right = (int) Math.ceil(rectF.right);
        rectF.bottom = (int) Math.ceil(rectF.bottom);
    }
}

package org.telegram.p044ui.Components;

import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
/* renamed from: org.telegram.ui.Components.ViewHelper */
/* loaded from: classes6.dex */
public final class ViewHelper {
    public static void setPadding(View view, float f, float f2, float f3, float f4) {
        view.setPadding(AndroidUtilities.m55dp(f), AndroidUtilities.m55dp(f2), AndroidUtilities.m55dp(f3), AndroidUtilities.m55dp(f4));
    }

    public static void setPaddingRelative(View view, float f, float f2, float f3, float f4) {
        boolean z = LocaleController.isRTL;
        float f5 = z ? f3 : f;
        if (!z) {
            f = f3;
        }
        setPadding(view, f5, f2, f, f4);
    }
}

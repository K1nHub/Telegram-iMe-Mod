package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.view.View;
/* loaded from: classes.dex */
public class Debug {
    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }

    public static String getName(Context context, int id) {
        if (id != -1) {
            try {
                return context.getResources().getResourceEntryName(id);
            } catch (Exception unused) {
                return "?" + id;
            }
        }
        return "UNKNOWN";
    }
}

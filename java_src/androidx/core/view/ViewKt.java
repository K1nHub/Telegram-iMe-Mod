package androidx.core.view;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: View.kt */
/* loaded from: classes.dex */
public final class ViewKt {
    public static final void setPadding(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setPadding(i, i, i, i);
    }
}

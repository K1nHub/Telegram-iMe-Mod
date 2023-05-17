package androidx.navigation;

import android.view.View;
import android.view.ViewParent;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: Navigation.kt */
/* loaded from: classes.dex */
final class Navigation$findViewNavController$1 extends Lambda implements Function1<View, View> {
    public static final Navigation$findViewNavController$1 INSTANCE = new Navigation$findViewNavController$1();

    Navigation$findViewNavController$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final View invoke(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ViewParent parent = it.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }
}

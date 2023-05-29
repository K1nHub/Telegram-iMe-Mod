package androidx.navigation;

import android.view.View;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Navigation.kt */
/* loaded from: classes.dex */
public final class Navigation$findViewNavController$2 extends Lambda implements Function1<View, NavController> {
    public static final Navigation$findViewNavController$2 INSTANCE = new Navigation$findViewNavController$2();

    Navigation$findViewNavController$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final NavController invoke(View it) {
        NavController viewNavController;
        Intrinsics.checkNotNullParameter(it, "it");
        viewNavController = Navigation.INSTANCE.getViewNavController(it);
        return viewNavController;
    }
}

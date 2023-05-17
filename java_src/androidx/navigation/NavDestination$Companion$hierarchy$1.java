package androidx.navigation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavDestination.kt */
/* loaded from: classes.dex */
public final class NavDestination$Companion$hierarchy$1 extends Lambda implements Function1<NavDestination, NavDestination> {
    public static final NavDestination$Companion$hierarchy$1 INSTANCE = new NavDestination$Companion$hierarchy$1();

    NavDestination$Companion$hierarchy$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final NavDestination invoke(NavDestination it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getParent();
    }
}

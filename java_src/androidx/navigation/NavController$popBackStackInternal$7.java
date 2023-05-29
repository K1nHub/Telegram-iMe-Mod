package androidx.navigation;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavController.kt */
/* loaded from: classes.dex */
public final class NavController$popBackStackInternal$7 extends Lambda implements Function1<NavDestination, Boolean> {
    final /* synthetic */ NavController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavController$popBackStackInternal$7(NavController navController) {
        super(1);
        this.this$0 = navController;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(NavDestination destination) {
        Map map;
        Intrinsics.checkNotNullParameter(destination, "destination");
        map = this.this$0.backStackMap;
        return Boolean.valueOf(!map.containsKey(Integer.valueOf(destination.getId())));
    }
}

package androidx.navigation;

import androidx.navigation.NavController;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: NavController.kt */
/* loaded from: classes.dex */
final class NavController$NavControllerNavigatorState$pop$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ NavBackStackEntry $popUpTo;
    final /* synthetic */ boolean $saveState;
    final /* synthetic */ NavController.NavControllerNavigatorState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavController$NavControllerNavigatorState$pop$1(NavController.NavControllerNavigatorState navControllerNavigatorState, NavBackStackEntry navBackStackEntry, boolean z) {
        super(0);
        this.this$0 = navControllerNavigatorState;
        this.$popUpTo = navBackStackEntry;
        this.$saveState = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        super/*androidx.navigation.NavigatorState*/.pop(this.$popUpTo, this.$saveState);
    }
}

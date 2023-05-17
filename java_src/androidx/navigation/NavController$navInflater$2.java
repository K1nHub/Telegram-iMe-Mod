package androidx.navigation;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavController.kt */
/* loaded from: classes.dex */
public final class NavController$navInflater$2 extends Lambda implements Function0<NavInflater> {
    final /* synthetic */ NavController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavController$navInflater$2(NavController navController) {
        super(0);
        this.this$0 = navController;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final NavInflater invoke() {
        NavInflater navInflater;
        navInflater = this.this$0.inflater;
        return navInflater == null ? new NavInflater(this.this$0.getContext(), this.this$0._navigatorProvider) : navInflater;
    }
}

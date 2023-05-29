package androidx.navigation;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.SavedStateViewModelFactory;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavBackStackEntry.kt */
/* loaded from: classes.dex */
public final class NavBackStackEntry$defaultFactory$2 extends Lambda implements Function0<SavedStateViewModelFactory> {
    final /* synthetic */ NavBackStackEntry this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavBackStackEntry$defaultFactory$2(NavBackStackEntry navBackStackEntry) {
        super(0);
        this.this$0 = navBackStackEntry;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SavedStateViewModelFactory invoke() {
        Context context;
        context = this.this$0.context;
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
        NavBackStackEntry navBackStackEntry = this.this$0;
        return new SavedStateViewModelFactory(application, navBackStackEntry, navBackStackEntry.getArguments());
    }
}
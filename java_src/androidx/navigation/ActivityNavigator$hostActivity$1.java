package androidx.navigation;

import android.content.Context;
import android.content.ContextWrapper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ActivityNavigator.kt */
/* loaded from: classes.dex */
final class ActivityNavigator$hostActivity$1 extends Lambda implements Function1<Context, Context> {
    public static final ActivityNavigator$hostActivity$1 INSTANCE = new ActivityNavigator$hostActivity$1();

    ActivityNavigator$hostActivity$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Context invoke(Context it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof ContextWrapper) {
            return ((ContextWrapper) it).getBaseContext();
        }
        return null;
    }
}

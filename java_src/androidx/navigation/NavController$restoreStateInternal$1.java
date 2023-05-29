package androidx.navigation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: NavController.kt */
/* loaded from: classes.dex */
final class NavController$restoreStateInternal$1 extends Lambda implements Function1<String, Boolean> {
    final /* synthetic */ String $backStackId;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavController$restoreStateInternal$1(String str) {
        super(1);
        this.$backStackId = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(String str) {
        return Boolean.valueOf(Intrinsics.areEqual(str, this.$backStackId));
    }
}

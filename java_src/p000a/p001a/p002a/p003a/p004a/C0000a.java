package p000a.p001a.p002a.p003a.p004a;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: a.a.a.a.a.a */
/* loaded from: classes.dex */
public final class C0000a {
    /* renamed from: a */
    public static final boolean m1159a(Context context, String packageName) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(packageName, "packageName");
        return context.getPackageManager().getPackageInfo(packageName, 2048) != null;
    }
}

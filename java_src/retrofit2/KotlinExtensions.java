package retrofit2;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: KotlinExtensions.kt */
/* renamed from: retrofit2.-KotlinExtensions  reason: invalid class name */
/* loaded from: classes6.dex */
public final class KotlinExtensions {
    private static final <T> T create(Retrofit retrofit) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) retrofit.create(Object.class);
    }
}

package retrofit2;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: KotlinExtensions.kt */
@Metadata(m157bv = {1, 0, 3}, m156d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001c\u0010\u0002\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, m155d2 = {"T", "Lretrofit2/Retrofit;", "create", "(Lretrofit2/Retrofit;)Ljava/lang/Object;", "retrofit"}, m154k = 2, m153mv = {1, 4, 0})
/* renamed from: retrofit2.-KotlinExtensions  reason: invalid class name */
/* loaded from: classes6.dex */
public final class KotlinExtensions {
    private static final <T> T create(Retrofit retrofit) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) retrofit.create(Object.class);
    }
}

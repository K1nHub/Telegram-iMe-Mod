package kotlinx.coroutines.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
/* compiled from: InlineList.kt */
/* loaded from: classes4.dex */
public final class InlineList<E> {
    /* renamed from: constructor-impl  reason: not valid java name */
    public static <E> Object m2111constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ Object m2112constructorimpl$default(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return m2111constructorimpl(obj);
    }

    /* renamed from: plus-FjFbRPM  reason: not valid java name */
    public static final Object m2113plusFjFbRPM(Object obj, E e) {
        if (!DebugKt.getASSERTIONS_ENABLED() || (!(e instanceof List))) {
            if (obj == null) {
                return m2111constructorimpl(e);
            }
            if (obj instanceof ArrayList) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
                ((ArrayList) obj).add(e);
                return m2111constructorimpl(obj);
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(obj);
            arrayList.add(e);
            return m2111constructorimpl(arrayList);
        }
        throw new AssertionError();
    }
}

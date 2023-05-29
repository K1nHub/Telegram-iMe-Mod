package kotlinx.coroutines.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.DebugKt;
/* compiled from: InlineList.kt */
/* loaded from: classes4.dex */
public final class InlineList<E> {
    /* renamed from: constructor-impl  reason: not valid java name */
    public static <E> Object m1602constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ Object m1603constructorimpl$default(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return m1602constructorimpl(obj);
    }

    /* renamed from: plus-FjFbRPM  reason: not valid java name */
    public static final Object m1604plusFjFbRPM(Object obj, E e) {
        if (!DebugKt.getASSERTIONS_ENABLED() || (!(e instanceof List))) {
            if (obj == null) {
                return m1602constructorimpl(e);
            }
            if (obj instanceof ArrayList) {
                ((ArrayList) obj).add(e);
                return m1602constructorimpl(obj);
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(obj);
            arrayList.add(e);
            return m1602constructorimpl(arrayList);
        }
        throw new AssertionError();
    }
}

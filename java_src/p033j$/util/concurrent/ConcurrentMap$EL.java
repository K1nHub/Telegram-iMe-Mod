package p033j$.util.concurrent;

import java.util.concurrent.ConcurrentMap;
import p033j$.lang.AbstractC2781d;
import p033j$.util.function.Function;
/* renamed from: j$.util.concurrent.ConcurrentMap$-EL  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class ConcurrentMap$EL {
    public static /* synthetic */ Object computeIfAbsent(ConcurrentMap concurrentMap, Object obj, Function function) {
        return concurrentMap instanceof InterfaceC2864b ? ((InterfaceC2864b) concurrentMap).computeIfAbsent(obj, function) : AbstractC2781d.m696a(concurrentMap, obj, function);
    }

    public static Object getOrDefault(ConcurrentMap concurrentMap, Object obj, Object obj2) {
        if (concurrentMap instanceof InterfaceC2864b) {
            return ((InterfaceC2864b) concurrentMap).getOrDefault(obj, obj2);
        }
        Object obj3 = concurrentMap.get(obj);
        return obj3 != null ? obj3 : obj2;
    }
}

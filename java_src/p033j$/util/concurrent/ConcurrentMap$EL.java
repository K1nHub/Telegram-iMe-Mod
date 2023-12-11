package p033j$.util.concurrent;

import java.util.concurrent.ConcurrentMap;
import p033j$.lang.AbstractC2670d;
import p033j$.util.function.Function;
/* renamed from: j$.util.concurrent.ConcurrentMap$-EL  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class ConcurrentMap$EL {
    public static /* synthetic */ Object computeIfAbsent(ConcurrentMap concurrentMap, Object obj, Function function) {
        return concurrentMap instanceof InterfaceC2806b ? ((InterfaceC2806b) concurrentMap).computeIfAbsent(obj, function) : AbstractC2670d.m992a(concurrentMap, obj, function);
    }

    public static Object getOrDefault(ConcurrentMap concurrentMap, Object obj, Object obj2) {
        if (concurrentMap instanceof InterfaceC2806b) {
            return ((InterfaceC2806b) concurrentMap).getOrDefault(obj, obj2);
        }
        Object obj3 = concurrentMap.get(obj);
        return obj3 != null ? obj3 : obj2;
    }
}

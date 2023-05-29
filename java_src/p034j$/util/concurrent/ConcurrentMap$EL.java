package p034j$.util.concurrent;

import java.util.concurrent.ConcurrentMap;
import p034j$.lang.AbstractC2605d;
import p034j$.util.function.Function;
/* renamed from: j$.util.concurrent.ConcurrentMap$-EL  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class ConcurrentMap$EL {
    public static /* synthetic */ Object computeIfAbsent(ConcurrentMap concurrentMap, Object obj, Function function) {
        return concurrentMap instanceof InterfaceC2688b ? ((InterfaceC2688b) concurrentMap).computeIfAbsent(obj, function) : AbstractC2605d.m678a(concurrentMap, obj, function);
    }
}

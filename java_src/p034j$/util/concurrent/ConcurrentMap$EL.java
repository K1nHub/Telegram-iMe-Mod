package p034j$.util.concurrent;

import java.util.concurrent.ConcurrentMap;
import p034j$.lang.AbstractC2360d;
import p034j$.util.function.Function;
/* renamed from: j$.util.concurrent.ConcurrentMap$-EL  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class ConcurrentMap$EL {
    public static /* synthetic */ Object computeIfAbsent(ConcurrentMap concurrentMap, Object obj, Function function) {
        return concurrentMap instanceof InterfaceC2443b ? ((InterfaceC2443b) concurrentMap).computeIfAbsent(obj, function) : AbstractC2360d.m693a(concurrentMap, obj, function);
    }
}

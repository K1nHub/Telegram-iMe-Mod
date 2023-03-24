package p034j$.util.concurrent;

import java.util.concurrent.ConcurrentMap;
import p034j$.lang.AbstractC2498d;
import p034j$.util.function.Function;
/* renamed from: j$.util.concurrent.ConcurrentMap$-EL  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class ConcurrentMap$EL {
    public static /* synthetic */ Object computeIfAbsent(ConcurrentMap concurrentMap, Object obj, Function function) {
        return concurrentMap instanceof InterfaceC2581b ? ((InterfaceC2581b) concurrentMap).computeIfAbsent(obj, function) : AbstractC2498d.m692a(concurrentMap, obj, function);
    }
}

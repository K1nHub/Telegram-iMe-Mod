package p035j$.util.concurrent;

import java.util.concurrent.ConcurrentMap;
import p035j$.lang.AbstractC2574d;
import p035j$.util.function.Function;
/* renamed from: j$.util.concurrent.ConcurrentMap$-EL  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class ConcurrentMap$EL {
    public static /* synthetic */ Object computeIfAbsent(ConcurrentMap concurrentMap, Object obj, Function function) {
        return concurrentMap instanceof InterfaceC2657b ? ((InterfaceC2657b) concurrentMap).computeIfAbsent(obj, function) : AbstractC2574d.m687a(concurrentMap, obj, function);
    }
}

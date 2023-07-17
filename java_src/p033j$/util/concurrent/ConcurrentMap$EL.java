package p033j$.util.concurrent;

import java.util.concurrent.ConcurrentMap;
import p033j$.lang.AbstractC2726d;
import p033j$.util.function.Function;
/* renamed from: j$.util.concurrent.ConcurrentMap$-EL  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class ConcurrentMap$EL {
    public static /* synthetic */ Object computeIfAbsent(ConcurrentMap concurrentMap, Object obj, Function function) {
        return concurrentMap instanceof InterfaceC2809b ? ((InterfaceC2809b) concurrentMap).computeIfAbsent(obj, function) : AbstractC2726d.m678a(concurrentMap, obj, function);
    }
}

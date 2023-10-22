package p033j$.util.concurrent;

import p033j$.util.Map;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
/* renamed from: j$.util.concurrent.b */
/* loaded from: classes2.dex */
public interface InterfaceC2805b extends Map {
    @Override // p033j$.util.Map
    Object computeIfAbsent(Object obj, Function function);

    @Override // p033j$.util.Map
    void forEach(BiConsumer biConsumer);

    @Override // java.util.concurrent.ConcurrentMap, p033j$.util.concurrent.InterfaceC2805b, p033j$.util.Map
    Object getOrDefault(Object obj, Object obj2);
}

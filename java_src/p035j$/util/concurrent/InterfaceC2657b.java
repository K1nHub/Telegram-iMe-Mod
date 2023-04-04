package p035j$.util.concurrent;

import p035j$.util.Map;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.Function;
/* renamed from: j$.util.concurrent.b */
/* loaded from: classes2.dex */
public interface InterfaceC2657b extends Map {
    @Override // p035j$.util.Map
    Object computeIfAbsent(Object obj, Function function);

    @Override // p035j$.util.Map
    void forEach(BiConsumer biConsumer);
}

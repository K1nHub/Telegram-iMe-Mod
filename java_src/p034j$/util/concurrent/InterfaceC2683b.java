package p034j$.util.concurrent;

import p034j$.util.Map;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Function;
/* renamed from: j$.util.concurrent.b */
/* loaded from: classes2.dex */
public interface InterfaceC2683b extends Map {
    @Override // p034j$.util.Map
    Object computeIfAbsent(Object obj, Function function);

    @Override // p034j$.util.Map
    void forEach(BiConsumer biConsumer);
}

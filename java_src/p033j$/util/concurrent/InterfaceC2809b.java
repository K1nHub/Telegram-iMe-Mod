package p033j$.util.concurrent;

import p033j$.util.Map;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
/* renamed from: j$.util.concurrent.b */
/* loaded from: classes2.dex */
public interface InterfaceC2809b extends Map {
    @Override // p033j$.util.Map
    Object computeIfAbsent(Object obj, Function function);

    @Override // p033j$.util.Map
    void forEach(BiConsumer biConsumer);
}

package p034j$.util;

import p034j$.lang.InterfaceC2562e;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2616b extends InterfaceC2562e {
    @Override // p034j$.lang.InterfaceC2562e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo551k(Predicate predicate);

    @Override // p034j$.lang.InterfaceC2562e
    InterfaceC2688s spliterator();

    Stream stream();
}
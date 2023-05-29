package p034j$.util;

import p034j$.lang.InterfaceC2606e;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2660b extends InterfaceC2606e {
    @Override // p034j$.lang.InterfaceC2606e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo556k(Predicate predicate);

    @Override // p034j$.lang.InterfaceC2606e
    InterfaceC2732s spliterator();

    Stream stream();
}

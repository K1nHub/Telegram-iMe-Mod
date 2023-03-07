package p034j$.util;

import p034j$.lang.InterfaceC2361e;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2415b extends InterfaceC2361e {
    @Override // p034j$.lang.InterfaceC2361e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo571k(Predicate predicate);

    @Override // p034j$.lang.InterfaceC2361e
    InterfaceC2487s spliterator();

    Stream stream();
}

package p035j$.util;

import p035j$.lang.InterfaceC2575e;
import p035j$.util.function.Consumer;
import p035j$.util.function.Predicate;
import p035j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2629b extends InterfaceC2575e {
    @Override // p035j$.lang.InterfaceC2575e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo565k(Predicate predicate);

    @Override // p035j$.lang.InterfaceC2575e
    InterfaceC2701s spliterator();

    Stream stream();
}

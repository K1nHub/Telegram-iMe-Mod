package p034j$.util;

import p034j$.lang.InterfaceC2601e;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2655b extends InterfaceC2601e {
    @Override // p034j$.lang.InterfaceC2601e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo556k(Predicate predicate);

    @Override // p034j$.lang.InterfaceC2601e
    InterfaceC2727s spliterator();

    Stream stream();
}

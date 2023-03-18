package p034j$.util;

import p034j$.lang.InterfaceC2485e;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2539b extends InterfaceC2485e {
    @Override // p034j$.lang.InterfaceC2485e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo571k(Predicate predicate);

    @Override // p034j$.lang.InterfaceC2485e
    InterfaceC2611s spliterator();

    Stream stream();
}

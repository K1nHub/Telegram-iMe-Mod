package p034j$.util;

import p034j$.lang.InterfaceC2499e;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2553b extends InterfaceC2499e {
    @Override // p034j$.lang.InterfaceC2499e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo570k(Predicate predicate);

    @Override // p034j$.lang.InterfaceC2499e
    InterfaceC2625s spliterator();

    Stream stream();
}

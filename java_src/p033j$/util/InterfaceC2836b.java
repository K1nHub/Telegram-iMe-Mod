package p033j$.util;

import p033j$.lang.InterfaceC2782e;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2836b extends InterfaceC2782e {
    @Override // p033j$.lang.InterfaceC2782e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo574k(Predicate predicate);

    @Override // p033j$.lang.InterfaceC2782e
    InterfaceC2908s spliterator();

    Stream stream();
}

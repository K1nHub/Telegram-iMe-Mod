package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.A1 */
/* loaded from: classes2.dex */
interface InterfaceC2851A1 {
    /* renamed from: b */
    InterfaceC2851A1 mo343b(int i);

    long count();

    void forEach(Consumer consumer);

    /* renamed from: i */
    void mo385i(Object[] objArr, int i);

    /* renamed from: n */
    int mo383n();

    /* renamed from: p */
    Object[] mo382p(IntFunction intFunction);

    /* renamed from: q */
    InterfaceC2851A1 mo381q(long j, long j2, IntFunction intFunction);

    Spliterator spliterator();
}

package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.A1 */
/* loaded from: classes2.dex */
interface InterfaceC2855A1 {
    /* renamed from: b */
    InterfaceC2855A1 mo344b(int i);

    long count();

    void forEach(Consumer consumer);

    /* renamed from: i */
    void mo386i(Object[] objArr, int i);

    /* renamed from: n */
    int mo384n();

    /* renamed from: p */
    Object[] mo383p(IntFunction intFunction);

    /* renamed from: q */
    InterfaceC2855A1 mo382q(long j, long j2, IntFunction intFunction);

    Spliterator spliterator();
}

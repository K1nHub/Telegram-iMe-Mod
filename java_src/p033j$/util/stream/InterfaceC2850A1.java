package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.A1 */
/* loaded from: classes2.dex */
interface InterfaceC2850A1 {
    /* renamed from: b */
    InterfaceC2850A1 mo347b(int i);

    long count();

    void forEach(Consumer consumer);

    /* renamed from: i */
    void mo389i(Object[] objArr, int i);

    /* renamed from: n */
    int mo387n();

    /* renamed from: p */
    Object[] mo386p(IntFunction intFunction);

    /* renamed from: q */
    InterfaceC2850A1 mo385q(long j, long j2, IntFunction intFunction);

    Spliterator spliterator();
}

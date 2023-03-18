package p034j$.util.stream;

import p034j$.util.C2599h;
import p034j$.util.C2600i;
import p034j$.util.C2602k;
import p034j$.util.InterfaceC2609q;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2587o;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.function.InterfaceC2590r;
import p034j$.util.function.InterfaceC2592t;
import p034j$.util.function.InterfaceC2595w;
import p034j$.util.function.InterfaceC2597y;
import p034j$.wrappers.C2982i0;
import p034j$.wrappers.C2986k0;
import p034j$.wrappers.C2990m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC2788e1 extends InterfaceC2798g {
    /* renamed from: D */
    long mo201D(long j, InterfaceC2587o interfaceC2587o);

    /* renamed from: L */
    boolean mo200L(C2982i0 c2982i0);

    /* renamed from: O */
    InterfaceC2731U mo199O(C2986k0 c2986k0);

    /* renamed from: Q */
    Stream mo198Q(InterfaceC2590r interfaceC2590r);

    /* renamed from: S */
    boolean mo197S(C2982i0 c2982i0);

    /* renamed from: Z */
    void mo196Z(InterfaceC2589q interfaceC2589q);

    InterfaceC2731U asDoubleStream();

    C2600i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo195d(InterfaceC2589q interfaceC2589q);

    InterfaceC2788e1 distinct();

    /* renamed from: e0 */
    IntStream mo194e0(C2990m0 c2990m0);

    /* renamed from: f0 */
    Object mo193f0(InterfaceC2597y interfaceC2597y, InterfaceC2595w interfaceC2595w, BiConsumer biConsumer);

    C2602k findAny();

    C2602k findFirst();

    /* renamed from: g */
    C2602k mo192g(InterfaceC2587o interfaceC2587o);

    @Override // p034j$.util.stream.InterfaceC2798g
    InterfaceC2609q iterator();

    /* renamed from: k */
    boolean mo191k(C2982i0 c2982i0);

    InterfaceC2788e1 limit(long j);

    C2602k max();

    C2602k min();

    /* renamed from: p */
    InterfaceC2788e1 mo189p(InterfaceC2589q interfaceC2589q);

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    InterfaceC2788e1 parallel();

    /* renamed from: s */
    InterfaceC2788e1 mo188s(InterfaceC2590r interfaceC2590r);

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    InterfaceC2788e1 sequential();

    InterfaceC2788e1 skip(long j);

    InterfaceC2788e1 sorted();

    @Override // p034j$.util.stream.InterfaceC2798g
    InterfaceC2611s.InterfaceC2614c spliterator();

    long sum();

    C2599h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC2788e1 mo187u(C2982i0 c2982i0);

    /* renamed from: z */
    InterfaceC2788e1 mo186z(InterfaceC2592t interfaceC2592t);
}

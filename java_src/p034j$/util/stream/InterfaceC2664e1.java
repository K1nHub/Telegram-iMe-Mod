package p034j$.util.stream;

import p034j$.util.C2475h;
import p034j$.util.C2476i;
import p034j$.util.C2478k;
import p034j$.util.InterfaceC2485q;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2463o;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.function.InterfaceC2466r;
import p034j$.util.function.InterfaceC2468t;
import p034j$.util.function.InterfaceC2471w;
import p034j$.util.function.InterfaceC2473y;
import p034j$.wrappers.C2858i0;
import p034j$.wrappers.C2862k0;
import p034j$.wrappers.C2866m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC2664e1 extends InterfaceC2674g {
    /* renamed from: D */
    long mo201D(long j, InterfaceC2463o interfaceC2463o);

    /* renamed from: L */
    boolean mo200L(C2858i0 c2858i0);

    /* renamed from: O */
    InterfaceC2607U mo199O(C2862k0 c2862k0);

    /* renamed from: Q */
    Stream mo198Q(InterfaceC2466r interfaceC2466r);

    /* renamed from: S */
    boolean mo197S(C2858i0 c2858i0);

    /* renamed from: Z */
    void mo196Z(InterfaceC2465q interfaceC2465q);

    InterfaceC2607U asDoubleStream();

    C2476i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo195d(InterfaceC2465q interfaceC2465q);

    InterfaceC2664e1 distinct();

    /* renamed from: e0 */
    IntStream mo194e0(C2866m0 c2866m0);

    /* renamed from: f0 */
    Object mo193f0(InterfaceC2473y interfaceC2473y, InterfaceC2471w interfaceC2471w, BiConsumer biConsumer);

    C2478k findAny();

    C2478k findFirst();

    /* renamed from: g */
    C2478k mo192g(InterfaceC2463o interfaceC2463o);

    @Override // p034j$.util.stream.InterfaceC2674g
    InterfaceC2485q iterator();

    /* renamed from: k */
    boolean mo191k(C2858i0 c2858i0);

    InterfaceC2664e1 limit(long j);

    C2478k max();

    C2478k min();

    /* renamed from: p */
    InterfaceC2664e1 mo189p(InterfaceC2465q interfaceC2465q);

    @Override // p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    InterfaceC2664e1 parallel();

    /* renamed from: s */
    InterfaceC2664e1 mo188s(InterfaceC2466r interfaceC2466r);

    @Override // p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    InterfaceC2664e1 sequential();

    InterfaceC2664e1 skip(long j);

    InterfaceC2664e1 sorted();

    @Override // p034j$.util.stream.InterfaceC2674g
    InterfaceC2487s.InterfaceC2490c spliterator();

    long sum();

    C2475h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC2664e1 mo187u(C2858i0 c2858i0);

    /* renamed from: z */
    InterfaceC2664e1 mo186z(InterfaceC2468t interfaceC2468t);
}

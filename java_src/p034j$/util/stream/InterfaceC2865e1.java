package p034j$.util.stream;

import p034j$.util.C2676h;
import p034j$.util.C2677i;
import p034j$.util.C2679k;
import p034j$.util.InterfaceC2686q;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2664o;
import p034j$.util.function.InterfaceC2666q;
import p034j$.util.function.InterfaceC2667r;
import p034j$.util.function.InterfaceC2669t;
import p034j$.util.function.InterfaceC2672w;
import p034j$.util.function.InterfaceC2674y;
import p034j$.wrappers.C3059i0;
import p034j$.wrappers.C3063k0;
import p034j$.wrappers.C3067m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC2865e1 extends InterfaceC2875g {
    /* renamed from: D */
    long mo181D(long j, InterfaceC2664o interfaceC2664o);

    /* renamed from: L */
    boolean mo180L(C3059i0 c3059i0);

    /* renamed from: O */
    InterfaceC2808U mo179O(C3063k0 c3063k0);

    /* renamed from: Q */
    Stream mo178Q(InterfaceC2667r interfaceC2667r);

    /* renamed from: S */
    boolean mo177S(C3059i0 c3059i0);

    /* renamed from: Z */
    void mo176Z(InterfaceC2666q interfaceC2666q);

    InterfaceC2808U asDoubleStream();

    C2677i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo175d(InterfaceC2666q interfaceC2666q);

    InterfaceC2865e1 distinct();

    /* renamed from: e0 */
    IntStream mo174e0(C3067m0 c3067m0);

    /* renamed from: f0 */
    Object mo173f0(InterfaceC2674y interfaceC2674y, InterfaceC2672w interfaceC2672w, BiConsumer biConsumer);

    C2679k findAny();

    C2679k findFirst();

    /* renamed from: g */
    C2679k mo172g(InterfaceC2664o interfaceC2664o);

    @Override // p034j$.util.stream.InterfaceC2875g
    InterfaceC2686q iterator();

    /* renamed from: k */
    boolean mo171k(C3059i0 c3059i0);

    InterfaceC2865e1 limit(long j);

    C2679k max();

    C2679k min();

    /* renamed from: p */
    InterfaceC2865e1 mo169p(InterfaceC2666q interfaceC2666q);

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    InterfaceC2865e1 parallel();

    /* renamed from: s */
    InterfaceC2865e1 mo168s(InterfaceC2667r interfaceC2667r);

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    InterfaceC2865e1 sequential();

    InterfaceC2865e1 skip(long j);

    InterfaceC2865e1 sorted();

    @Override // p034j$.util.stream.InterfaceC2875g
    InterfaceC2688s.InterfaceC2691c spliterator();

    long sum();

    C2676h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC2865e1 mo167u(C3059i0 c3059i0);

    /* renamed from: z */
    InterfaceC2865e1 mo166z(InterfaceC2669t interfaceC2669t);
}

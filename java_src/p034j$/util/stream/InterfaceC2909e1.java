package p034j$.util.stream;

import p034j$.util.C2720h;
import p034j$.util.C2721i;
import p034j$.util.C2723k;
import p034j$.util.InterfaceC2730q;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2708o;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.function.InterfaceC2711r;
import p034j$.util.function.InterfaceC2713t;
import p034j$.util.function.InterfaceC2716w;
import p034j$.util.function.InterfaceC2718y;
import p034j$.wrappers.C3103i0;
import p034j$.wrappers.C3107k0;
import p034j$.wrappers.C3111m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC2909e1 extends InterfaceC2919g {
    /* renamed from: D */
    long mo186D(long j, InterfaceC2708o interfaceC2708o);

    /* renamed from: L */
    boolean mo185L(C3103i0 c3103i0);

    /* renamed from: O */
    InterfaceC2852U mo184O(C3107k0 c3107k0);

    /* renamed from: Q */
    Stream mo183Q(InterfaceC2711r interfaceC2711r);

    /* renamed from: S */
    boolean mo182S(C3103i0 c3103i0);

    /* renamed from: Z */
    void mo181Z(InterfaceC2710q interfaceC2710q);

    InterfaceC2852U asDoubleStream();

    C2721i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo180d(InterfaceC2710q interfaceC2710q);

    InterfaceC2909e1 distinct();

    /* renamed from: e0 */
    IntStream mo179e0(C3111m0 c3111m0);

    /* renamed from: f0 */
    Object mo178f0(InterfaceC2718y interfaceC2718y, InterfaceC2716w interfaceC2716w, BiConsumer biConsumer);

    C2723k findAny();

    C2723k findFirst();

    /* renamed from: g */
    C2723k mo177g(InterfaceC2708o interfaceC2708o);

    @Override // p034j$.util.stream.InterfaceC2919g
    InterfaceC2730q iterator();

    /* renamed from: k */
    boolean mo176k(C3103i0 c3103i0);

    InterfaceC2909e1 limit(long j);

    C2723k max();

    C2723k min();

    /* renamed from: p */
    InterfaceC2909e1 mo174p(InterfaceC2710q interfaceC2710q);

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    InterfaceC2909e1 parallel();

    /* renamed from: s */
    InterfaceC2909e1 mo173s(InterfaceC2711r interfaceC2711r);

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    InterfaceC2909e1 sequential();

    InterfaceC2909e1 skip(long j);

    InterfaceC2909e1 sorted();

    @Override // p034j$.util.stream.InterfaceC2919g
    InterfaceC2732s.InterfaceC2735c spliterator();

    long sum();

    C2720h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC2909e1 mo172u(C3103i0 c3103i0);

    /* renamed from: z */
    InterfaceC2909e1 mo171z(InterfaceC2713t interfaceC2713t);
}

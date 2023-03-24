package p034j$.util.stream;

import p034j$.util.C2613h;
import p034j$.util.C2614i;
import p034j$.util.C2616k;
import p034j$.util.InterfaceC2623q;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2601o;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.function.InterfaceC2604r;
import p034j$.util.function.InterfaceC2606t;
import p034j$.util.function.InterfaceC2609w;
import p034j$.util.function.InterfaceC2611y;
import p034j$.wrappers.C2996i0;
import p034j$.wrappers.C3000k0;
import p034j$.wrappers.C3004m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC2802e1 extends InterfaceC2812g {
    /* renamed from: D */
    long mo200D(long j, InterfaceC2601o interfaceC2601o);

    /* renamed from: L */
    boolean mo199L(C2996i0 c2996i0);

    /* renamed from: O */
    InterfaceC2745U mo198O(C3000k0 c3000k0);

    /* renamed from: Q */
    Stream mo197Q(InterfaceC2604r interfaceC2604r);

    /* renamed from: S */
    boolean mo196S(C2996i0 c2996i0);

    /* renamed from: Z */
    void mo195Z(InterfaceC2603q interfaceC2603q);

    InterfaceC2745U asDoubleStream();

    C2614i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo194d(InterfaceC2603q interfaceC2603q);

    InterfaceC2802e1 distinct();

    /* renamed from: e0 */
    IntStream mo193e0(C3004m0 c3004m0);

    /* renamed from: f0 */
    Object mo192f0(InterfaceC2611y interfaceC2611y, InterfaceC2609w interfaceC2609w, BiConsumer biConsumer);

    C2616k findAny();

    C2616k findFirst();

    /* renamed from: g */
    C2616k mo191g(InterfaceC2601o interfaceC2601o);

    @Override // p034j$.util.stream.InterfaceC2812g
    InterfaceC2623q iterator();

    /* renamed from: k */
    boolean mo190k(C2996i0 c2996i0);

    InterfaceC2802e1 limit(long j);

    C2616k max();

    C2616k min();

    /* renamed from: p */
    InterfaceC2802e1 mo188p(InterfaceC2603q interfaceC2603q);

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    InterfaceC2802e1 parallel();

    /* renamed from: s */
    InterfaceC2802e1 mo187s(InterfaceC2604r interfaceC2604r);

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    InterfaceC2802e1 sequential();

    InterfaceC2802e1 skip(long j);

    InterfaceC2802e1 sorted();

    @Override // p034j$.util.stream.InterfaceC2812g
    InterfaceC2625s.InterfaceC2628c spliterator();

    long sum();

    C2613h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC2802e1 mo186u(C2996i0 c2996i0);

    /* renamed from: z */
    InterfaceC2802e1 mo185z(InterfaceC2606t interfaceC2606t);
}

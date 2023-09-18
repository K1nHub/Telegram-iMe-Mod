package p033j$.util.stream;

import p033j$.util.C2896h;
import p033j$.util.C2897i;
import p033j$.util.C2899k;
import p033j$.util.InterfaceC2906q;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2884o;
import p033j$.util.function.InterfaceC2886q;
import p033j$.util.function.InterfaceC2887r;
import p033j$.util.function.InterfaceC2889t;
import p033j$.util.function.InterfaceC2892w;
import p033j$.util.function.InterfaceC2894y;
import p033j$.wrappers.C3279i0;
import p033j$.wrappers.C3283k0;
import p033j$.wrappers.C3287m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC3085e1 extends InterfaceC3095g {
    /* renamed from: D */
    long mo204D(long j, InterfaceC2884o interfaceC2884o);

    /* renamed from: L */
    boolean mo203L(C3279i0 c3279i0);

    /* renamed from: O */
    InterfaceC3028U mo202O(C3283k0 c3283k0);

    /* renamed from: Q */
    Stream mo201Q(InterfaceC2887r interfaceC2887r);

    /* renamed from: S */
    boolean mo200S(C3279i0 c3279i0);

    /* renamed from: Z */
    void mo199Z(InterfaceC2886q interfaceC2886q);

    InterfaceC3028U asDoubleStream();

    C2897i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo198d(InterfaceC2886q interfaceC2886q);

    InterfaceC3085e1 distinct();

    /* renamed from: e0 */
    IntStream mo197e0(C3287m0 c3287m0);

    /* renamed from: f0 */
    Object mo196f0(InterfaceC2894y interfaceC2894y, InterfaceC2892w interfaceC2892w, BiConsumer biConsumer);

    C2899k findAny();

    C2899k findFirst();

    /* renamed from: g */
    C2899k mo195g(InterfaceC2884o interfaceC2884o);

    @Override // p033j$.util.stream.InterfaceC3095g
    InterfaceC2906q iterator();

    /* renamed from: k */
    boolean mo194k(C3279i0 c3279i0);

    InterfaceC3085e1 limit(long j);

    C2899k max();

    C2899k min();

    /* renamed from: p */
    InterfaceC3085e1 mo192p(InterfaceC2886q interfaceC2886q);

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    InterfaceC3085e1 parallel();

    /* renamed from: s */
    InterfaceC3085e1 mo191s(InterfaceC2887r interfaceC2887r);

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    InterfaceC3085e1 sequential();

    InterfaceC3085e1 skip(long j);

    InterfaceC3085e1 sorted();

    @Override // p033j$.util.stream.InterfaceC3095g
    InterfaceC2908s.InterfaceC2911c spliterator();

    long sum();

    C2896h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC3085e1 mo190u(C3279i0 c3279i0);

    /* renamed from: z */
    InterfaceC3085e1 mo189z(InterfaceC2889t interfaceC2889t);
}

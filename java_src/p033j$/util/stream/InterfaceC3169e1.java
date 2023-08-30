package p033j$.util.stream;

import p033j$.util.C2980h;
import p033j$.util.C2981i;
import p033j$.util.C2983k;
import p033j$.util.InterfaceC2990q;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2968o;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.function.InterfaceC2971r;
import p033j$.util.function.InterfaceC2973t;
import p033j$.util.function.InterfaceC2976w;
import p033j$.util.function.InterfaceC2978y;
import p033j$.wrappers.C3363i0;
import p033j$.wrappers.C3367k0;
import p033j$.wrappers.C3371m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC3169e1 extends InterfaceC3179g {
    /* renamed from: D */
    long mo204D(long j, InterfaceC2968o interfaceC2968o);

    /* renamed from: L */
    boolean mo203L(C3363i0 c3363i0);

    /* renamed from: O */
    InterfaceC3112U mo202O(C3367k0 c3367k0);

    /* renamed from: Q */
    Stream mo201Q(InterfaceC2971r interfaceC2971r);

    /* renamed from: S */
    boolean mo200S(C3363i0 c3363i0);

    /* renamed from: Z */
    void mo199Z(InterfaceC2970q interfaceC2970q);

    InterfaceC3112U asDoubleStream();

    C2981i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo198d(InterfaceC2970q interfaceC2970q);

    InterfaceC3169e1 distinct();

    /* renamed from: e0 */
    IntStream mo197e0(C3371m0 c3371m0);

    /* renamed from: f0 */
    Object mo196f0(InterfaceC2978y interfaceC2978y, InterfaceC2976w interfaceC2976w, BiConsumer biConsumer);

    C2983k findAny();

    C2983k findFirst();

    /* renamed from: g */
    C2983k mo195g(InterfaceC2968o interfaceC2968o);

    @Override // p033j$.util.stream.InterfaceC3179g
    InterfaceC2990q iterator();

    /* renamed from: k */
    boolean mo194k(C3363i0 c3363i0);

    InterfaceC3169e1 limit(long j);

    C2983k max();

    C2983k min();

    /* renamed from: p */
    InterfaceC3169e1 mo192p(InterfaceC2970q interfaceC2970q);

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    InterfaceC3169e1 parallel();

    /* renamed from: s */
    InterfaceC3169e1 mo191s(InterfaceC2971r interfaceC2971r);

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    InterfaceC3169e1 sequential();

    InterfaceC3169e1 skip(long j);

    InterfaceC3169e1 sorted();

    @Override // p033j$.util.stream.InterfaceC3179g
    InterfaceC2992s.InterfaceC2995c spliterator();

    long sum();

    C2980h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC3169e1 mo190u(C3363i0 c3363i0);

    /* renamed from: z */
    InterfaceC3169e1 mo189z(InterfaceC2973t interfaceC2973t);
}

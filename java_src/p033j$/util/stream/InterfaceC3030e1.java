package p033j$.util.stream;

import p033j$.util.C2841h;
import p033j$.util.C2842i;
import p033j$.util.C2844k;
import p033j$.util.InterfaceC2851q;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2829o;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2832r;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.InterfaceC2837w;
import p033j$.util.function.InterfaceC2839y;
import p033j$.wrappers.C3224i0;
import p033j$.wrappers.C3228k0;
import p033j$.wrappers.C3232m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC3030e1 extends InterfaceC3040g {
    /* renamed from: D */
    long mo204D(long j, InterfaceC2829o interfaceC2829o);

    /* renamed from: L */
    boolean mo203L(C3224i0 c3224i0);

    /* renamed from: O */
    InterfaceC2973U mo202O(C3228k0 c3228k0);

    /* renamed from: Q */
    Stream mo201Q(InterfaceC2832r interfaceC2832r);

    /* renamed from: S */
    boolean mo200S(C3224i0 c3224i0);

    /* renamed from: Z */
    void mo199Z(InterfaceC2831q interfaceC2831q);

    InterfaceC2973U asDoubleStream();

    C2842i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo198d(InterfaceC2831q interfaceC2831q);

    InterfaceC3030e1 distinct();

    /* renamed from: e0 */
    IntStream mo197e0(C3232m0 c3232m0);

    /* renamed from: f0 */
    Object mo196f0(InterfaceC2839y interfaceC2839y, InterfaceC2837w interfaceC2837w, BiConsumer biConsumer);

    C2844k findAny();

    C2844k findFirst();

    /* renamed from: g */
    C2844k mo195g(InterfaceC2829o interfaceC2829o);

    @Override // p033j$.util.stream.InterfaceC3040g
    InterfaceC2851q iterator();

    /* renamed from: k */
    boolean mo194k(C3224i0 c3224i0);

    InterfaceC3030e1 limit(long j);

    C2844k max();

    C2844k min();

    /* renamed from: p */
    InterfaceC3030e1 mo192p(InterfaceC2831q interfaceC2831q);

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    InterfaceC3030e1 parallel();

    /* renamed from: s */
    InterfaceC3030e1 mo191s(InterfaceC2832r interfaceC2832r);

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    InterfaceC3030e1 sequential();

    InterfaceC3030e1 skip(long j);

    InterfaceC3030e1 sorted();

    @Override // p033j$.util.stream.InterfaceC3040g
    InterfaceC2853s.InterfaceC2856c spliterator();

    long sum();

    C2841h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC3030e1 mo190u(C3224i0 c3224i0);

    /* renamed from: z */
    InterfaceC3030e1 mo189z(InterfaceC2834t interfaceC2834t);
}

package p033j$.util.stream;

import p033j$.util.C2810f;
import p033j$.util.C2835g;
import p033j$.util.C2837i;
import p033j$.util.InterfaceC2845p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2824n;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.function.InterfaceC2827q;
import p033j$.util.function.InterfaceC2829s;
import p033j$.util.function.InterfaceC2832v;
import p033j$.util.function.InterfaceC2834x;
import p033j$.wrappers.C3209g0;
import p033j$.wrappers.C3213i0;
import p033j$.wrappers.C3217k0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC3022e1 extends InterfaceC3032g {
    /* renamed from: C */
    long mo256C(long j, InterfaceC2824n interfaceC2824n);

    /* renamed from: K */
    boolean mo255K(C3209g0 c3209g0);

    /* renamed from: N */
    InterfaceC2965U mo254N(C3213i0 c3213i0);

    /* renamed from: P */
    Stream mo253P(InterfaceC2827q interfaceC2827q);

    /* renamed from: R */
    boolean mo252R(C3209g0 c3209g0);

    /* renamed from: Y */
    void mo251Y(InterfaceC2826p interfaceC2826p);

    InterfaceC2965U asDoubleStream();

    C2835g average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo250d(InterfaceC2826p interfaceC2826p);

    /* renamed from: d0 */
    IntStream mo249d0(C3217k0 c3217k0);

    InterfaceC3022e1 distinct();

    /* renamed from: e0 */
    Object mo248e0(InterfaceC2834x interfaceC2834x, InterfaceC2832v interfaceC2832v, BiConsumer biConsumer);

    C2837i findAny();

    C2837i findFirst();

    /* renamed from: g */
    C2837i mo247g(InterfaceC2824n interfaceC2824n);

    @Override // p033j$.util.stream.InterfaceC3032g
    InterfaceC2845p iterator();

    /* renamed from: k */
    boolean mo246k(C3209g0 c3209g0);

    InterfaceC3022e1 limit(long j);

    C2837i max();

    C2837i min();

    /* renamed from: o */
    InterfaceC3022e1 mo244o(InterfaceC2826p interfaceC2826p);

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    InterfaceC3022e1 parallel();

    /* renamed from: r */
    InterfaceC3022e1 mo243r(InterfaceC2827q interfaceC2827q);

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    InterfaceC3022e1 sequential();

    InterfaceC3022e1 skip(long j);

    InterfaceC3022e1 sorted();

    @Override // p033j$.util.stream.InterfaceC3032g
    Spliterator.InterfaceC2774c spliterator();

    long sum();

    C2810f summaryStatistics();

    /* renamed from: t */
    InterfaceC3022e1 mo242t(C3209g0 c3209g0);

    long[] toArray();

    /* renamed from: y */
    InterfaceC3022e1 mo241y(InterfaceC2829s interfaceC2829s);
}

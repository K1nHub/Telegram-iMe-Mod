package p034j$.util.stream;

import p034j$.util.C2714g;
import p034j$.util.C2716i;
import p034j$.util.C2717j;
import p034j$.util.InterfaceC2722o;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2698j;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2702n;
import p034j$.util.function.InterfaceC2710v;
import p034j$.util.function.InterfaceC2713y;
import p034j$.wrappers.C3075U;
import p034j$.wrappers.C3077W;
import p034j$.wrappers.C3082a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC2914g {
    /* renamed from: A */
    InterfaceC2847U mo267A(C3077W c3077w);

    /* renamed from: C */
    boolean mo266C(C3075U c3075u);

    /* renamed from: F */
    boolean mo265F(C3075U c3075u);

    /* renamed from: I */
    void mo264I(InterfaceC2700l interfaceC2700l);

    /* renamed from: J */
    Stream mo263J(InterfaceC2701m interfaceC2701m);

    /* renamed from: N */
    int mo262N(int i, InterfaceC2698j interfaceC2698j);

    /* renamed from: P */
    IntStream mo261P(InterfaceC2701m interfaceC2701m);

    /* renamed from: U */
    void mo260U(InterfaceC2700l interfaceC2700l);

    /* renamed from: a0 */
    C2717j mo259a0(InterfaceC2698j interfaceC2698j);

    InterfaceC2847U asDoubleStream();

    InterfaceC2904e1 asLongStream();

    C2716i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo258c0(InterfaceC2700l interfaceC2700l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC2904e1 mo257f(InterfaceC2702n interfaceC2702n);

    C2717j findAny();

    C2717j findFirst();

    /* renamed from: h */
    IntStream mo256h(C3075U c3075u);

    @Override // p034j$.util.stream.InterfaceC2914g
    InterfaceC2722o.InterfaceC2723a iterator();

    /* renamed from: k0 */
    Object mo255k0(InterfaceC2713y interfaceC2713y, InterfaceC2710v interfaceC2710v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2717j max();

    C2717j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo254q(C3082a0 c3082a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p034j$.util.stream.InterfaceC2914g
    InterfaceC2727s.InterfaceC2729b spliterator();

    int sum();

    C2714g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo253v(C3075U c3075u);
}

package p035j$.util.stream;

import p035j$.util.C2689h;
import p035j$.util.C2690i;
import p035j$.util.C2692k;
import p035j$.util.InterfaceC2699q;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2677o;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.function.InterfaceC2680r;
import p035j$.util.function.InterfaceC2682t;
import p035j$.util.function.InterfaceC2685w;
import p035j$.util.function.InterfaceC2687y;
import p035j$.wrappers.C3072i0;
import p035j$.wrappers.C3076k0;
import p035j$.wrappers.C3080m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC2878e1 extends InterfaceC2888g {
    /* renamed from: D */
    long mo195D(long j, InterfaceC2677o interfaceC2677o);

    /* renamed from: L */
    boolean mo194L(C3072i0 c3072i0);

    /* renamed from: O */
    InterfaceC2821U mo193O(C3076k0 c3076k0);

    /* renamed from: Q */
    Stream mo192Q(InterfaceC2680r interfaceC2680r);

    /* renamed from: S */
    boolean mo191S(C3072i0 c3072i0);

    /* renamed from: Z */
    void mo190Z(InterfaceC2679q interfaceC2679q);

    InterfaceC2821U asDoubleStream();

    C2690i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo189d(InterfaceC2679q interfaceC2679q);

    InterfaceC2878e1 distinct();

    /* renamed from: e0 */
    IntStream mo188e0(C3080m0 c3080m0);

    /* renamed from: f0 */
    Object mo187f0(InterfaceC2687y interfaceC2687y, InterfaceC2685w interfaceC2685w, BiConsumer biConsumer);

    C2692k findAny();

    C2692k findFirst();

    /* renamed from: g */
    C2692k mo186g(InterfaceC2677o interfaceC2677o);

    @Override // p035j$.util.stream.InterfaceC2888g
    InterfaceC2699q iterator();

    /* renamed from: k */
    boolean mo185k(C3072i0 c3072i0);

    InterfaceC2878e1 limit(long j);

    C2692k max();

    C2692k min();

    /* renamed from: p */
    InterfaceC2878e1 mo183p(InterfaceC2679q interfaceC2679q);

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    InterfaceC2878e1 parallel();

    /* renamed from: s */
    InterfaceC2878e1 mo182s(InterfaceC2680r interfaceC2680r);

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    InterfaceC2878e1 sequential();

    InterfaceC2878e1 skip(long j);

    InterfaceC2878e1 sorted();

    @Override // p035j$.util.stream.InterfaceC2888g
    InterfaceC2701s.InterfaceC2704c spliterator();

    long sum();

    C2689h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC2878e1 mo181u(C3072i0 c3072i0);

    /* renamed from: z */
    InterfaceC2878e1 mo180z(InterfaceC2682t interfaceC2682t);
}

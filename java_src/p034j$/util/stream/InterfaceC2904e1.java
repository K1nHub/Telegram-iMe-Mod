package p034j$.util.stream;

import p034j$.util.C2715h;
import p034j$.util.C2716i;
import p034j$.util.C2718k;
import p034j$.util.InterfaceC2725q;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2703o;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.function.InterfaceC2706r;
import p034j$.util.function.InterfaceC2708t;
import p034j$.util.function.InterfaceC2711w;
import p034j$.util.function.InterfaceC2713y;
import p034j$.wrappers.C3098i0;
import p034j$.wrappers.C3102k0;
import p034j$.wrappers.C3106m0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC2904e1 extends InterfaceC2914g {
    /* renamed from: D */
    long mo186D(long j, InterfaceC2703o interfaceC2703o);

    /* renamed from: L */
    boolean mo185L(C3098i0 c3098i0);

    /* renamed from: O */
    InterfaceC2847U mo184O(C3102k0 c3102k0);

    /* renamed from: Q */
    Stream mo183Q(InterfaceC2706r interfaceC2706r);

    /* renamed from: S */
    boolean mo182S(C3098i0 c3098i0);

    /* renamed from: Z */
    void mo181Z(InterfaceC2705q interfaceC2705q);

    InterfaceC2847U asDoubleStream();

    C2716i average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo180d(InterfaceC2705q interfaceC2705q);

    InterfaceC2904e1 distinct();

    /* renamed from: e0 */
    IntStream mo179e0(C3106m0 c3106m0);

    /* renamed from: f0 */
    Object mo178f0(InterfaceC2713y interfaceC2713y, InterfaceC2711w interfaceC2711w, BiConsumer biConsumer);

    C2718k findAny();

    C2718k findFirst();

    /* renamed from: g */
    C2718k mo177g(InterfaceC2703o interfaceC2703o);

    @Override // p034j$.util.stream.InterfaceC2914g
    InterfaceC2725q iterator();

    /* renamed from: k */
    boolean mo176k(C3098i0 c3098i0);

    InterfaceC2904e1 limit(long j);

    C2718k max();

    C2718k min();

    /* renamed from: p */
    InterfaceC2904e1 mo174p(InterfaceC2705q interfaceC2705q);

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    InterfaceC2904e1 parallel();

    /* renamed from: s */
    InterfaceC2904e1 mo173s(InterfaceC2706r interfaceC2706r);

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    InterfaceC2904e1 sequential();

    InterfaceC2904e1 skip(long j);

    InterfaceC2904e1 sorted();

    @Override // p034j$.util.stream.InterfaceC2914g
    InterfaceC2727s.InterfaceC2730c spliterator();

    long sum();

    C2715h summaryStatistics();

    long[] toArray();

    /* renamed from: u */
    InterfaceC2904e1 mo172u(C3098i0 c3098i0);

    /* renamed from: z */
    InterfaceC2904e1 mo171z(InterfaceC2708t interfaceC2708t);
}

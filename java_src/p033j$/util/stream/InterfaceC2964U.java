package p033j$.util.stream;

import p033j$.util.C2807d;
import p033j$.util.C2834g;
import p033j$.util.InterfaceC2839l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2813d;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2816g;
import p033j$.util.function.InterfaceC2817h;
import p033j$.util.function.InterfaceC2829t;
import p033j$.util.function.InterfaceC2833x;
import p033j$.wrappers.C3162C;
import p033j$.wrappers.C3166E;
import p033j$.wrappers.C3174I;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2964U extends InterfaceC3031g {
    /* renamed from: F */
    C2834g mo280F(InterfaceC2813d interfaceC2813d);

    /* renamed from: G */
    Object mo279G(InterfaceC2833x interfaceC2833x, InterfaceC2829t interfaceC2829t, BiConsumer biConsumer);

    /* renamed from: J */
    double mo278J(double d, InterfaceC2813d interfaceC2813d);

    /* renamed from: L */
    Stream mo277L(InterfaceC2816g interfaceC2816g);

    /* renamed from: Q */
    IntStream mo276Q(C3166E c3166e);

    /* renamed from: X */
    boolean mo275X(C3162C c3162c);

    C2834g average();

    /* renamed from: b */
    InterfaceC2964U mo274b(InterfaceC2815f interfaceC2815f);

    Stream boxed();

    long count();

    InterfaceC2964U distinct();

    C2834g findAny();

    C2834g findFirst();

    /* renamed from: g0 */
    boolean mo273g0(C3162C c3162c);

    /* renamed from: h0 */
    boolean mo272h0(C3162C c3162c);

    @Override // p033j$.util.stream.InterfaceC3031g
    InterfaceC2839l iterator();

    /* renamed from: j */
    void mo271j(InterfaceC2815f interfaceC2815f);

    /* renamed from: k0 */
    void mo270k0(InterfaceC2815f interfaceC2815f);

    InterfaceC2964U limit(long j);

    C2834g max();

    C2834g min();

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    InterfaceC2964U parallel();

    /* renamed from: q */
    InterfaceC2964U mo268q(C3162C c3162c);

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    InterfaceC2964U sequential();

    InterfaceC2964U skip(long j);

    InterfaceC2964U sorted();

    @Override // p033j$.util.stream.InterfaceC3031g
    Spliterator.InterfaceC2771a spliterator();

    double sum();

    C2807d summaryStatistics();

    double[] toArray();

    /* renamed from: v */
    InterfaceC2964U mo267v(InterfaceC2816g interfaceC2816g);

    /* renamed from: w */
    InterfaceC3021e1 mo266w(InterfaceC2817h interfaceC2817h);

    /* renamed from: x */
    InterfaceC2964U mo265x(C3174I c3174i);
}

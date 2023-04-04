package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.C2667e;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2734E4 extends AbstractC2752H4 implements InterfaceC2701s.InterfaceC2702a, InterfaceC2668f {

    /* renamed from: e */
    double f733e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2734E4(InterfaceC2701s.InterfaceC2702a interfaceC2702a, long j, long j2) {
        super(interfaceC2702a, j, j2);
    }

    C2734E4(InterfaceC2701s.InterfaceC2702a interfaceC2702a, C2734E4 c2734e4) {
        super(interfaceC2702a, c2734e4);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    public void accept(double d) {
        this.f733e = d;
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m611j(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m619b(this, consumer);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }

    @Override // p035j$.util.stream.AbstractC2764J4
    /* renamed from: q */
    protected InterfaceC2701s mo508q(InterfaceC2701s interfaceC2701s) {
        return new C2734E4((InterfaceC2701s.InterfaceC2702a) interfaceC2701s, this);
    }

    @Override // p035j$.util.stream.AbstractC2752H4
    /* renamed from: s */
    protected void mo511s(Object obj) {
        ((InterfaceC2668f) obj).accept(this.f733e);
    }

    @Override // p035j$.util.stream.AbstractC2752H4
    /* renamed from: t */
    protected AbstractC2911j4 mo510t(int i) {
        return new C2893g4(i);
    }
}

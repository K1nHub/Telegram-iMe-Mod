package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.C2654e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2721E4 extends AbstractC2739H4 implements InterfaceC2688s.InterfaceC2689a, InterfaceC2655f {

    /* renamed from: e */
    double f728e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2721E4(InterfaceC2688s.InterfaceC2689a interfaceC2689a, long j, long j2) {
        super(interfaceC2689a, j, j2);
    }

    C2721E4(InterfaceC2688s.InterfaceC2689a interfaceC2689a, C2721E4 c2721e4) {
        super(interfaceC2689a, c2721e4);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    public void accept(double d) {
        this.f728e = d;
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m597j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m605b(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }

    @Override // p034j$.util.stream.AbstractC2751J4
    /* renamed from: q */
    protected InterfaceC2688s mo494q(InterfaceC2688s interfaceC2688s) {
        return new C2721E4((InterfaceC2688s.InterfaceC2689a) interfaceC2688s, this);
    }

    @Override // p034j$.util.stream.AbstractC2739H4
    /* renamed from: s */
    protected void mo497s(Object obj) {
        ((InterfaceC2655f) obj).accept(this.f728e);
    }

    @Override // p034j$.util.stream.AbstractC2739H4
    /* renamed from: t */
    protected AbstractC2898j4 mo496t(int i) {
        return new C2880g4(i);
    }
}

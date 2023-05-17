package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.C2693e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2760E4 extends AbstractC2778H4 implements InterfaceC2727s.InterfaceC2728a, InterfaceC2694f {

    /* renamed from: e */
    double f731e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2760E4(InterfaceC2727s.InterfaceC2728a interfaceC2728a, long j, long j2) {
        super(interfaceC2728a, j, j2);
    }

    C2760E4(InterfaceC2727s.InterfaceC2728a interfaceC2728a, C2760E4 c2760e4) {
        super(interfaceC2728a, c2760e4);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    public void accept(double d) {
        this.f731e = d;
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m601j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m609b(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }

    @Override // p034j$.util.stream.AbstractC2790J4
    /* renamed from: q */
    protected InterfaceC2727s mo499q(InterfaceC2727s interfaceC2727s) {
        return new C2760E4((InterfaceC2727s.InterfaceC2728a) interfaceC2727s, this);
    }

    @Override // p034j$.util.stream.AbstractC2778H4
    /* renamed from: s */
    protected void mo502s(Object obj) {
        ((InterfaceC2694f) obj).accept(this.f731e);
    }

    @Override // p034j$.util.stream.AbstractC2778H4
    /* renamed from: t */
    protected AbstractC2937j4 mo501t(int i) {
        return new C2919g4(i);
    }
}

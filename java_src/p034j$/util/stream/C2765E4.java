package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.C2698e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2765E4 extends AbstractC2783H4 implements InterfaceC2732s.InterfaceC2733a, InterfaceC2699f {

    /* renamed from: e */
    double f731e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2765E4(InterfaceC2732s.InterfaceC2733a interfaceC2733a, long j, long j2) {
        super(interfaceC2733a, j, j2);
    }

    C2765E4(InterfaceC2732s.InterfaceC2733a interfaceC2733a, C2765E4 c2765e4) {
        super(interfaceC2733a, c2765e4);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    public void accept(double d) {
        this.f731e = d;
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m601j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m609b(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }

    @Override // p034j$.util.stream.AbstractC2795J4
    /* renamed from: q */
    protected InterfaceC2732s mo499q(InterfaceC2732s interfaceC2732s) {
        return new C2765E4((InterfaceC2732s.InterfaceC2733a) interfaceC2732s, this);
    }

    @Override // p034j$.util.stream.AbstractC2783H4
    /* renamed from: s */
    protected void mo502s(Object obj) {
        ((InterfaceC2699f) obj).accept(this.f731e);
    }

    @Override // p034j$.util.stream.AbstractC2783H4
    /* renamed from: t */
    protected AbstractC2942j4 mo501t(int i) {
        return new C2924g4(i);
    }
}

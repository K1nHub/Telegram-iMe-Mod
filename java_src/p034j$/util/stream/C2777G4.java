package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.C2709p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2777G4 extends AbstractC2783H4 implements InterfaceC2732s.InterfaceC2735c, InterfaceC2710q {

    /* renamed from: e */
    long f750e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2777G4(InterfaceC2732s.InterfaceC2735c interfaceC2735c, long j, long j2) {
        super(interfaceC2735c, j, j2);
    }

    C2777G4(InterfaceC2732s.InterfaceC2735c interfaceC2735c, C2777G4 c2777g4) {
        super(interfaceC2735c, c2777g4);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        this.f750e = j;
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m599l(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m607d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2795J4
    /* renamed from: q */
    protected InterfaceC2732s mo499q(InterfaceC2732s interfaceC2732s) {
        return new C2777G4((InterfaceC2732s.InterfaceC2735c) interfaceC2732s, this);
    }

    @Override // p034j$.util.stream.AbstractC2783H4
    /* renamed from: s */
    protected void mo502s(Object obj) {
        ((InterfaceC2710q) obj).accept(this.f750e);
    }

    @Override // p034j$.util.stream.AbstractC2783H4
    /* renamed from: t */
    protected AbstractC2942j4 mo501t(int i) {
        return new C2936i4(i);
    }
}

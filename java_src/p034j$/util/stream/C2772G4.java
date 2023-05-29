package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.C2704p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2772G4 extends AbstractC2778H4 implements InterfaceC2727s.InterfaceC2730c, InterfaceC2705q {

    /* renamed from: e */
    long f750e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2772G4(InterfaceC2727s.InterfaceC2730c interfaceC2730c, long j, long j2) {
        super(interfaceC2730c, j, j2);
    }

    C2772G4(InterfaceC2727s.InterfaceC2730c interfaceC2730c, C2772G4 c2772g4) {
        super(interfaceC2730c, c2772g4);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        this.f750e = j;
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m599l(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m607d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2790J4
    /* renamed from: q */
    protected InterfaceC2727s mo499q(InterfaceC2727s interfaceC2727s) {
        return new C2772G4((InterfaceC2727s.InterfaceC2730c) interfaceC2727s, this);
    }

    @Override // p034j$.util.stream.AbstractC2778H4
    /* renamed from: s */
    protected void mo502s(Object obj) {
        ((InterfaceC2705q) obj).accept(this.f750e);
    }

    @Override // p034j$.util.stream.AbstractC2778H4
    /* renamed from: t */
    protected AbstractC2937j4 mo501t(int i) {
        return new C2931i4(i);
    }
}

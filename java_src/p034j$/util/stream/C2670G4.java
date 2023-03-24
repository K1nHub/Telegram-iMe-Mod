package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.C2602p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2670G4 extends AbstractC2676H4 implements InterfaceC2625s.InterfaceC2628c, InterfaceC2603q {

    /* renamed from: e */
    long f747e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2670G4(InterfaceC2625s.InterfaceC2628c interfaceC2628c, long j, long j2) {
        super(interfaceC2628c, j, j2);
    }

    C2670G4(InterfaceC2625s.InterfaceC2628c interfaceC2628c, C2670G4 c2670g4) {
        super(interfaceC2628c, c2670g4);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        this.f747e = j;
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m614l(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m622d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2688J4
    /* renamed from: q */
    protected InterfaceC2625s mo513q(InterfaceC2625s interfaceC2625s) {
        return new C2670G4((InterfaceC2625s.InterfaceC2628c) interfaceC2625s, this);
    }

    @Override // p034j$.util.stream.AbstractC2676H4
    /* renamed from: s */
    protected void mo516s(Object obj) {
        ((InterfaceC2603q) obj).accept(this.f747e);
    }

    @Override // p034j$.util.stream.AbstractC2676H4
    /* renamed from: t */
    protected AbstractC2835j4 mo515t(int i) {
        return new C2829i4(i);
    }
}

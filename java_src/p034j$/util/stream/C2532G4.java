package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.C2464p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2532G4 extends AbstractC2538H4 implements InterfaceC2487s.InterfaceC2490c, InterfaceC2465q {

    /* renamed from: e */
    long f741e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2532G4(InterfaceC2487s.InterfaceC2490c interfaceC2490c, long j, long j2) {
        super(interfaceC2490c, j, j2);
    }

    C2532G4(InterfaceC2487s.InterfaceC2490c interfaceC2490c, C2532G4 c2532g4) {
        super(interfaceC2490c, c2532g4);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        this.f741e = j;
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m615l(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m623d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2550J4
    /* renamed from: q */
    protected InterfaceC2487s mo514q(InterfaceC2487s interfaceC2487s) {
        return new C2532G4((InterfaceC2487s.InterfaceC2490c) interfaceC2487s, this);
    }

    @Override // p034j$.util.stream.AbstractC2538H4
    /* renamed from: s */
    protected void mo517s(Object obj) {
        ((InterfaceC2465q) obj).accept(this.f741e);
    }

    @Override // p034j$.util.stream.AbstractC2538H4
    /* renamed from: t */
    protected AbstractC2697j4 mo516t(int i) {
        return new C2691i4(i);
    }
}

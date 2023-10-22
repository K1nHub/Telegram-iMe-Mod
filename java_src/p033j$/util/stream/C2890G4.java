package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2825o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2890G4 extends AbstractC2896H4 implements Spliterator.InterfaceC2774c, InterfaceC2826p {

    /* renamed from: e */
    long f885e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2890G4(Spliterator.InterfaceC2774c interfaceC2774c, long j, long j2) {
        super(interfaceC2774c, j, j2);
    }

    C2890G4(Spliterator.InterfaceC2774c interfaceC2774c, C2890G4 c2890g4) {
        super(interfaceC2774c, c2890g4);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        this.f885e = j;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m597h(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m602c(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2908J4
    /* renamed from: q */
    protected Spliterator mo562q(Spliterator spliterator) {
        return new C2890G4((Spliterator.InterfaceC2774c) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2896H4
    /* renamed from: s */
    protected void mo565s(Object obj) {
        ((InterfaceC2826p) obj).accept(this.f885e);
    }

    @Override // p033j$.util.stream.AbstractC2896H4
    /* renamed from: t */
    protected AbstractC3055j4 mo564t(int i) {
        return new C3049i4(i);
    }
}

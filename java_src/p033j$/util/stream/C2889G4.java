package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2889G4 extends AbstractC2895H4 implements Spliterator.InterfaceC2773c, InterfaceC2825p {

    /* renamed from: e */
    long f885e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2889G4(Spliterator.InterfaceC2773c interfaceC2773c, long j, long j2) {
        super(interfaceC2773c, j, j2);
    }

    C2889G4(Spliterator.InterfaceC2773c interfaceC2773c, C2889G4 c2889g4) {
        super(interfaceC2773c, c2889g4);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        this.f885e = j;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m601h(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m606c(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2907J4
    /* renamed from: q */
    protected Spliterator mo566q(Spliterator spliterator) {
        return new C2889G4((Spliterator.InterfaceC2773c) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2895H4
    /* renamed from: s */
    protected void mo569s(Object obj) {
        ((InterfaceC2825p) obj).accept(this.f885e);
    }

    @Override // p033j$.util.stream.AbstractC2895H4
    /* renamed from: t */
    protected AbstractC3054j4 mo568t(int i) {
        return new C3048i4(i);
    }
}

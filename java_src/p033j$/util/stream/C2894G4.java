package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2894G4 extends AbstractC2900H4 implements Spliterator.InterfaceC2778c, InterfaceC2830p {

    /* renamed from: e */
    long f885e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2894G4(Spliterator.InterfaceC2778c interfaceC2778c, long j, long j2) {
        super(interfaceC2778c, j, j2);
    }

    C2894G4(Spliterator.InterfaceC2778c interfaceC2778c, C2894G4 c2894g4) {
        super(interfaceC2778c, c2894g4);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        this.f885e = j;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m598h(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m603c(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2912J4
    /* renamed from: q */
    protected Spliterator mo563q(Spliterator spliterator) {
        return new C2894G4((Spliterator.InterfaceC2778c) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2900H4
    /* renamed from: s */
    protected void mo566s(Object obj) {
        ((InterfaceC2830p) obj).accept(this.f885e);
    }

    @Override // p033j$.util.stream.AbstractC2900H4
    /* renamed from: t */
    protected AbstractC3059j4 mo565t(int i) {
        return new C3053i4(i);
    }
}

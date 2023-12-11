package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2826o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2891G4 extends AbstractC2897H4 implements Spliterator.InterfaceC2775c, InterfaceC2827p {

    /* renamed from: e */
    long f885e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2891G4(Spliterator.InterfaceC2775c interfaceC2775c, long j, long j2) {
        super(interfaceC2775c, j, j2);
    }

    C2891G4(Spliterator.InterfaceC2775c interfaceC2775c, C2891G4 c2891g4) {
        super(interfaceC2775c, c2891g4);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        this.f885e = j;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m598h(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m603c(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2909J4
    /* renamed from: q */
    protected Spliterator mo563q(Spliterator spliterator) {
        return new C2891G4((Spliterator.InterfaceC2775c) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2897H4
    /* renamed from: s */
    protected void mo566s(Object obj) {
        ((InterfaceC2827p) obj).accept(this.f885e);
    }

    @Override // p033j$.util.stream.AbstractC2897H4
    /* renamed from: t */
    protected AbstractC3056j4 mo565t(int i) {
        return new C3050i4(i);
    }
}

package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2883F4 extends AbstractC2895H4 implements Spliterator.InterfaceC2772b, InterfaceC2821l {

    /* renamed from: e */
    int f877e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2883F4(Spliterator.InterfaceC2772b interfaceC2772b, long j, long j2) {
        super(interfaceC2772b, j, j2);
    }

    C2883F4(Spliterator.InterfaceC2772b interfaceC2772b, C2883F4 c2883f4) {
        super(interfaceC2772b, c2883f4);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    public void accept(int i) {
        this.f877e = i;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m602g(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m607b(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }

    @Override // p033j$.util.stream.AbstractC2907J4
    /* renamed from: q */
    protected Spliterator mo566q(Spliterator spliterator) {
        return new C2883F4((Spliterator.InterfaceC2772b) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2895H4
    /* renamed from: s */
    protected void mo569s(Object obj) {
        ((InterfaceC2821l) obj).accept(this.f877e);
    }

    @Override // p033j$.util.stream.AbstractC2895H4
    /* renamed from: t */
    protected AbstractC3054j4 mo568t(int i) {
        return new C3042h4(i);
    }
}

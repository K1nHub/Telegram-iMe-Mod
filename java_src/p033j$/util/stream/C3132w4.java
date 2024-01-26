package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C3132w4 extends AbstractC3150z4 implements Spliterator.InterfaceC2772b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3132w4(Spliterator.InterfaceC2772b interfaceC2772b, long j, long j2) {
        super(interfaceC2772b, j, j2);
    }

    C3132w4(Spliterator.InterfaceC2772b interfaceC2772b, long j, long j2, long j3, long j4) {
        super(interfaceC2772b, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2871D4
    /* renamed from: a */
    protected Spliterator mo348a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3132w4((Spliterator.InterfaceC2772b) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m602g(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3150z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo338f() {
        return new InterfaceC2821l() { // from class: j$.util.stream.v4
            @Override // p033j$.util.function.InterfaceC2821l
            public final void accept(int i) {
            }

            @Override // p033j$.util.function.InterfaceC2821l
            /* renamed from: k */
            public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
                Objects.requireNonNull(interfaceC2821l);
                return new C2820k(this, interfaceC2821l);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m607b(this, consumer);
    }
}

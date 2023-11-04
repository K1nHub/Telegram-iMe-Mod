package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3149y4 extends AbstractC3155z4 implements Spliterator.InterfaceC2778c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3149y4(Spliterator.InterfaceC2778c interfaceC2778c, long j, long j2) {
        super(interfaceC2778c, j, j2);
    }

    C3149y4(Spliterator.InterfaceC2778c interfaceC2778c, long j, long j2, long j3, long j4) {
        super(interfaceC2778c, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2876D4
    /* renamed from: a */
    protected Spliterator mo345a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3149y4((Spliterator.InterfaceC2778c) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m598h(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3155z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo335f() {
        return new InterfaceC2830p() { // from class: j$.util.stream.x4
            @Override // p033j$.util.function.InterfaceC2830p
            public final void accept(long j) {
            }

            @Override // p033j$.util.function.InterfaceC2830p
            /* renamed from: f */
            public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
                Objects.requireNonNull(interfaceC2830p);
                return new C2829o(this, interfaceC2830p);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m603c(this, consumer);
    }
}

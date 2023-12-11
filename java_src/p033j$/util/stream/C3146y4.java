package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2826o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3146y4 extends AbstractC3152z4 implements Spliterator.InterfaceC2775c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3146y4(Spliterator.InterfaceC2775c interfaceC2775c, long j, long j2) {
        super(interfaceC2775c, j, j2);
    }

    C3146y4(Spliterator.InterfaceC2775c interfaceC2775c, long j, long j2, long j3, long j4) {
        super(interfaceC2775c, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2873D4
    /* renamed from: a */
    protected Spliterator mo345a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3146y4((Spliterator.InterfaceC2775c) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m598h(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3152z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo335f() {
        return new InterfaceC2827p() { // from class: j$.util.stream.x4
            @Override // p033j$.util.function.InterfaceC2827p
            public final void accept(long j) {
            }

            @Override // p033j$.util.function.InterfaceC2827p
            /* renamed from: f */
            public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
                Objects.requireNonNull(interfaceC2827p);
                return new C2826o(this, interfaceC2827p);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m603c(this, consumer);
    }
}

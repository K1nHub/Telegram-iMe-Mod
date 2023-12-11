package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C3134w4 extends AbstractC3152z4 implements Spliterator.InterfaceC2774b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3134w4(Spliterator.InterfaceC2774b interfaceC2774b, long j, long j2) {
        super(interfaceC2774b, j, j2);
    }

    C3134w4(Spliterator.InterfaceC2774b interfaceC2774b, long j, long j2, long j3, long j4) {
        super(interfaceC2774b, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2873D4
    /* renamed from: a */
    protected Spliterator mo345a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3134w4((Spliterator.InterfaceC2774b) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m599g(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3152z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo335f() {
        return new InterfaceC2823l() { // from class: j$.util.stream.v4
            @Override // p033j$.util.function.InterfaceC2823l
            public final void accept(int i) {
            }

            @Override // p033j$.util.function.InterfaceC2823l
            /* renamed from: k */
            public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
                Objects.requireNonNull(interfaceC2823l);
                return new C2822k(this, interfaceC2823l);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m604b(this, consumer);
    }
}

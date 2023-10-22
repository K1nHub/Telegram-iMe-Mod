package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2825o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3145y4 extends AbstractC3151z4 implements Spliterator.InterfaceC2774c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3145y4(Spliterator.InterfaceC2774c interfaceC2774c, long j, long j2) {
        super(interfaceC2774c, j, j2);
    }

    C3145y4(Spliterator.InterfaceC2774c interfaceC2774c, long j, long j2, long j3, long j4) {
        super(interfaceC2774c, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2872D4
    /* renamed from: a */
    protected Spliterator mo344a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3145y4((Spliterator.InterfaceC2774c) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m597h(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3151z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo334f() {
        return new InterfaceC2826p() { // from class: j$.util.stream.x4
            @Override // p033j$.util.function.InterfaceC2826p
            public final void accept(long j) {
            }

            @Override // p033j$.util.function.InterfaceC2826p
            /* renamed from: f */
            public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
                Objects.requireNonNull(interfaceC2826p);
                return new C2825o(this, interfaceC2826p);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m602c(this, consumer);
    }
}

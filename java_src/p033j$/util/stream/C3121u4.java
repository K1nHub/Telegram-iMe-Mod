package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C3121u4 extends AbstractC3151z4 implements Spliterator.InterfaceC2772a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3121u4(Spliterator.InterfaceC2772a interfaceC2772a, long j, long j2) {
        super(interfaceC2772a, j, j2);
    }

    C3121u4(Spliterator.InterfaceC2772a interfaceC2772a, long j, long j2, long j3, long j4) {
        super(interfaceC2772a, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2872D4
    /* renamed from: a */
    protected Spliterator mo344a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3121u4((Spliterator.InterfaceC2772a) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m599f(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3151z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo334f() {
        return new InterfaceC2816f() { // from class: j$.util.stream.t4
            @Override // p033j$.util.function.InterfaceC2816f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2816f
            /* renamed from: j */
            public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
                Objects.requireNonNull(interfaceC2816f);
                return new C2815e(this, interfaceC2816f);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m604a(this, consumer);
    }
}

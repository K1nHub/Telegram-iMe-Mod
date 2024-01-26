package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2814e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C3120u4 extends AbstractC3150z4 implements Spliterator.InterfaceC2771a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3120u4(Spliterator.InterfaceC2771a interfaceC2771a, long j, long j2) {
        super(interfaceC2771a, j, j2);
    }

    C3120u4(Spliterator.InterfaceC2771a interfaceC2771a, long j, long j2, long j3, long j4) {
        super(interfaceC2771a, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2871D4
    /* renamed from: a */
    protected Spliterator mo348a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3120u4((Spliterator.InterfaceC2771a) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m603f(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3150z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo338f() {
        return new InterfaceC2815f() { // from class: j$.util.stream.t4
            @Override // p033j$.util.function.InterfaceC2815f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2815f
            /* renamed from: j */
            public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
                Objects.requireNonNull(interfaceC2815f);
                return new C2814e(this, interfaceC2815f);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m608a(this, consumer);
    }
}

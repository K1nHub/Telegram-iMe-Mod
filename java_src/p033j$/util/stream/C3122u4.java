package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C3122u4 extends AbstractC3152z4 implements Spliterator.InterfaceC2773a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3122u4(Spliterator.InterfaceC2773a interfaceC2773a, long j, long j2) {
        super(interfaceC2773a, j, j2);
    }

    C3122u4(Spliterator.InterfaceC2773a interfaceC2773a, long j, long j2, long j3, long j4) {
        super(interfaceC2773a, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2873D4
    /* renamed from: a */
    protected Spliterator mo345a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3122u4((Spliterator.InterfaceC2773a) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m600f(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3152z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo335f() {
        return new InterfaceC2817f() { // from class: j$.util.stream.t4
            @Override // p033j$.util.function.InterfaceC2817f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2817f
            /* renamed from: j */
            public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
                Objects.requireNonNull(interfaceC2817f);
                return new C2816e(this, interfaceC2817f);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m605a(this, consumer);
    }
}

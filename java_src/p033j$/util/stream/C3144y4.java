package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3144y4 extends AbstractC3150z4 implements Spliterator.InterfaceC2773c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3144y4(Spliterator.InterfaceC2773c interfaceC2773c, long j, long j2) {
        super(interfaceC2773c, j, j2);
    }

    C3144y4(Spliterator.InterfaceC2773c interfaceC2773c, long j, long j2, long j3, long j4) {
        super(interfaceC2773c, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2871D4
    /* renamed from: a */
    protected Spliterator mo348a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3144y4((Spliterator.InterfaceC2773c) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m601h(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3150z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo338f() {
        return new InterfaceC2825p() { // from class: j$.util.stream.x4
            @Override // p033j$.util.function.InterfaceC2825p
            public final void accept(long j) {
            }

            @Override // p033j$.util.function.InterfaceC2825p
            /* renamed from: f */
            public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
                Objects.requireNonNull(interfaceC2825p);
                return new C2824o(this, interfaceC2825p);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m606c(this, consumer);
    }
}

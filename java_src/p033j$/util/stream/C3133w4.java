package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2821k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C3133w4 extends AbstractC3151z4 implements Spliterator.InterfaceC2773b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3133w4(Spliterator.InterfaceC2773b interfaceC2773b, long j, long j2) {
        super(interfaceC2773b, j, j2);
    }

    C3133w4(Spliterator.InterfaceC2773b interfaceC2773b, long j, long j2, long j3, long j4) {
        super(interfaceC2773b, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2872D4
    /* renamed from: a */
    protected Spliterator mo344a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3133w4((Spliterator.InterfaceC2773b) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m598g(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3151z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo334f() {
        return new InterfaceC2822l() { // from class: j$.util.stream.v4
            @Override // p033j$.util.function.InterfaceC2822l
            public final void accept(int i) {
            }

            @Override // p033j$.util.function.InterfaceC2822l
            /* renamed from: k */
            public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
                Objects.requireNonNull(interfaceC2822l);
                return new C2821k(this, interfaceC2822l);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m603b(this, consumer);
    }
}

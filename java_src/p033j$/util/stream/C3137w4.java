package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C3137w4 extends AbstractC3155z4 implements Spliterator.InterfaceC2777b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3137w4(Spliterator.InterfaceC2777b interfaceC2777b, long j, long j2) {
        super(interfaceC2777b, j, j2);
    }

    C3137w4(Spliterator.InterfaceC2777b interfaceC2777b, long j, long j2, long j3, long j4) {
        super(interfaceC2777b, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2876D4
    /* renamed from: a */
    protected Spliterator mo345a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3137w4((Spliterator.InterfaceC2777b) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m599g(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3155z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo335f() {
        return new InterfaceC2826l() { // from class: j$.util.stream.v4
            @Override // p033j$.util.function.InterfaceC2826l
            public final void accept(int i) {
            }

            @Override // p033j$.util.function.InterfaceC2826l
            /* renamed from: k */
            public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m604b(this, consumer);
    }
}

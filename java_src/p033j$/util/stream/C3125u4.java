package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C3125u4 extends AbstractC3155z4 implements Spliterator.InterfaceC2776a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3125u4(Spliterator.InterfaceC2776a interfaceC2776a, long j, long j2) {
        super(interfaceC2776a, j, j2);
    }

    C3125u4(Spliterator.InterfaceC2776a interfaceC2776a, long j, long j2, long j3, long j4) {
        super(interfaceC2776a, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2876D4
    /* renamed from: a */
    protected Spliterator mo345a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3125u4((Spliterator.InterfaceC2776a) spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m600f(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3155z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo335f() {
        return new InterfaceC2820f() { // from class: j$.util.stream.t4
            @Override // p033j$.util.function.InterfaceC2820f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2820f
            /* renamed from: j */
            public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
            }
        };
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m605a(this, consumer);
    }
}

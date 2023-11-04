package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2882E4 extends AbstractC2900H4 implements Spliterator.InterfaceC2776a, InterfaceC2820f {

    /* renamed from: e */
    double f866e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2882E4(Spliterator.InterfaceC2776a interfaceC2776a, long j, long j2) {
        super(interfaceC2776a, j, j2);
    }

    C2882E4(Spliterator.InterfaceC2776a interfaceC2776a, C2882E4 c2882e4) {
        super(interfaceC2776a, c2882e4);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        this.f866e = d;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m600f(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m605a(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.AbstractC2912J4
    /* renamed from: q */
    protected Spliterator mo563q(Spliterator spliterator) {
        return new C2882E4((Spliterator.InterfaceC2776a) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2900H4
    /* renamed from: s */
    protected void mo566s(Object obj) {
        ((InterfaceC2820f) obj).accept(this.f866e);
    }

    @Override // p033j$.util.stream.AbstractC2900H4
    /* renamed from: t */
    protected AbstractC3059j4 mo565t(int i) {
        return new C3041g4(i);
    }
}

package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2885F4 extends AbstractC2897H4 implements Spliterator.InterfaceC2774b, InterfaceC2823l {

    /* renamed from: e */
    int f877e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2885F4(Spliterator.InterfaceC2774b interfaceC2774b, long j, long j2) {
        super(interfaceC2774b, j, j2);
    }

    C2885F4(Spliterator.InterfaceC2774b interfaceC2774b, C2885F4 c2885f4) {
        super(interfaceC2774b, c2885f4);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    public void accept(int i) {
        this.f877e = i;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m599g(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m604b(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }

    @Override // p033j$.util.stream.AbstractC2909J4
    /* renamed from: q */
    protected Spliterator mo563q(Spliterator spliterator) {
        return new C2885F4((Spliterator.InterfaceC2774b) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2897H4
    /* renamed from: s */
    protected void mo566s(Object obj) {
        ((InterfaceC2823l) obj).accept(this.f877e);
    }

    @Override // p033j$.util.stream.AbstractC2897H4
    /* renamed from: t */
    protected AbstractC3056j4 mo565t(int i) {
        return new C3044h4(i);
    }
}

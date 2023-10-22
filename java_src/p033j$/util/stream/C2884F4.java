package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2821k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2884F4 extends AbstractC2896H4 implements Spliterator.InterfaceC2773b, InterfaceC2822l {

    /* renamed from: e */
    int f877e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2884F4(Spliterator.InterfaceC2773b interfaceC2773b, long j, long j2) {
        super(interfaceC2773b, j, j2);
    }

    C2884F4(Spliterator.InterfaceC2773b interfaceC2773b, C2884F4 c2884f4) {
        super(interfaceC2773b, c2884f4);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    public void accept(int i) {
        this.f877e = i;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m598g(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m603b(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }

    @Override // p033j$.util.stream.AbstractC2908J4
    /* renamed from: q */
    protected Spliterator mo562q(Spliterator spliterator) {
        return new C2884F4((Spliterator.InterfaceC2773b) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2896H4
    /* renamed from: s */
    protected void mo565s(Object obj) {
        ((InterfaceC2822l) obj).accept(this.f877e);
    }

    @Override // p033j$.util.stream.AbstractC2896H4
    /* renamed from: t */
    protected AbstractC3055j4 mo564t(int i) {
        return new C3043h4(i);
    }
}

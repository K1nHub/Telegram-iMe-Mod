package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2888F4 extends AbstractC2900H4 implements Spliterator.InterfaceC2777b, InterfaceC2826l {

    /* renamed from: e */
    int f877e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2888F4(Spliterator.InterfaceC2777b interfaceC2777b, long j, long j2) {
        super(interfaceC2777b, j, j2);
    }

    C2888F4(Spliterator.InterfaceC2777b interfaceC2777b, C2888F4 c2888f4) {
        super(interfaceC2777b, c2888f4);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        this.f877e = i;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m599g(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m604b(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.AbstractC2912J4
    /* renamed from: q */
    protected Spliterator mo563q(Spliterator spliterator) {
        return new C2888F4((Spliterator.InterfaceC2777b) spliterator, this);
    }

    @Override // p033j$.util.stream.AbstractC2900H4
    /* renamed from: s */
    protected void mo566s(Object obj) {
        ((InterfaceC2826l) obj).accept(this.f877e);
    }

    @Override // p033j$.util.stream.AbstractC2900H4
    /* renamed from: t */
    protected AbstractC3059j4 mo565t(int i) {
        return new C3047h4(i);
    }
}

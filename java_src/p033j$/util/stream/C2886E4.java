package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2886E4 extends AbstractC2904H4 implements InterfaceC2853s.InterfaceC2854a, InterfaceC2820f {

    /* renamed from: e */
    double f816e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2886E4(InterfaceC2853s.InterfaceC2854a interfaceC2854a, long j, long j2) {
        super(interfaceC2854a, j, j2);
    }

    C2886E4(InterfaceC2853s.InterfaceC2854a interfaceC2854a, C2886E4 c2886e4) {
        super(interfaceC2854a, c2886e4);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        this.f816e = d;
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m627b(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.AbstractC2916J4
    /* renamed from: q */
    protected InterfaceC2853s mo517q(InterfaceC2853s interfaceC2853s) {
        return new C2886E4((InterfaceC2853s.InterfaceC2854a) interfaceC2853s, this);
    }

    @Override // p033j$.util.stream.AbstractC2904H4
    /* renamed from: s */
    protected void mo520s(Object obj) {
        ((InterfaceC2820f) obj).accept(this.f816e);
    }

    @Override // p033j$.util.stream.AbstractC2904H4
    /* renamed from: t */
    protected AbstractC3063j4 mo519t(int i) {
        return new C3045g4(i);
    }
}

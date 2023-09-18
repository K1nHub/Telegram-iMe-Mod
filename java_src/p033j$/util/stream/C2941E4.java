package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2941E4 extends AbstractC2959H4 implements InterfaceC2908s.InterfaceC2909a, InterfaceC2875f {

    /* renamed from: e */
    double f817e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2941E4(InterfaceC2908s.InterfaceC2909a interfaceC2909a, long j, long j2) {
        super(interfaceC2909a, j, j2);
    }

    C2941E4(InterfaceC2908s.InterfaceC2909a interfaceC2909a, C2941E4 c2941e4) {
        super(interfaceC2909a, c2941e4);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    public void accept(double d) {
        this.f817e = d;
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m627b(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }

    @Override // p033j$.util.stream.AbstractC2971J4
    /* renamed from: q */
    protected InterfaceC2908s mo517q(InterfaceC2908s interfaceC2908s) {
        return new C2941E4((InterfaceC2908s.InterfaceC2909a) interfaceC2908s, this);
    }

    @Override // p033j$.util.stream.AbstractC2959H4
    /* renamed from: s */
    protected void mo520s(Object obj) {
        ((InterfaceC2875f) obj).accept(this.f817e);
    }

    @Override // p033j$.util.stream.AbstractC2959H4
    /* renamed from: t */
    protected AbstractC3118j4 mo519t(int i) {
        return new C3100g4(i);
    }
}

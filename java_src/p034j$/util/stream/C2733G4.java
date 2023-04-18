package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.C2665p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2733G4 extends AbstractC2739H4 implements InterfaceC2688s.InterfaceC2691c, InterfaceC2666q {

    /* renamed from: e */
    long f747e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2733G4(InterfaceC2688s.InterfaceC2691c interfaceC2691c, long j, long j2) {
        super(interfaceC2691c, j, j2);
    }

    C2733G4(InterfaceC2688s.InterfaceC2691c interfaceC2691c, C2733G4 c2733g4) {
        super(interfaceC2691c, c2733g4);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        this.f747e = j;
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m595l(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m603d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2751J4
    /* renamed from: q */
    protected InterfaceC2688s mo494q(InterfaceC2688s interfaceC2688s) {
        return new C2733G4((InterfaceC2688s.InterfaceC2691c) interfaceC2688s, this);
    }

    @Override // p034j$.util.stream.AbstractC2739H4
    /* renamed from: s */
    protected void mo497s(Object obj) {
        ((InterfaceC2666q) obj).accept(this.f747e);
    }

    @Override // p034j$.util.stream.AbstractC2739H4
    /* renamed from: t */
    protected AbstractC2898j4 mo496t(int i) {
        return new C2892i4(i);
    }
}

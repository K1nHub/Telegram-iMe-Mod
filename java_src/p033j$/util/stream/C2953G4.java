package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2953G4 extends AbstractC2959H4 implements InterfaceC2908s.InterfaceC2911c, InterfaceC2886q {

    /* renamed from: e */
    long f836e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2953G4(InterfaceC2908s.InterfaceC2911c interfaceC2911c, long j, long j2) {
        super(interfaceC2911c, j, j2);
    }

    C2953G4(InterfaceC2908s.InterfaceC2911c interfaceC2911c, C2953G4 c2953g4) {
        super(interfaceC2911c, c2953g4);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        this.f836e = j;
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m617l(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m625d(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2971J4
    /* renamed from: q */
    protected InterfaceC2908s mo517q(InterfaceC2908s interfaceC2908s) {
        return new C2953G4((InterfaceC2908s.InterfaceC2911c) interfaceC2908s, this);
    }

    @Override // p033j$.util.stream.AbstractC2959H4
    /* renamed from: s */
    protected void mo520s(Object obj) {
        ((InterfaceC2886q) obj).accept(this.f836e);
    }

    @Override // p033j$.util.stream.AbstractC2959H4
    /* renamed from: t */
    protected AbstractC3118j4 mo519t(int i) {
        return new C3112i4(i);
    }
}

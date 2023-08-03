package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2830p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2898G4 extends AbstractC2904H4 implements InterfaceC2853s.InterfaceC2856c, InterfaceC2831q {

    /* renamed from: e */
    long f835e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2898G4(InterfaceC2853s.InterfaceC2856c interfaceC2856c, long j, long j2) {
        super(interfaceC2856c, j, j2);
    }

    C2898G4(InterfaceC2853s.InterfaceC2856c interfaceC2856c, C2898G4 c2898g4) {
        super(interfaceC2856c, c2898g4);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        this.f835e = j;
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m617l(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo158f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m625d(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2916J4
    /* renamed from: q */
    protected InterfaceC2853s mo517q(InterfaceC2853s interfaceC2853s) {
        return new C2898G4((InterfaceC2853s.InterfaceC2856c) interfaceC2853s, this);
    }

    @Override // p033j$.util.stream.AbstractC2904H4
    /* renamed from: s */
    protected void mo520s(Object obj) {
        ((InterfaceC2831q) obj).accept(this.f835e);
    }

    @Override // p033j$.util.stream.AbstractC2904H4
    /* renamed from: t */
    protected AbstractC3063j4 mo519t(int i) {
        return new C3057i4(i);
    }
}

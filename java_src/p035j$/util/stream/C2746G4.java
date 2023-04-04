package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.C2678p;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2746G4 extends AbstractC2752H4 implements InterfaceC2701s.InterfaceC2704c, InterfaceC2679q {

    /* renamed from: e */
    long f752e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2746G4(InterfaceC2701s.InterfaceC2704c interfaceC2704c, long j, long j2) {
        super(interfaceC2704c, j, j2);
    }

    C2746G4(InterfaceC2701s.InterfaceC2704c interfaceC2704c, C2746G4 c2746g4) {
        super(interfaceC2704c, c2746g4);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        this.f752e = j;
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m609l(this, consumer);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m617d(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC2764J4
    /* renamed from: q */
    protected InterfaceC2701s mo508q(InterfaceC2701s interfaceC2701s) {
        return new C2746G4((InterfaceC2701s.InterfaceC2704c) interfaceC2701s, this);
    }

    @Override // p035j$.util.stream.AbstractC2752H4
    /* renamed from: s */
    protected void mo511s(Object obj) {
        ((InterfaceC2679q) obj).accept(this.f752e);
    }

    @Override // p035j$.util.stream.AbstractC2752H4
    /* renamed from: t */
    protected AbstractC2911j4 mo510t(int i) {
        return new C2905i4(i);
    }
}

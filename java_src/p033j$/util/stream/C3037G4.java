package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2969p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C3037G4 extends AbstractC3043H4 implements InterfaceC2992s.InterfaceC2995c, InterfaceC2970q {

    /* renamed from: e */
    long f845e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3037G4(InterfaceC2992s.InterfaceC2995c interfaceC2995c, long j, long j2) {
        super(interfaceC2995c, j, j2);
    }

    C3037G4(InterfaceC2992s.InterfaceC2995c interfaceC2995c, C3037G4 c3037g4) {
        super(interfaceC2995c, c3037g4);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        this.f845e = j;
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m617l(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m625d(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3055J4
    /* renamed from: q */
    protected InterfaceC2992s mo517q(InterfaceC2992s interfaceC2992s) {
        return new C3037G4((InterfaceC2992s.InterfaceC2995c) interfaceC2992s, this);
    }

    @Override // p033j$.util.stream.AbstractC3043H4
    /* renamed from: s */
    protected void mo520s(Object obj) {
        ((InterfaceC2970q) obj).accept(this.f845e);
    }

    @Override // p033j$.util.stream.AbstractC3043H4
    /* renamed from: t */
    protected AbstractC3202j4 mo519t(int i) {
        return new C3196i4(i);
    }
}

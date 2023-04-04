package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.C2673k;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2740F4 extends AbstractC2752H4 implements InterfaceC2701s.InterfaceC2703b, InterfaceC2674l {

    /* renamed from: e */
    int f744e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2740F4(InterfaceC2701s.InterfaceC2703b interfaceC2703b, long j, long j2) {
        super(interfaceC2703b, j, j2);
    }

    C2740F4(InterfaceC2701s.InterfaceC2703b interfaceC2703b, C2740F4 c2740f4) {
        super(interfaceC2703b, c2740f4);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    public void accept(int i) {
        this.f744e = i;
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m610k(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m618c(this, consumer);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }

    @Override // p035j$.util.stream.AbstractC2764J4
    /* renamed from: q */
    protected InterfaceC2701s mo508q(InterfaceC2701s interfaceC2701s) {
        return new C2740F4((InterfaceC2701s.InterfaceC2703b) interfaceC2701s, this);
    }

    @Override // p035j$.util.stream.AbstractC2752H4
    /* renamed from: s */
    protected void mo511s(Object obj) {
        ((InterfaceC2674l) obj).accept(this.f744e);
    }

    @Override // p035j$.util.stream.AbstractC2752H4
    /* renamed from: t */
    protected AbstractC2911j4 mo510t(int i) {
        return new C2899h4(i);
    }
}

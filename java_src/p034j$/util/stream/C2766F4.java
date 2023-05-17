package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.C2699k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2766F4 extends AbstractC2778H4 implements InterfaceC2727s.InterfaceC2729b, InterfaceC2700l {

    /* renamed from: e */
    int f742e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2766F4(InterfaceC2727s.InterfaceC2729b interfaceC2729b, long j, long j2) {
        super(interfaceC2729b, j, j2);
    }

    C2766F4(InterfaceC2727s.InterfaceC2729b interfaceC2729b, C2766F4 c2766f4) {
        super(interfaceC2729b, c2766f4);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    public void accept(int i) {
        this.f742e = i;
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m600k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m608c(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }

    @Override // p034j$.util.stream.AbstractC2790J4
    /* renamed from: q */
    protected InterfaceC2727s mo499q(InterfaceC2727s interfaceC2727s) {
        return new C2766F4((InterfaceC2727s.InterfaceC2729b) interfaceC2727s, this);
    }

    @Override // p034j$.util.stream.AbstractC2778H4
    /* renamed from: s */
    protected void mo502s(Object obj) {
        ((InterfaceC2700l) obj).accept(this.f742e);
    }

    @Override // p034j$.util.stream.AbstractC2778H4
    /* renamed from: t */
    protected AbstractC2937j4 mo501t(int i) {
        return new C2925h4(i);
    }
}

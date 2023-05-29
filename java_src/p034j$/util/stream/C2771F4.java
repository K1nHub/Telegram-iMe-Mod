package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.C2704k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2771F4 extends AbstractC2783H4 implements InterfaceC2732s.InterfaceC2734b, InterfaceC2705l {

    /* renamed from: e */
    int f742e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2771F4(InterfaceC2732s.InterfaceC2734b interfaceC2734b, long j, long j2) {
        super(interfaceC2734b, j, j2);
    }

    C2771F4(InterfaceC2732s.InterfaceC2734b interfaceC2734b, C2771F4 c2771f4) {
        super(interfaceC2734b, c2771f4);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    public void accept(int i) {
        this.f742e = i;
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m600k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m608c(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }

    @Override // p034j$.util.stream.AbstractC2795J4
    /* renamed from: q */
    protected InterfaceC2732s mo499q(InterfaceC2732s interfaceC2732s) {
        return new C2771F4((InterfaceC2732s.InterfaceC2734b) interfaceC2732s, this);
    }

    @Override // p034j$.util.stream.AbstractC2783H4
    /* renamed from: s */
    protected void mo502s(Object obj) {
        ((InterfaceC2705l) obj).accept(this.f742e);
    }

    @Override // p034j$.util.stream.AbstractC2783H4
    /* renamed from: t */
    protected AbstractC2942j4 mo501t(int i) {
        return new C2930h4(i);
    }
}

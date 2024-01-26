package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3035g3 implements InterfaceC3059k3 {

    /* renamed from: a */
    protected final InterfaceC3071m3 f1092a;

    public AbstractC3035g3(InterfaceC3071m3 interfaceC3071m3) {
        Objects.requireNonNull(interfaceC3071m3);
        this.f1092a = interfaceC3071m3;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3081o1.m425b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        this.f1092a.mo388l();
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public boolean mo363o() {
        return this.f1092a.mo363o();
    }
}

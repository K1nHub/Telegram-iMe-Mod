package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.h3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3046h3 implements InterfaceC3070l3 {

    /* renamed from: a */
    protected final InterfaceC3076m3 f1097a;

    public AbstractC3046h3(InterfaceC3076m3 interfaceC3076m3) {
        Objects.requireNonNull(interfaceC3076m3);
        this.f1097a = interfaceC3076m3;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3086o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
        this.f1097a.mo385l();
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public boolean mo360o() {
        return this.f1097a.mo360o();
    }
}

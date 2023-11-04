package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.i3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3052i3 implements InterfaceC3076m3 {

    /* renamed from: a */
    protected final InterfaceC3076m3 f1104a;

    public AbstractC3052i3(InterfaceC3076m3 interfaceC3076m3) {
        Objects.requireNonNull(interfaceC3076m3);
        this.f1104a = interfaceC3076m3;
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

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        AbstractC3086o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
        this.f1104a.mo385l();
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public boolean mo360o() {
        return this.f1104a.mo360o();
    }
}

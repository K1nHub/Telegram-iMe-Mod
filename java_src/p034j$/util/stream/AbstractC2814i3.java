package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.i3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2814i3 implements InterfaceC2838m3 {

    /* renamed from: a */
    protected final InterfaceC2838m3 f965a;

    public AbstractC2814i3(InterfaceC2838m3 interfaceC2838m3) {
        Objects.requireNonNull(interfaceC2838m3);
        this.f965a = interfaceC2838m3;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        AbstractC2848o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(int i) {
        AbstractC2848o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public /* synthetic */ void accept(long j) {
        AbstractC2848o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        this.f965a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f965a.mo311o();
    }
}

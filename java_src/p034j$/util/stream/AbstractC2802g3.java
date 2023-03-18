package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2802g3 implements InterfaceC2826k3 {

    /* renamed from: a */
    protected final InterfaceC2838m3 f953a;

    public AbstractC2802g3(InterfaceC2838m3 interfaceC2838m3) {
        Objects.requireNonNull(interfaceC2838m3);
        this.f953a = interfaceC2838m3;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        AbstractC2848o1.m369f(this);
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

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2848o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        this.f953a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f953a.mo311o();
    }
}

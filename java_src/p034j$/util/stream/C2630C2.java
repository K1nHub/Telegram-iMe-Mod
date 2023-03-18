package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2577e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2576d;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2630C2 implements InterfaceC2724S2, InterfaceC2820j3 {

    /* renamed from: a */
    private double f704a;

    /* renamed from: b */
    final /* synthetic */ double f705b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2576d f706c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2630C2(double d, InterfaceC2576d interfaceC2576d) {
        this.f705b = d;
        this.f706c = interfaceC2576d;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        this.f704a = this.f706c.applyAsDouble(this.f704a, d);
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

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2848o1.m374a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public Object get() {
        return Double.valueOf(this.f704a);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        accept(((C2630C2) interfaceC2724S2).f704a);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f704a = this.f705b;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}

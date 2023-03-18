package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.Optional;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2574b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2660H2 implements InterfaceC2724S2 {

    /* renamed from: a */
    private boolean f749a;

    /* renamed from: b */
    private Object f750b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2574b f751c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2660H2(InterfaceC2574b interfaceC2574b) {
        this.f751c = interfaceC2574b;
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
    public void accept(Object obj) {
        if (this.f749a) {
            this.f749a = false;
        } else {
            obj = this.f751c.apply(this.f750b, obj);
        }
        this.f750b = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public Object get() {
        return this.f749a ? Optional.empty() : Optional.m627of(this.f750b);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        C2660H2 c2660h2 = (C2660H2) interfaceC2724S2;
        if (c2660h2.f749a) {
            return;
        }
        accept(c2660h2.f750b);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f749a = true;
        this.f750b = null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}

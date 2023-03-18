package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2601j;
import p034j$.util.function.C2583k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2582j;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2696N2 implements InterfaceC2724S2, InterfaceC2826k3 {

    /* renamed from: a */
    private boolean f801a;

    /* renamed from: b */
    private int f802b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2582j f803c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2696N2(InterfaceC2582j interfaceC2582j) {
        this.f803c = interfaceC2582j;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        AbstractC2848o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        if (this.f801a) {
            this.f801a = false;
        } else {
            i = this.f803c.applyAsInt(this.f802b, i);
        }
        this.f802b = i;
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

    @Override // p034j$.util.function.InterfaceC2597y
    public Object get() {
        return this.f801a ? C2601j.m546a() : C2601j.m543d(this.f802b);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        C2696N2 c2696n2 = (C2696N2) interfaceC2724S2;
        if (c2696n2.f801a) {
            return;
        }
        accept(c2696n2.f802b);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f801a = true;
        this.f802b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}

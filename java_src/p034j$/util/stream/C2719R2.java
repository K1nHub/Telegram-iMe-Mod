package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2602k;
import p034j$.util.function.C2588p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2587o;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2719R2 implements InterfaceC2724S2, InterfaceC2832l3 {

    /* renamed from: a */
    private boolean f826a;

    /* renamed from: b */
    private long f827b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2587o f828c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2719R2(InterfaceC2587o interfaceC2587o) {
        this.f828c = interfaceC2587o;
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
    public void accept(long j) {
        if (this.f826a) {
            this.f826a = false;
        } else {
            j = this.f828c.applyAsLong(this.f827b, j);
        }
        this.f827b = j;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2848o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public Object get() {
        return this.f826a ? C2602k.m542a() : C2602k.m539d(this.f827b);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        C2719R2 c2719r2 = (C2719R2) interfaceC2724S2;
        if (c2719r2.f826a) {
            return;
        }
        accept(c2719r2.f827b);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f826a = true;
        this.f827b = 0L;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}

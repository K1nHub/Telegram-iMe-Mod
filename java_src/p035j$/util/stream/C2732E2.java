package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2690i;
import p035j$.util.function.C2667e;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2666d;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2732E2 implements InterfaceC2814S2, InterfaceC2910j3 {

    /* renamed from: a */
    private boolean f729a;

    /* renamed from: b */
    private double f730b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2666d f731c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2732E2(InterfaceC2666d interfaceC2666d) {
        this.f731c = interfaceC2666d;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        if (this.f729a) {
            this.f729a = false;
        } else {
            d = this.f731c.applyAsDouble(this.f730b, d);
        }
        this.f730b = d;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        AbstractC2938o1.m365d(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2938o1.m368a(this, d);
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public Object get() {
        return this.f729a ? C2690i.m544a() : C2690i.m541d(this.f730b);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        C2732E2 c2732e2 = (C2732E2) interfaceC2814S2;
        if (c2732e2.f729a) {
            return;
        }
        accept(c2732e2.f730b);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f729a = true;
        this.f730b = 0.0d;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

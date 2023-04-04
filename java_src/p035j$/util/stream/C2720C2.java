package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2666d;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2720C2 implements InterfaceC2814S2, InterfaceC2910j3 {

    /* renamed from: a */
    private double f710a;

    /* renamed from: b */
    final /* synthetic */ double f711b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2666d f712c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2720C2(double d, InterfaceC2666d interfaceC2666d) {
        this.f711b = d;
        this.f712c = interfaceC2666d;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        this.f710a = this.f712c.applyAsDouble(this.f710a, d);
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
        return Double.valueOf(this.f710a);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        accept(((C2720C2) interfaceC2814S2).f710a);
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
        this.f710a = this.f711b;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

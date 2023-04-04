package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2683u;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2738F2 extends AbstractC2819T2 implements InterfaceC2814S2, InterfaceC2910j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2687y f739b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2683u f740c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2664b f741d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2738F2(InterfaceC2687y interfaceC2687y, InterfaceC2683u interfaceC2683u, InterfaceC2664b interfaceC2664b) {
        this.f739b = interfaceC2687y;
        this.f740c = interfaceC2683u;
        this.f741d = interfaceC2664b;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        this.f740c.accept(this.f847a, d);
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

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        this.f847a = this.f741d.apply(this.f847a, ((C2738F2) interfaceC2814S2).f847a);
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
        this.f847a = this.f739b.get();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

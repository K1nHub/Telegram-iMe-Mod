package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2684v;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2792O2 extends AbstractC2819T2 implements InterfaceC2814S2, InterfaceC2916k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2687y f813b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2684v f814c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2664b f815d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2792O2(InterfaceC2687y interfaceC2687y, InterfaceC2684v interfaceC2684v, InterfaceC2664b interfaceC2664b) {
        this.f813b = interfaceC2687y;
        this.f814c = interfaceC2684v;
        this.f815d = interfaceC2664b;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        this.f814c.accept(this.f847a, i);
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
    public /* synthetic */ void accept(Integer num) {
        AbstractC2938o1.m367b(this, num);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        this.f847a = this.f815d.apply(this.f847a, ((C2792O2) interfaceC2814S2).f847a);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f847a = this.f813b.get();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

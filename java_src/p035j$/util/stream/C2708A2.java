package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.function.InterfaceC2685w;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2708A2 extends AbstractC2819T2 implements InterfaceC2814S2, InterfaceC2922l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2687y f687b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2685w f688c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2664b f689d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2708A2(InterfaceC2687y interfaceC2687y, InterfaceC2685w interfaceC2685w, InterfaceC2664b interfaceC2664b) {
        this.f687b = interfaceC2687y;
        this.f688c = interfaceC2685w;
        this.f689d = interfaceC2664b;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        AbstractC2938o1.m365d(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        this.f688c.accept(this.f847a, j);
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2938o1.m366c(this, l);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        this.f847a = this.f689d.apply(this.f847a, ((C2708A2) interfaceC2814S2).f847a);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f847a = this.f687b.get();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

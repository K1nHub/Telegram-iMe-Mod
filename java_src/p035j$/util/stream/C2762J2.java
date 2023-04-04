package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.J2 */
/* loaded from: classes2.dex */
class C2762J2 extends AbstractC2819T2 implements InterfaceC2814S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2687y f770b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f771c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2664b f772d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2762J2(InterfaceC2687y interfaceC2687y, BiConsumer biConsumer, InterfaceC2664b interfaceC2664b) {
        this.f770b = interfaceC2687y;
        this.f771c = biConsumer;
        this.f772d = interfaceC2664b;
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
    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        this.f771c.accept(this.f847a, obj);
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        this.f847a = this.f772d.apply(this.f847a, ((C2762J2) interfaceC2814S2).f847a);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f847a = this.f770b.get();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

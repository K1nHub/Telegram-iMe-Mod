package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2768K2 extends AbstractC2819T2 implements InterfaceC2814S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2687y f780b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f781c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f782d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2768K2(InterfaceC2687y interfaceC2687y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f780b = interfaceC2687y;
        this.f781c = biConsumer;
        this.f782d = biConsumer2;
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
        this.f781c.accept(this.f847a, obj);
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        this.f782d.accept(this.f847a, ((C2768K2) interfaceC2814S2).f847a);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f847a = this.f780b.get();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

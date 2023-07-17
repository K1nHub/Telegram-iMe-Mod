package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.J2 */
/* loaded from: classes2.dex */
class C2914J2 extends AbstractC2971T2 implements InterfaceC2966S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2839y f850b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f851c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f852d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2914J2(InterfaceC2839y interfaceC2839y, BiConsumer biConsumer, InterfaceC2816b interfaceC2816b) {
        this.f850b = interfaceC2839y;
        this.f851c = biConsumer;
        this.f852d = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m354f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m356d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m355e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f851c.accept(this.f927a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo480h(InterfaceC2966S2 interfaceC2966S2) {
        this.f927a = this.f852d.apply(this.f927a, ((C2914J2) interfaceC2966S2).f927a);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f927a = this.f850b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}

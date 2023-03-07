package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2450b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2530G2 extends AbstractC2605T2 implements InterfaceC2600S2 {

    /* renamed from: b */
    final /* synthetic */ Object f737b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f738c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2450b f739d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2530G2(Object obj, BiFunction biFunction, InterfaceC2450b interfaceC2450b) {
        this.f737b = obj;
        this.f738c = biFunction;
        this.f739d = interfaceC2450b;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(int i) {
        AbstractC2724o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f836a = this.f738c.apply(this.f836a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        this.f836a = this.f739d.apply(this.f836a, ((C2530G2) interfaceC2600S2).f836a);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f836a = this.f737b;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}

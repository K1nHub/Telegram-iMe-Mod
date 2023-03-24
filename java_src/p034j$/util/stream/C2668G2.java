package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2588b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2668G2 extends AbstractC2743T2 implements InterfaceC2738S2 {

    /* renamed from: b */
    final /* synthetic */ Object f743b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f744c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2588b f745d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2668G2(Object obj, BiFunction biFunction, InterfaceC2588b interfaceC2588b) {
        this.f743b = obj;
        this.f744c = biFunction;
        this.f745d = interfaceC2588b;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        AbstractC2862o1.m370d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f842a = this.f744c.apply(this.f842a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        this.f842a = this.f745d.apply(this.f842a, ((C2668G2) interfaceC2738S2).f842a);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f842a = this.f743b;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}

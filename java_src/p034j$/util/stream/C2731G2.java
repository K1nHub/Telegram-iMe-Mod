package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2651b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2731G2 extends AbstractC2806T2 implements InterfaceC2801S2 {

    /* renamed from: b */
    final /* synthetic */ Object f743b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f744c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2651b f745d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2731G2(Object obj, BiFunction biFunction, InterfaceC2651b interfaceC2651b) {
        this.f743b = obj;
        this.f744c = biFunction;
        this.f745d = interfaceC2651b;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        AbstractC2925o1.m351d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        AbstractC2925o1.m350e(this);
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

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        this.f842a = this.f745d.apply(this.f842a, ((C2731G2) interfaceC2801S2).f842a);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f842a = this.f743b;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}

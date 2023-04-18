package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2654e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2670u;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2725F2 extends AbstractC2806T2 implements InterfaceC2801S2, InterfaceC2897j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2674y f734b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2670u f735c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2651b f736d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2725F2(InterfaceC2674y interfaceC2674y, InterfaceC2670u interfaceC2670u, InterfaceC2651b interfaceC2651b) {
        this.f734b = interfaceC2674y;
        this.f735c = interfaceC2670u;
        this.f736d = interfaceC2651b;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public void accept(double d) {
        this.f735c.accept(this.f842a, d);
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
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2925o1.m354a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        this.f842a = this.f736d.apply(this.f842a, ((C2725F2) interfaceC2801S2).f842a);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f842a = this.f734b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}

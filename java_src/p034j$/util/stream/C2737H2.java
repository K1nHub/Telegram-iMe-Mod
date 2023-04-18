package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.Optional;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2651b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2737H2 implements InterfaceC2801S2 {

    /* renamed from: a */
    private boolean f750a;

    /* renamed from: b */
    private Object f751b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2651b f752c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2737H2(InterfaceC2651b interfaceC2651b) {
        this.f752c = interfaceC2651b;
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
        if (this.f750a) {
            this.f750a = false;
        } else {
            obj = this.f752c.apply(this.f751b, obj);
        }
        this.f751b = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public Object get() {
        return this.f750a ? Optional.empty() : Optional.m607of(this.f751b);
    }

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        C2737H2 c2737h2 = (C2737H2) interfaceC2801S2;
        if (c2737h2.f750a) {
            return;
        }
        accept(c2737h2.f751b);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f750a = true;
        this.f751b = null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}

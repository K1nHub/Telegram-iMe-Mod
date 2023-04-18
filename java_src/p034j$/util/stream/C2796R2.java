package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2679k;
import p034j$.util.function.C2665p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2664o;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2796R2 implements InterfaceC2801S2, InterfaceC2909l3 {

    /* renamed from: a */
    private boolean f827a;

    /* renamed from: b */
    private long f828b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2664o f829c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2796R2(InterfaceC2664o interfaceC2664o) {
        this.f829c = interfaceC2664o;
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
    public void accept(long j) {
        if (this.f827a) {
            this.f827a = false;
        } else {
            j = this.f829c.applyAsLong(this.f828b, j);
        }
        this.f828b = j;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2925o1.m352c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public Object get() {
        return this.f827a ? C2679k.m522a() : C2679k.m519d(this.f828b);
    }

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        C2796R2 c2796r2 = (C2796R2) interfaceC2801S2;
        if (c2796r2.f827a) {
            return;
        }
        accept(c2796r2.f828b);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f827a = true;
        this.f828b = 0L;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}

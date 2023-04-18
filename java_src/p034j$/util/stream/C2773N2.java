package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2678j;
import p034j$.util.function.C2660k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2659j;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2773N2 implements InterfaceC2801S2, InterfaceC2903k3 {

    /* renamed from: a */
    private boolean f802a;

    /* renamed from: b */
    private int f803b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2659j f804c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2773N2(InterfaceC2659j interfaceC2659j) {
        this.f804c = interfaceC2659j;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        if (this.f802a) {
            this.f802a = false;
        } else {
            i = this.f804c.applyAsInt(this.f803b, i);
        }
        this.f803b = i;
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
    public /* synthetic */ void accept(Integer num) {
        AbstractC2925o1.m353b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public Object get() {
        return this.f802a ? C2678j.m526a() : C2678j.m523d(this.f803b);
    }

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        C2773N2 c2773n2 = (C2773N2) interfaceC2801S2;
        if (c2773n2.f802a) {
            return;
        }
        accept(c2773n2.f803b);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f802a = true;
        this.f803b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}

package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2703j;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.stream.M2 */
/* loaded from: classes2.dex */
class C2811M2 implements InterfaceC2845S2, InterfaceC2947k3 {

    /* renamed from: a */
    private int f792a;

    /* renamed from: b */
    final /* synthetic */ int f793b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2703j f794c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2811M2(int i, InterfaceC2703j interfaceC2703j) {
        this.f793b = i;
        this.f794c = interfaceC2703j;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        this.f792a = this.f794c.applyAsInt(this.f792a, i);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2969o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2718y
    public Object get() {
        return Integer.valueOf(this.f792a);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        accept(((C2811M2) interfaceC2845S2).f792a);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f792a = this.f793b;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}

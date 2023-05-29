package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2722j;
import p034j$.util.function.C2704k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2703j;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2817N2 implements InterfaceC2845S2, InterfaceC2947k3 {

    /* renamed from: a */
    private boolean f805a;

    /* renamed from: b */
    private int f806b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2703j f807c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2817N2(InterfaceC2703j interfaceC2703j) {
        this.f807c = interfaceC2703j;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        if (this.f805a) {
            this.f805a = false;
        } else {
            i = this.f807c.applyAsInt(this.f806b, i);
        }
        this.f806b = i;
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
        return this.f805a ? C2722j.m531a() : C2722j.m528d(this.f806b);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        C2817N2 c2817n2 = (C2817N2) interfaceC2845S2;
        if (c2817n2.f805a) {
            return;
        }
        accept(c2817n2.f806b);
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
        this.f805a = true;
        this.f806b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}

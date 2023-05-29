package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2717j;
import p034j$.util.function.C2699k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2698j;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2812N2 implements InterfaceC2840S2, InterfaceC2942k3 {

    /* renamed from: a */
    private boolean f805a;

    /* renamed from: b */
    private int f806b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2698j f807c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2812N2(InterfaceC2698j interfaceC2698j) {
        this.f807c = interfaceC2698j;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(double d) {
        AbstractC2964o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public void accept(int i) {
        if (this.f805a) {
            this.f805a = false;
        } else {
            i = this.f807c.applyAsInt(this.f806b, i);
        }
        this.f806b = i;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public /* synthetic */ void accept(long j) {
        AbstractC2964o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2964o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2713y
    public Object get() {
        return this.f805a ? C2717j.m531a() : C2717j.m528d(this.f806b);
    }

    @Override // p034j$.util.stream.InterfaceC2840S2
    /* renamed from: h */
    public void mo480h(InterfaceC2840S2 interfaceC2840S2) {
        C2812N2 c2812n2 = (C2812N2) interfaceC2840S2;
        if (c2812n2.f805a) {
            return;
        }
        accept(c2812n2.f806b);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f805a = true;
        this.f806b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}

package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2840h;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2934N2 implements InterfaceC2962S2, InterfaceC3064k3 {

    /* renamed from: a */
    private boolean f940a;

    /* renamed from: b */
    private int f941b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2824j f942c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2934N2(InterfaceC2824j interfaceC2824j) {
        this.f942c = interfaceC2824j;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public void accept(int i) {
        if (this.f940a) {
            this.f940a = false;
        } else {
            i = this.f942c.applyAsInt(this.f941b, i);
        }
        this.f941b = i;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        AbstractC3086o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3086o1.m422b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2838x
    public Object get() {
        return this.f940a ? C2840h.m613a() : C2840h.m610d(this.f941b);
    }

    @Override // p033j$.util.stream.InterfaceC2962S2
    /* renamed from: h */
    public void mo544h(InterfaceC2962S2 interfaceC2962S2) {
        C2934N2 c2934n2 = (C2934N2) interfaceC2962S2;
        if (c2934n2.f940a) {
            return;
        }
        accept(c2934n2.f941b);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f940a = true;
        this.f941b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}

package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.M2 */
/* loaded from: classes2.dex */
class C2932M2 implements InterfaceC2966S2, InterfaceC3068k3 {

    /* renamed from: a */
    private int f877a;

    /* renamed from: b */
    final /* synthetic */ int f878b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2824j f879c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2932M2(int i, InterfaceC2824j interfaceC2824j) {
        this.f878b = i;
        this.f879c = interfaceC2824j;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        this.f877a = this.f879c.applyAsInt(this.f877a, i);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3090o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        return Integer.valueOf(this.f877a);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo498h(InterfaceC2966S2 interfaceC2966S2) {
        accept(((C2932M2) interfaceC2966S2).f877a);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f877a = this.f878b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}

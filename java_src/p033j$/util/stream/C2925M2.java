package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821j;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.stream.M2 */
/* loaded from: classes2.dex */
class C2925M2 implements InterfaceC2959S2, InterfaceC3061k3 {

    /* renamed from: a */
    private int f927a;

    /* renamed from: b */
    final /* synthetic */ int f928b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2821j f929c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2925M2(int i, InterfaceC2821j interfaceC2821j) {
        this.f928b = i;
        this.f929c = interfaceC2821j;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public void accept(int i) {
        this.f927a = this.f929c.applyAsInt(this.f927a, i);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3083o1.m422b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2835x
    public Object get() {
        return Integer.valueOf(this.f927a);
    }

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        accept(((C2925M2) interfaceC2959S2).f927a);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f927a = this.f928b;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}

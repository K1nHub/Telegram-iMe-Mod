package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2836h;
import p033j$.util.function.C2821k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820j;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2930N2 implements InterfaceC2958S2, InterfaceC3060k3 {

    /* renamed from: a */
    private boolean f940a;

    /* renamed from: b */
    private int f941b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2820j f942c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2930N2(InterfaceC2820j interfaceC2820j) {
        this.f942c = interfaceC2820j;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public void accept(int i) {
        if (this.f940a) {
            this.f940a = false;
        } else {
            i = this.f942c.applyAsInt(this.f941b, i);
        }
        this.f941b = i;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3082o1.m421b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        return this.f940a ? C2836h.m612a() : C2836h.m609d(this.f941b);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        C2930N2 c2930n2 = (C2930N2) interfaceC2958S2;
        if (c2930n2.f940a) {
            return;
        }
        accept(c2930n2.f941b);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f940a = true;
        this.f941b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}

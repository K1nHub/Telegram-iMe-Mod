package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2839g;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2880E2 implements InterfaceC2962S2, InterfaceC3058j3 {

    /* renamed from: a */
    private boolean f862a;

    /* renamed from: b */
    private double f863b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2818d f864c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2880E2(InterfaceC2818d interfaceC2818d) {
        this.f864c = interfaceC2818d;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public void accept(double d) {
        if (this.f862a) {
            this.f862a = false;
        } else {
            d = this.f864c.applyAsDouble(this.f863b, d);
        }
        this.f863b = d;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
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
    public /* synthetic */ void accept(Double d) {
        AbstractC3086o1.m423a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2838x
    public Object get() {
        return this.f862a ? C2839g.m617a() : C2839g.m614d(this.f863b);
    }

    @Override // p033j$.util.stream.InterfaceC2962S2
    /* renamed from: h */
    public void mo544h(InterfaceC2962S2 interfaceC2962S2) {
        C2880E2 c2880e2 = (C2880E2) interfaceC2962S2;
        if (c2880e2.f862a) {
            return;
        }
        accept(c2880e2.f863b);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f862a = true;
        this.f863b = 0.0d;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}

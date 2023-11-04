package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.InterfaceC2838x;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2886F2 extends AbstractC2967T2 implements InterfaceC2962S2, InterfaceC3058j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2838x f872b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2834t f873c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f874d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2886F2(InterfaceC2838x interfaceC2838x, InterfaceC2834t interfaceC2834t, InterfaceC2816b interfaceC2816b) {
        this.f872b = interfaceC2838x;
        this.f873c = interfaceC2834t;
        this.f874d = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public void accept(double d) {
        this.f873c.accept(this.f980a, d);
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

    @Override // p033j$.util.stream.InterfaceC2962S2
    /* renamed from: h */
    public void mo544h(InterfaceC2962S2 interfaceC2962S2) {
        this.f980a = this.f874d.apply(this.f980a, ((C2886F2) interfaceC2962S2).f980a);
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
        this.f980a = this.f872b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}

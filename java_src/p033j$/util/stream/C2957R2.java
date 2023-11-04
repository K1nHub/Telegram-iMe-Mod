package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2841i;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2957R2 implements InterfaceC2962S2, InterfaceC3070l3 {

    /* renamed from: a */
    private boolean f965a;

    /* renamed from: b */
    private long f966b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2828n f967c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2957R2(InterfaceC2828n interfaceC2828n) {
        this.f967c = interfaceC2828n;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        if (this.f965a) {
            this.f965a = false;
        } else {
            j = this.f967c.applyAsLong(this.f966b, j);
        }
        this.f966b = j;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3086o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }

    @Override // p033j$.util.function.InterfaceC2838x
    public Object get() {
        return this.f965a ? C2841i.m609a() : C2841i.m606d(this.f966b);
    }

    @Override // p033j$.util.stream.InterfaceC2962S2
    /* renamed from: h */
    public void mo544h(InterfaceC2962S2 interfaceC2962S2) {
        C2957R2 c2957r2 = (C2957R2) interfaceC2962S2;
        if (c2957r2.f965a) {
            return;
        }
        accept(c2957r2.f966b);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f965a = true;
        this.f966b = 0L;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}

package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2898j;
import p033j$.util.function.C2880k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2879j;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2993N2 implements InterfaceC3021S2, InterfaceC3123k3 {

    /* renamed from: a */
    private boolean f891a;

    /* renamed from: b */
    private int f892b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2879j f893c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2993N2(InterfaceC2879j interfaceC2879j) {
        this.f893c = interfaceC2879j;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        if (this.f891a) {
            this.f891a = false;
        } else {
            i = this.f893c.applyAsInt(this.f892b, i);
        }
        this.f892b = i;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        AbstractC3145o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3145o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public Object get() {
        return this.f891a ? C2898j.m549a() : C2898j.m546d(this.f892b);
    }

    @Override // p033j$.util.stream.InterfaceC3021S2
    /* renamed from: h */
    public void mo498h(InterfaceC3021S2 interfaceC3021S2) {
        C2993N2 c2993n2 = (C2993N2) interfaceC3021S2;
        if (c2993n2.f891a) {
            return;
        }
        accept(c2993n2.f892b);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f891a = true;
        this.f892b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}

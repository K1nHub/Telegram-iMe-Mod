package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2981i;
import p033j$.util.function.C2958e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2957d;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C3023E2 implements InterfaceC3105S2, InterfaceC3201j3 {

    /* renamed from: a */
    private boolean f822a;

    /* renamed from: b */
    private double f823b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2957d f824c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3023E2(InterfaceC2957d interfaceC2957d) {
        this.f824c = interfaceC2957d;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        if (this.f822a) {
            this.f822a = false;
        } else {
            d = this.f824c.applyAsDouble(this.f823b, d);
        }
        this.f823b = d;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3229o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public Object get() {
        return this.f822a ? C2981i.m553a() : C2981i.m550d(this.f823b);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        C3023E2 c3023e2 = (C3023E2) interfaceC3105S2;
        if (c3023e2.f822a) {
            return;
        }
        accept(c3023e2.f823b);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f822a = true;
        this.f823b = 0.0d;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}

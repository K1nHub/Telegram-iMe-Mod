package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2842i;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2884E2 implements InterfaceC2966S2, InterfaceC3062j3 {

    /* renamed from: a */
    private boolean f812a;

    /* renamed from: b */
    private double f813b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2818d f814c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2884E2(InterfaceC2818d interfaceC2818d) {
        this.f814c = interfaceC2818d;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        if (this.f812a) {
            this.f812a = false;
        } else {
            d = this.f814c.applyAsDouble(this.f813b, d);
        }
        this.f813b = d;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
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
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        return this.f812a ? C2842i.m553a() : C2842i.m550d(this.f813b);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo498h(InterfaceC2966S2 interfaceC2966S2) {
        C2884E2 c2884e2 = (C2884E2) interfaceC2966S2;
        if (c2884e2.f812a) {
            return;
        }
        accept(c2884e2.f813b);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f812a = true;
        this.f813b = 0.0d;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}

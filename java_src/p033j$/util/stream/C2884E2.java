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
    private boolean f809a;

    /* renamed from: b */
    private double f810b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2818d f811c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2884E2(InterfaceC2818d interfaceC2818d) {
        this.f811c = interfaceC2818d;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        if (this.f809a) {
            this.f809a = false;
        } else {
            d = this.f811c.applyAsDouble(this.f810b, d);
        }
        this.f810b = d;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m356d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m355e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m359a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        return this.f809a ? C2842i.m535a() : C2842i.m532d(this.f810b);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo480h(InterfaceC2966S2 interfaceC2966S2) {
        C2884E2 c2884e2 = (C2884E2) interfaceC2966S2;
        if (c2884e2.f809a) {
            return;
        }
        accept(c2884e2.f810b);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f809a = true;
        this.f810b = 0.0d;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}

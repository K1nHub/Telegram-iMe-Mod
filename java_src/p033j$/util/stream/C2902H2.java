package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Optional;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2902H2 implements InterfaceC2966S2 {

    /* renamed from: a */
    private boolean f835a;

    /* renamed from: b */
    private Object f836b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2816b f837c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2902H2(InterfaceC2816b interfaceC2816b) {
        this.f837c = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m354f(this);
        throw null;
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
    public void accept(Object obj) {
        if (this.f835a) {
            this.f835a = false;
        } else {
            obj = this.f837c.apply(this.f836b, obj);
        }
        this.f836b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        return this.f835a ? Optional.empty() : Optional.m611of(this.f836b);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo480h(InterfaceC2966S2 interfaceC2966S2) {
        C2902H2 c2902h2 = (C2902H2) interfaceC2966S2;
        if (c2902h2.f835a) {
            return;
        }
        accept(c2902h2.f836b);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f835a = true;
        this.f836b = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}

package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2844k;
import p033j$.util.function.C2830p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2829o;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2961R2 implements InterfaceC2966S2, InterfaceC3074l3 {

    /* renamed from: a */
    private boolean f912a;

    /* renamed from: b */
    private long f913b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2829o f914c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2961R2(InterfaceC2829o interfaceC2829o) {
        this.f914c = interfaceC2829o;
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
    public void accept(long j) {
        if (this.f912a) {
            this.f912a = false;
        } else {
            j = this.f914c.applyAsLong(this.f913b, j);
        }
        this.f913b = j;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3090o1.m357c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        return this.f912a ? C2844k.m527a() : C2844k.m524d(this.f913b);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo480h(InterfaceC2966S2 interfaceC2966S2) {
        C2961R2 c2961r2 = (C2961R2) interfaceC2966S2;
        if (c2961r2.f912a) {
            return;
        }
        accept(c2961r2.f913b);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f912a = true;
        this.f913b = 0L;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}

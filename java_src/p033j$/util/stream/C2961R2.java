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
    private boolean f915a;

    /* renamed from: b */
    private long f916b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2829o f917c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2961R2(InterfaceC2829o interfaceC2829o) {
        this.f917c = interfaceC2829o;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        if (this.f915a) {
            this.f915a = false;
        } else {
            j = this.f917c.applyAsLong(this.f916b, j);
        }
        this.f916b = j;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3090o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo158f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        return this.f915a ? C2844k.m545a() : C2844k.m542d(this.f916b);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo498h(InterfaceC2966S2 interfaceC2966S2) {
        C2961R2 c2961r2 = (C2961R2) interfaceC2966S2;
        if (c2961r2.f915a) {
            return;
        }
        accept(c2961r2.f916b);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f915a = true;
        this.f916b = 0L;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}

package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.Optional;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2664b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2750H2 implements InterfaceC2814S2 {

    /* renamed from: a */
    private boolean f755a;

    /* renamed from: b */
    private Object f756b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2664b f757c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2750H2(InterfaceC2664b interfaceC2664b) {
        this.f757c = interfaceC2664b;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        AbstractC2938o1.m365d(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f755a) {
            this.f755a = false;
        } else {
            obj = this.f757c.apply(this.f756b, obj);
        }
        this.f756b = obj;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public Object get() {
        return this.f755a ? Optional.empty() : Optional.m621of(this.f756b);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        C2750H2 c2750h2 = (C2750H2) interfaceC2814S2;
        if (c2750h2.f755a) {
            return;
        }
        accept(c2750h2.f756b);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f755a = true;
        this.f756b = null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

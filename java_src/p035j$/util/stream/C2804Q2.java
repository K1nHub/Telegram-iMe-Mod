package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2677o;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.stream.Q2 */
/* loaded from: classes2.dex */
class C2804Q2 implements InterfaceC2814S2, InterfaceC2922l3 {

    /* renamed from: a */
    private long f825a;

    /* renamed from: b */
    final /* synthetic */ long f826b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2677o f827c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2804Q2(long j, InterfaceC2677o interfaceC2677o) {
        this.f826b = j;
        this.f827c = interfaceC2677o;
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
    public void accept(long j) {
        this.f825a = this.f827c.applyAsLong(this.f825a, j);
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2938o1.m366c(this, l);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public Object get() {
        return Long.valueOf(this.f825a);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        accept(((C2804Q2) interfaceC2814S2).f825a);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f825a = this.f826b;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

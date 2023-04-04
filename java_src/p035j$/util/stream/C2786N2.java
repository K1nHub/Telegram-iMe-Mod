package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2691j;
import p035j$.util.function.C2673k;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2672j;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2786N2 implements InterfaceC2814S2, InterfaceC2916k3 {

    /* renamed from: a */
    private boolean f807a;

    /* renamed from: b */
    private int f808b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2672j f809c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2786N2(InterfaceC2672j interfaceC2672j) {
        this.f809c = interfaceC2672j;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        if (this.f807a) {
            this.f807a = false;
        } else {
            i = this.f809c.applyAsInt(this.f808b, i);
        }
        this.f808b = i;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2938o1.m367b(this, num);
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public Object get() {
        return this.f807a ? C2691j.m540a() : C2691j.m537d(this.f808b);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        C2786N2 c2786n2 = (C2786N2) interfaceC2814S2;
        if (c2786n2.f807a) {
            return;
        }
        accept(c2786n2.f808b);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f807a = true;
        this.f808b = 0;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

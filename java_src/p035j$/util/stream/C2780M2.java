package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2672j;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.stream.M2 */
/* loaded from: classes2.dex */
class C2780M2 implements InterfaceC2814S2, InterfaceC2916k3 {

    /* renamed from: a */
    private int f794a;

    /* renamed from: b */
    final /* synthetic */ int f795b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2672j f796c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2780M2(int i, InterfaceC2672j interfaceC2672j) {
        this.f795b = i;
        this.f796c = interfaceC2672j;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        this.f794a = this.f796c.applyAsInt(this.f794a, i);
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
        return Integer.valueOf(this.f794a);
    }

    @Override // p035j$.util.stream.InterfaceC2814S2
    /* renamed from: h */
    public void mo489h(InterfaceC2814S2 interfaceC2814S2) {
        accept(((C2780M2) interfaceC2814S2).f794a);
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
        this.f794a = this.f795b;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}

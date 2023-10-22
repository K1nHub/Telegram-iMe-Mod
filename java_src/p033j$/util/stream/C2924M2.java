package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820j;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.stream.M2 */
/* loaded from: classes2.dex */
class C2924M2 implements InterfaceC2958S2, InterfaceC3060k3 {

    /* renamed from: a */
    private int f927a;

    /* renamed from: b */
    final /* synthetic */ int f928b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2820j f929c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2924M2(int i, InterfaceC2820j interfaceC2820j) {
        this.f928b = i;
        this.f929c = interfaceC2820j;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public void accept(int i) {
        this.f927a = this.f929c.applyAsInt(this.f927a, i);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3082o1.m421b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        return Integer.valueOf(this.f927a);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        accept(((C2924M2) interfaceC2958S2).f927a);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f927a = this.f928b;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}

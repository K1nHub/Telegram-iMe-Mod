package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2884o;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.stream.Q2 */
/* loaded from: classes2.dex */
class C3011Q2 implements InterfaceC3021S2, InterfaceC3129l3 {

    /* renamed from: a */
    private long f909a;

    /* renamed from: b */
    final /* synthetic */ long f910b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2884o f911c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3011Q2(long j, InterfaceC2884o interfaceC2884o) {
        this.f910b = j;
        this.f911c = interfaceC2884o;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        this.f909a = this.f911c.applyAsLong(this.f909a, j);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3145o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public Object get() {
        return Long.valueOf(this.f909a);
    }

    @Override // p033j$.util.stream.InterfaceC3021S2
    /* renamed from: h */
    public void mo498h(InterfaceC3021S2 interfaceC3021S2) {
        accept(((C3011Q2) interfaceC3021S2).f909a);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f909a = this.f910b;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}

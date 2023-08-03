package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2872C2 implements InterfaceC2966S2, InterfaceC3062j3 {

    /* renamed from: a */
    private double f793a;

    /* renamed from: b */
    final /* synthetic */ double f794b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2818d f795c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2872C2(double d, InterfaceC2818d interfaceC2818d) {
        this.f794b = d;
        this.f795c = interfaceC2818d;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        this.f793a = this.f795c.applyAsDouble(this.f793a, d);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        return Double.valueOf(this.f793a);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo498h(InterfaceC2966S2 interfaceC2966S2) {
        accept(((C2872C2) interfaceC2966S2).f793a);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f793a = this.f794b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}

package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2896G2 extends AbstractC2971T2 implements InterfaceC2966S2 {

    /* renamed from: b */
    final /* synthetic */ Object f828b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f829c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f830d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2896G2(Object obj, BiFunction biFunction, InterfaceC2816b interfaceC2816b) {
        this.f828b = obj;
        this.f829c = biFunction;
        this.f830d = interfaceC2816b;
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
        this.f927a = this.f829c.apply(this.f927a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo480h(InterfaceC2966S2 interfaceC2966S2) {
        this.f927a = this.f830d.apply(this.f927a, ((C2896G2) interfaceC2966S2).f927a);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f927a = this.f828b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}

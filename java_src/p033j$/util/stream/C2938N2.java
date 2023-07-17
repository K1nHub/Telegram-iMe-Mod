package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2843j;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2938N2 implements InterfaceC2966S2, InterfaceC3068k3 {

    /* renamed from: a */
    private boolean f887a;

    /* renamed from: b */
    private int f888b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2824j f889c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2938N2(InterfaceC2824j interfaceC2824j) {
        this.f889c = interfaceC2824j;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m354f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        if (this.f887a) {
            this.f887a = false;
        } else {
            i = this.f889c.applyAsInt(this.f888b, i);
        }
        this.f888b = i;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m355e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3090o1.m358b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        return this.f887a ? C2843j.m531a() : C2843j.m528d(this.f888b);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo480h(InterfaceC2966S2 interfaceC2966S2) {
        C2938N2 c2938n2 = (C2938N2) interfaceC2966S2;
        if (c2938n2.f887a) {
            return;
        }
        accept(c2938n2.f888b);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo165l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f887a = true;
        this.f888b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}

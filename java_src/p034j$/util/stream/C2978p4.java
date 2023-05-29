package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2978p4 implements InterfaceC2947k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1020a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1021b;

    public /* synthetic */ C2978p4(InterfaceC2705l interfaceC2705l) {
        this.f1021b = interfaceC2705l;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1020a) {
            case 0:
                AbstractC2969o1.m354f(this);
                throw null;
            default:
                AbstractC2969o1.m354f(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1020a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m331b(Integer num) {
        switch (this.f1020a) {
            case 0:
                AbstractC2969o1.m358b(this, num);
                return;
            default:
                AbstractC2969o1.m358b(this, num);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        switch (this.f1020a) {
            case 0:
                Objects.requireNonNull(interfaceC2705l);
                return new C2704k(this, interfaceC2705l);
            default:
                Objects.requireNonNull(interfaceC2705l);
                return new C2704k(this, interfaceC2705l);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public /* synthetic */ void mo297n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    public /* synthetic */ C2978p4(C2866W3 c2866w3) {
        this.f1021b = c2866w3;
    }

    @Override // p034j$.util.stream.InterfaceC2947k3, p034j$.util.stream.InterfaceC2959m3
    public final void accept(int i) {
        switch (this.f1020a) {
            case 0:
                ((InterfaceC2705l) this.f1021b).accept(i);
                return;
            default:
                ((C2866W3) this.f1021b).accept(i);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        switch (this.f1020a) {
            case 0:
                AbstractC2969o1.m355e(this);
                throw null;
            default:
                AbstractC2969o1.m355e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1020a) {
            case 0:
                m331b((Integer) obj);
                return;
            default:
                m331b((Integer) obj);
                return;
        }
    }
}

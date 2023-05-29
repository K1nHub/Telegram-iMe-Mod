package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2973p4 implements InterfaceC2942k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1020a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1021b;

    public /* synthetic */ C2973p4(InterfaceC2700l interfaceC2700l) {
        this.f1021b = interfaceC2700l;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1020a) {
            case 0:
                AbstractC2964o1.m354f(this);
                throw null;
            default:
                AbstractC2964o1.m354f(this);
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
                AbstractC2964o1.m358b(this, num);
                return;
            default:
                AbstractC2964o1.m358b(this, num);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        switch (this.f1020a) {
            case 0:
                Objects.requireNonNull(interfaceC2700l);
                return new C2699k(this, interfaceC2700l);
            default:
                Objects.requireNonNull(interfaceC2700l);
                return new C2699k(this, interfaceC2700l);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public /* synthetic */ void mo297n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    public /* synthetic */ C2973p4(C2861W3 c2861w3) {
        this.f1021b = c2861w3;
    }

    @Override // p034j$.util.stream.InterfaceC2942k3, p034j$.util.stream.InterfaceC2954m3
    public final void accept(int i) {
        switch (this.f1020a) {
            case 0:
                ((InterfaceC2700l) this.f1021b).accept(i);
                return;
            default:
                ((C2861W3) this.f1021b).accept(i);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public /* synthetic */ void accept(long j) {
        switch (this.f1020a) {
            case 0:
                AbstractC2964o1.m355e(this);
                throw null;
            default:
                AbstractC2964o1.m355e(this);
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

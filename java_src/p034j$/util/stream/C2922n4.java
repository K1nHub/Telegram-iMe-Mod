package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2654e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2922n4 implements InterfaceC2897j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1002a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1003b;

    public /* synthetic */ C2922n4(InterfaceC2655f interfaceC2655f) {
        this.f1003b = interfaceC2655f;
    }

    @Override // p034j$.util.stream.InterfaceC2897j3, p034j$.util.stream.InterfaceC2915m3
    public final void accept(double d) {
        switch (this.f1002a) {
            case 0:
                ((InterfaceC2655f) this.f1003b).accept(d);
                return;
            default:
                ((C2812U3) this.f1003b).accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1002a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m358b(Double d) {
        switch (this.f1002a) {
            case 0:
                AbstractC2925o1.m354a(this, d);
                return;
            default:
                AbstractC2925o1.m354a(this, d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        switch (this.f1002a) {
            case 0:
                Objects.requireNonNull(interfaceC2655f);
                return new C2654e(this, interfaceC2655f);
            default:
                Objects.requireNonNull(interfaceC2655f);
                return new C2654e(this, interfaceC2655f);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public /* synthetic */ void mo292n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }

    public /* synthetic */ C2922n4(C2812U3 c2812u3) {
        this.f1003b = c2812u3;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1002a) {
            case 0:
                AbstractC2925o1.m351d(this);
                throw null;
            default:
                AbstractC2925o1.m351d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        switch (this.f1002a) {
            case 0:
                AbstractC2925o1.m350e(this);
                throw null;
            default:
                AbstractC2925o1.m350e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1002a) {
            case 0:
                m358b((Double) obj);
                return;
            default:
                m358b((Double) obj);
                return;
        }
    }
}

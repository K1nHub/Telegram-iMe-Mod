package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2961n4 implements InterfaceC2936j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1005a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1006b;

    public /* synthetic */ C2961n4(InterfaceC2694f interfaceC2694f) {
        this.f1006b = interfaceC2694f;
    }

    @Override // p034j$.util.stream.InterfaceC2936j3, p034j$.util.stream.InterfaceC2954m3
    public final void accept(double d) {
        switch (this.f1005a) {
            case 0:
                ((InterfaceC2694f) this.f1006b).accept(d);
                return;
            default:
                ((C2851U3) this.f1006b).accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1005a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m363b(Double d) {
        switch (this.f1005a) {
            case 0:
                AbstractC2964o1.m359a(this, d);
                return;
            default:
                AbstractC2964o1.m359a(this, d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        switch (this.f1005a) {
            case 0:
                Objects.requireNonNull(interfaceC2694f);
                return new C2693e(this, interfaceC2694f);
            default:
                Objects.requireNonNull(interfaceC2694f);
                return new C2693e(this, interfaceC2694f);
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

    public /* synthetic */ C2961n4(C2851U3 c2851u3) {
        this.f1006b = c2851u3;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1005a) {
            case 0:
                AbstractC2964o1.m356d(this);
                throw null;
            default:
                AbstractC2964o1.m356d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public /* synthetic */ void accept(long j) {
        switch (this.f1005a) {
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
        switch (this.f1005a) {
            case 0:
                m363b((Double) obj);
                return;
            default:
                m363b((Double) obj);
                return;
        }
    }
}

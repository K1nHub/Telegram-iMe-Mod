package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2698e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2966n4 implements InterfaceC2941j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1005a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1006b;

    public /* synthetic */ C2966n4(InterfaceC2699f interfaceC2699f) {
        this.f1006b = interfaceC2699f;
    }

    @Override // p034j$.util.stream.InterfaceC2941j3, p034j$.util.stream.InterfaceC2959m3
    public final void accept(double d) {
        switch (this.f1005a) {
            case 0:
                ((InterfaceC2699f) this.f1006b).accept(d);
                return;
            default:
                ((C2856U3) this.f1006b).accept(d);
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
                AbstractC2969o1.m359a(this, d);
                return;
            default:
                AbstractC2969o1.m359a(this, d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        switch (this.f1005a) {
            case 0:
                Objects.requireNonNull(interfaceC2699f);
                return new C2698e(this, interfaceC2699f);
            default:
                Objects.requireNonNull(interfaceC2699f);
                return new C2698e(this, interfaceC2699f);
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

    public /* synthetic */ C2966n4(C2856U3 c2856u3) {
        this.f1006b = c2856u3;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1005a) {
            case 0:
                AbstractC2969o1.m356d(this);
                throw null;
            default:
                AbstractC2969o1.m356d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        switch (this.f1005a) {
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

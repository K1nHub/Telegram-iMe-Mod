package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.K4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2680K4 implements InterfaceC2838m3 {

    /* renamed from: a */
    public final /* synthetic */ int f777a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f778b;

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        switch (this.f777a) {
            case 0:
                AbstractC2848o1.m369f(this);
                throw null;
            default:
                AbstractC2848o1.m369f(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f777a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public /* synthetic */ void mo312n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(int i) {
        switch (this.f777a) {
            case 0:
                AbstractC2848o1.m371d(this);
                throw null;
            default:
                AbstractC2848o1.m371d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public /* synthetic */ void accept(long j) {
        switch (this.f777a) {
            case 0:
                AbstractC2848o1.m370e(this);
                throw null;
            default:
                AbstractC2848o1.m370e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f777a) {
            case 0:
                ((Consumer) this.f778b).accept(obj);
                return;
            default:
                ((C2767a4) this.f778b).accept(obj);
                return;
        }
    }
}

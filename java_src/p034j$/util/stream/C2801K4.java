package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.K4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2801K4 implements InterfaceC2959m3 {

    /* renamed from: a */
    public final /* synthetic */ int f781a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f782b;

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        switch (this.f781a) {
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
        switch (this.f781a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
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

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        switch (this.f781a) {
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
        switch (this.f781a) {
            case 0:
                AbstractC2969o1.m355e(this);
                throw null;
            default:
                AbstractC2969o1.m355e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f781a) {
            case 0:
                ((Consumer) this.f782b).accept(obj);
                return;
            default:
                ((C2888a4) this.f782b).accept(obj);
                return;
        }
    }
}

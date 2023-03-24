package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.K4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2694K4 implements InterfaceC2852m3 {

    /* renamed from: a */
    public final /* synthetic */ int f778a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f779b;

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        switch (this.f778a) {
            case 0:
                AbstractC2862o1.m368f(this);
                throw null;
            default:
                AbstractC2862o1.m368f(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f778a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public /* synthetic */ void mo311n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        switch (this.f778a) {
            case 0:
                AbstractC2862o1.m370d(this);
                throw null;
            default:
                AbstractC2862o1.m370d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        switch (this.f778a) {
            case 0:
                AbstractC2862o1.m369e(this);
                throw null;
            default:
                AbstractC2862o1.m369e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f778a) {
            case 0:
                ((Consumer) this.f779b).accept(obj);
                return;
            default:
                ((C2781a4) this.f779b).accept(obj);
                return;
        }
    }
}

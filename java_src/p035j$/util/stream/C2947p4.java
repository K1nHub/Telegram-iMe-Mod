package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2947p4 implements InterfaceC2916k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1022a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1023b;

    public /* synthetic */ C2947p4(InterfaceC2674l interfaceC2674l) {
        this.f1023b = interfaceC2674l;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1022a) {
            case 0:
                AbstractC2938o1.m363f(this);
                throw null;
            default:
                AbstractC2938o1.m363f(this);
                throw null;
        }
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1022a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m340b(Integer num) {
        switch (this.f1022a) {
            case 0:
                AbstractC2938o1.m367b(this, num);
                return;
            default:
                AbstractC2938o1.m367b(this, num);
                return;
        }
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        switch (this.f1022a) {
            case 0:
                Objects.requireNonNull(interfaceC2674l);
                return new C2673k(this, interfaceC2674l);
            default:
                Objects.requireNonNull(interfaceC2674l);
                return new C2673k(this, interfaceC2674l);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public /* synthetic */ void mo306n(long j) {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }

    public /* synthetic */ C2947p4(C2835W3 c2835w3) {
        this.f1023b = c2835w3;
    }

    @Override // p035j$.util.stream.InterfaceC2916k3, p035j$.util.stream.InterfaceC2928m3
    public final void accept(int i) {
        switch (this.f1022a) {
            case 0:
                ((InterfaceC2674l) this.f1023b).accept(i);
                return;
            default:
                ((C2835W3) this.f1023b).accept(i);
                return;
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        switch (this.f1022a) {
            case 0:
                AbstractC2938o1.m364e(this);
                throw null;
            default:
                AbstractC2938o1.m364e(this);
                throw null;
        }
    }

    @Override // p035j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1022a) {
            case 0:
                m340b((Integer) obj);
                return;
            default:
                m340b((Integer) obj);
                return;
        }
    }
}

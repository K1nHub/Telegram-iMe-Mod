package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2602p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2883r4 implements InterfaceC2846l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1042a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1043b;

    public /* synthetic */ C2883r4(InterfaceC2603q interfaceC2603q) {
        this.f1043b = interfaceC2603q;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1042a) {
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
        switch (this.f1042a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m343b(Long l) {
        switch (this.f1042a) {
            case 0:
                AbstractC2862o1.m371c(this, l);
                return;
            default:
                AbstractC2862o1.m371c(this, l);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        switch (this.f1042a) {
            case 0:
                Objects.requireNonNull(interfaceC2603q);
                return new C2602p(this, interfaceC2603q);
            default:
                Objects.requireNonNull(interfaceC2603q);
                return new C2602p(this, interfaceC2603q);
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

    public /* synthetic */ C2883r4(C2769Y3 c2769y3) {
        this.f1043b = c2769y3;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1042a) {
            case 0:
                AbstractC2862o1.m370d(this);
                throw null;
            default:
                AbstractC2862o1.m370d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public final void accept(long j) {
        switch (this.f1042a) {
            case 0:
                ((InterfaceC2603q) this.f1043b).accept(j);
                return;
            default:
                ((C2769Y3) this.f1043b).accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1042a) {
            case 0:
                m343b((Long) obj);
                return;
            default:
                m343b((Long) obj);
                return;
        }
    }
}

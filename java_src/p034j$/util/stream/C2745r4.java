package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2464p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2745r4 implements InterfaceC2708l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1036a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1037b;

    public /* synthetic */ C2745r4(InterfaceC2465q interfaceC2465q) {
        this.f1037b = interfaceC2465q;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1036a) {
            case 0:
                AbstractC2724o1.m369f(this);
                throw null;
            default:
                AbstractC2724o1.m369f(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1036a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m344b(Long l) {
        switch (this.f1036a) {
            case 0:
                AbstractC2724o1.m372c(this, l);
                return;
            default:
                AbstractC2724o1.m372c(this, l);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        switch (this.f1036a) {
            case 0:
                Objects.requireNonNull(interfaceC2465q);
                return new C2464p(this, interfaceC2465q);
            default:
                Objects.requireNonNull(interfaceC2465q);
                return new C2464p(this, interfaceC2465q);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public /* synthetic */ void mo312n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    public /* synthetic */ C2745r4(C2631Y3 c2631y3) {
        this.f1037b = c2631y3;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1036a) {
            case 0:
                AbstractC2724o1.m371d(this);
                throw null;
            default:
                AbstractC2724o1.m371d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public final void accept(long j) {
        switch (this.f1036a) {
            case 0:
                ((InterfaceC2465q) this.f1037b).accept(j);
                return;
            default:
                ((C2631Y3) this.f1037b).accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1036a) {
            case 0:
                m344b((Long) obj);
                return;
            default:
                m344b((Long) obj);
                return;
        }
    }
}

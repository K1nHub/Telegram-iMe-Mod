package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2665p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2946r4 implements InterfaceC2909l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1042a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1043b;

    public /* synthetic */ C2946r4(InterfaceC2666q interfaceC2666q) {
        this.f1043b = interfaceC2666q;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1042a) {
            case 0:
                AbstractC2925o1.m349f(this);
                throw null;
            default:
                AbstractC2925o1.m349f(this);
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
    public /* synthetic */ void m324b(Long l) {
        switch (this.f1042a) {
            case 0:
                AbstractC2925o1.m352c(this, l);
                return;
            default:
                AbstractC2925o1.m352c(this, l);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        switch (this.f1042a) {
            case 0:
                Objects.requireNonNull(interfaceC2666q);
                return new C2665p(this, interfaceC2666q);
            default:
                Objects.requireNonNull(interfaceC2666q);
                return new C2665p(this, interfaceC2666q);
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

    public /* synthetic */ C2946r4(C2832Y3 c2832y3) {
        this.f1043b = c2832y3;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1042a) {
            case 0:
                AbstractC2925o1.m351d(this);
                throw null;
            default:
                AbstractC2925o1.m351d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public final void accept(long j) {
        switch (this.f1042a) {
            case 0:
                ((InterfaceC2666q) this.f1043b).accept(j);
                return;
            default:
                ((C2832Y3) this.f1043b).accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1042a) {
            case 0:
                m324b((Long) obj);
                return;
            default:
                m324b((Long) obj);
                return;
        }
    }
}

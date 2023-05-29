package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2985r4 implements InterfaceC2948l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1045a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1046b;

    public /* synthetic */ C2985r4(InterfaceC2705q interfaceC2705q) {
        this.f1046b = interfaceC2705q;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1045a) {
            case 0:
                AbstractC2964o1.m354f(this);
                throw null;
            default:
                AbstractC2964o1.m354f(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1045a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m329b(Long l) {
        switch (this.f1045a) {
            case 0:
                AbstractC2964o1.m357c(this, l);
                return;
            default:
                AbstractC2964o1.m357c(this, l);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        switch (this.f1045a) {
            case 0:
                Objects.requireNonNull(interfaceC2705q);
                return new C2704p(this, interfaceC2705q);
            default:
                Objects.requireNonNull(interfaceC2705q);
                return new C2704p(this, interfaceC2705q);
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

    public /* synthetic */ C2985r4(C2871Y3 c2871y3) {
        this.f1046b = c2871y3;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1045a) {
            case 0:
                AbstractC2964o1.m356d(this);
                throw null;
            default:
                AbstractC2964o1.m356d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public final void accept(long j) {
        switch (this.f1045a) {
            case 0:
                ((InterfaceC2705q) this.f1046b).accept(j);
                return;
            default:
                ((C2871Y3) this.f1046b).accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1045a) {
            case 0:
                m329b((Long) obj);
                return;
            default:
                m329b((Long) obj);
                return;
        }
    }
}

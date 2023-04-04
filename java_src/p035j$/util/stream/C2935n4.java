package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2935n4 implements InterfaceC2910j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1007a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1008b;

    public /* synthetic */ C2935n4(InterfaceC2668f interfaceC2668f) {
        this.f1008b = interfaceC2668f;
    }

    @Override // p035j$.util.stream.InterfaceC2910j3, p035j$.util.stream.InterfaceC2928m3
    public final void accept(double d) {
        switch (this.f1007a) {
            case 0:
                ((InterfaceC2668f) this.f1008b).accept(d);
                return;
            default:
                ((C2825U3) this.f1008b).accept(d);
                return;
        }
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1007a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m372b(Double d) {
        switch (this.f1007a) {
            case 0:
                AbstractC2938o1.m368a(this, d);
                return;
            default:
                AbstractC2938o1.m368a(this, d);
                return;
        }
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        switch (this.f1007a) {
            case 0:
                Objects.requireNonNull(interfaceC2668f);
                return new C2667e(this, interfaceC2668f);
            default:
                Objects.requireNonNull(interfaceC2668f);
                return new C2667e(this, interfaceC2668f);
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

    public /* synthetic */ C2935n4(C2825U3 c2825u3) {
        this.f1008b = c2825u3;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1007a) {
            case 0:
                AbstractC2938o1.m365d(this);
                throw null;
            default:
                AbstractC2938o1.m365d(this);
                throw null;
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        switch (this.f1007a) {
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
        switch (this.f1007a) {
            case 0:
                m372b((Double) obj);
                return;
            default:
                m372b((Double) obj);
                return;
        }
    }
}

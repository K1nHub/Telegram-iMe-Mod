package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3099p4 implements InterfaceC3068k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1105a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1106b;

    public /* synthetic */ C3099p4(InterfaceC2826l interfaceC2826l) {
        this.f1106b = interfaceC2826l;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1105a) {
            case 0:
                AbstractC3090o1.m372f(this);
                throw null;
            default:
                AbstractC3090o1.m372f(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1105a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m349b(Integer num) {
        switch (this.f1105a) {
            case 0:
                AbstractC3090o1.m376b(this, num);
                return;
            default:
                AbstractC3090o1.m376b(this, num);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        switch (this.f1105a) {
            case 0:
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
            default:
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    public /* synthetic */ C3099p4(C2987W3 c2987w3) {
        this.f1106b = c2987w3;
    }

    @Override // p033j$.util.stream.InterfaceC3068k3, p033j$.util.stream.InterfaceC3080m3
    public final void accept(int i) {
        switch (this.f1105a) {
            case 0:
                ((InterfaceC2826l) this.f1106b).accept(i);
                return;
            default:
                ((C2987W3) this.f1106b).accept(i);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        switch (this.f1105a) {
            case 0:
                AbstractC3090o1.m373e(this);
                throw null;
            default:
                AbstractC3090o1.m373e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1105a) {
            case 0:
                m349b((Integer) obj);
                return;
            default:
                m349b((Integer) obj);
                return;
        }
    }
}

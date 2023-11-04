package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3095p4 implements InterfaceC3064k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1155a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1156b;

    public /* synthetic */ C3095p4(InterfaceC2826l interfaceC2826l) {
        this.f1156b = interfaceC2826l;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1155a) {
            case 0:
                AbstractC3086o1.m418f(this);
                throw null;
            default:
                AbstractC3086o1.m418f(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1155a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m395b(Integer num) {
        switch (this.f1155a) {
            case 0:
                AbstractC3086o1.m422b(this, num);
                return;
            default:
                AbstractC3086o1.m422b(this, num);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        switch (this.f1155a) {
            case 0:
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
            default:
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public /* synthetic */ void mo361m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    public /* synthetic */ C3095p4(C2983W3 c2983w3) {
        this.f1156b = c2983w3;
    }

    @Override // p033j$.util.stream.InterfaceC3064k3, p033j$.util.stream.InterfaceC3076m3
    public final void accept(int i) {
        switch (this.f1155a) {
            case 0:
                ((InterfaceC2826l) this.f1156b).accept(i);
                return;
            default:
                ((C2983W3) this.f1156b).accept(i);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        switch (this.f1155a) {
            case 0:
                AbstractC3086o1.m419e(this);
                throw null;
            default:
                AbstractC3086o1.m419e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1155a) {
            case 0:
                m395b((Integer) obj);
                return;
            default:
                m395b((Integer) obj);
                return;
        }
    }
}

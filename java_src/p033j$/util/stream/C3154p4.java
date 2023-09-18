package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2880k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3154p4 implements InterfaceC3123k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1106a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1107b;

    public /* synthetic */ C3154p4(InterfaceC2881l interfaceC2881l) {
        this.f1107b = interfaceC2881l;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1106a) {
            case 0:
                AbstractC3145o1.m372f(this);
                throw null;
            default:
                AbstractC3145o1.m372f(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1106a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m349b(Integer num) {
        switch (this.f1106a) {
            case 0:
                AbstractC3145o1.m376b(this, num);
                return;
            default:
                AbstractC3145o1.m376b(this, num);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        switch (this.f1106a) {
            case 0:
                Objects.requireNonNull(interfaceC2881l);
                return new C2880k(this, interfaceC2881l);
            default:
                Objects.requireNonNull(interfaceC2881l);
                return new C2880k(this, interfaceC2881l);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    public /* synthetic */ C3154p4(C3042W3 c3042w3) {
        this.f1107b = c3042w3;
    }

    @Override // p033j$.util.stream.InterfaceC3123k3, p033j$.util.stream.InterfaceC3135m3
    public final void accept(int i) {
        switch (this.f1106a) {
            case 0:
                ((InterfaceC2881l) this.f1107b).accept(i);
                return;
            default:
                ((C3042W3) this.f1107b).accept(i);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        switch (this.f1106a) {
            case 0:
                AbstractC3145o1.m373e(this);
                throw null;
            default:
                AbstractC3145o1.m373e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1106a) {
            case 0:
                m349b((Integer) obj);
                return;
            default:
                m349b((Integer) obj);
                return;
        }
    }
}

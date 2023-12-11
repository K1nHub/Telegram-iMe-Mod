package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3092p4 implements InterfaceC3061k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1155a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1156b;

    public /* synthetic */ C3092p4(InterfaceC2823l interfaceC2823l) {
        this.f1156b = interfaceC2823l;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1155a) {
            case 0:
                AbstractC3083o1.m418f(this);
                throw null;
            default:
                AbstractC3083o1.m418f(this);
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
                AbstractC3083o1.m422b(this, num);
                return;
            default:
                AbstractC3083o1.m422b(this, num);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        switch (this.f1155a) {
            case 0:
                Objects.requireNonNull(interfaceC2823l);
                return new C2822k(this, interfaceC2823l);
            default:
                Objects.requireNonNull(interfaceC2823l);
                return new C2822k(this, interfaceC2823l);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public /* synthetic */ void mo361m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    public /* synthetic */ C3092p4(C2980W3 c2980w3) {
        this.f1156b = c2980w3;
    }

    @Override // p033j$.util.stream.InterfaceC3061k3, p033j$.util.stream.InterfaceC3073m3
    public final void accept(int i) {
        switch (this.f1155a) {
            case 0:
                ((InterfaceC2823l) this.f1156b).accept(i);
                return;
            default:
                ((C2980W3) this.f1156b).accept(i);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        switch (this.f1155a) {
            case 0:
                AbstractC3083o1.m419e(this);
                throw null;
            default:
                AbstractC3083o1.m419e(this);
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

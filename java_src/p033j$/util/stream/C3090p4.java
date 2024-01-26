package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3090p4 implements InterfaceC3059k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1155a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1156b;

    public /* synthetic */ C3090p4(InterfaceC2821l interfaceC2821l) {
        this.f1156b = interfaceC2821l;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1155a) {
            case 0:
                AbstractC3081o1.m421f(this);
                throw null;
            default:
                AbstractC3081o1.m421f(this);
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
    public /* synthetic */ void m398b(Integer num) {
        switch (this.f1155a) {
            case 0:
                AbstractC3081o1.m425b(this, num);
                return;
            default:
                AbstractC3081o1.m425b(this, num);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        switch (this.f1155a) {
            case 0:
                Objects.requireNonNull(interfaceC2821l);
                return new C2820k(this, interfaceC2821l);
            default:
                Objects.requireNonNull(interfaceC2821l);
                return new C2820k(this, interfaceC2821l);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public /* synthetic */ void mo364m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }

    public /* synthetic */ C3090p4(C2978W3 c2978w3) {
        this.f1156b = c2978w3;
    }

    @Override // p033j$.util.stream.InterfaceC3059k3, p033j$.util.stream.InterfaceC3071m3
    public final void accept(int i) {
        switch (this.f1155a) {
            case 0:
                ((InterfaceC2821l) this.f1156b).accept(i);
                return;
            default:
                ((C2978W3) this.f1156b).accept(i);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        switch (this.f1155a) {
            case 0:
                AbstractC3081o1.m422e(this);
                throw null;
            default:
                AbstractC3081o1.m422e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1155a) {
            case 0:
                m398b((Integer) obj);
                return;
            default:
                m398b((Integer) obj);
                return;
        }
    }
}

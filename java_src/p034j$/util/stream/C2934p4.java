package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2934p4 implements InterfaceC2903k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1017a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1018b;

    public /* synthetic */ C2934p4(InterfaceC2661l interfaceC2661l) {
        this.f1018b = interfaceC2661l;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1017a) {
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
        switch (this.f1017a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m326b(Integer num) {
        switch (this.f1017a) {
            case 0:
                AbstractC2925o1.m353b(this, num);
                return;
            default:
                AbstractC2925o1.m353b(this, num);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        switch (this.f1017a) {
            case 0:
                Objects.requireNonNull(interfaceC2661l);
                return new C2660k(this, interfaceC2661l);
            default:
                Objects.requireNonNull(interfaceC2661l);
                return new C2660k(this, interfaceC2661l);
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

    public /* synthetic */ C2934p4(C2822W3 c2822w3) {
        this.f1018b = c2822w3;
    }

    @Override // p034j$.util.stream.InterfaceC2903k3, p034j$.util.stream.InterfaceC2915m3
    public final void accept(int i) {
        switch (this.f1017a) {
            case 0:
                ((InterfaceC2661l) this.f1018b).accept(i);
                return;
            default:
                ((C2822W3) this.f1018b).accept(i);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        switch (this.f1017a) {
            case 0:
                AbstractC2925o1.m350e(this);
                throw null;
            default:
                AbstractC2925o1.m350e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1017a) {
            case 0:
                m326b((Integer) obj);
                return;
            default:
                m326b((Integer) obj);
                return;
        }
    }
}

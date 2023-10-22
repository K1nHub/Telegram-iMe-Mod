package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3091p4 implements InterfaceC3060k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1155a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1156b;

    public /* synthetic */ C3091p4(InterfaceC2822l interfaceC2822l) {
        this.f1156b = interfaceC2822l;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1155a) {
            case 0:
                AbstractC3082o1.m417f(this);
                throw null;
            default:
                AbstractC3082o1.m417f(this);
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
    public /* synthetic */ void m394b(Integer num) {
        switch (this.f1155a) {
            case 0:
                AbstractC3082o1.m421b(this, num);
                return;
            default:
                AbstractC3082o1.m421b(this, num);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        switch (this.f1155a) {
            case 0:
                Objects.requireNonNull(interfaceC2822l);
                return new C2821k(this, interfaceC2822l);
            default:
                Objects.requireNonNull(interfaceC2822l);
                return new C2821k(this, interfaceC2822l);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public /* synthetic */ void mo360m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }

    public /* synthetic */ C3091p4(C2979W3 c2979w3) {
        this.f1156b = c2979w3;
    }

    @Override // p033j$.util.stream.InterfaceC3060k3, p033j$.util.stream.InterfaceC3072m3
    public final void accept(int i) {
        switch (this.f1155a) {
            case 0:
                ((InterfaceC2822l) this.f1156b).accept(i);
                return;
            default:
                ((C2979W3) this.f1156b).accept(i);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        switch (this.f1155a) {
            case 0:
                AbstractC3082o1.m418e(this);
                throw null;
            default:
                AbstractC3082o1.m418e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1155a) {
            case 0:
                m394b((Integer) obj);
                return;
            default:
                m394b((Integer) obj);
                return;
        }
    }
}

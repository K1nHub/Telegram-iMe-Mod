package p033j$.util.stream;

import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.K4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3061K4 implements InterfaceC3219m3 {

    /* renamed from: a */
    public final /* synthetic */ int f876a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f877b;

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        switch (this.f876a) {
            case 0:
                AbstractC3229o1.m372f(this);
                throw null;
            default:
                AbstractC3229o1.m372f(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f876a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        switch (this.f876a) {
            case 0:
                AbstractC3229o1.m374d(this);
                throw null;
            default:
                AbstractC3229o1.m374d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        switch (this.f876a) {
            case 0:
                AbstractC3229o1.m373e(this);
                throw null;
            default:
                AbstractC3229o1.m373e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f876a) {
            case 0:
                ((Consumer) this.f877b).accept(obj);
                return;
            default:
                ((C3148a4) this.f877b).accept(obj);
                return;
        }
    }
}

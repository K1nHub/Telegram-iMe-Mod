package p033j$.util.stream;

import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.K4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2913K4 implements InterfaceC3071m3 {

    /* renamed from: a */
    public final /* synthetic */ int f916a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f917b;

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        switch (this.f916a) {
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
        switch (this.f916a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
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

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        switch (this.f916a) {
            case 0:
                AbstractC3081o1.m423d(this);
                throw null;
            default:
                AbstractC3081o1.m423d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        switch (this.f916a) {
            case 0:
                AbstractC3081o1.m422e(this);
                throw null;
            default:
                AbstractC3081o1.m422e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f916a) {
            case 0:
                ((Consumer) this.f917b).accept(obj);
                return;
            default:
                ((C3000a4) this.f917b).accept(obj);
                return;
        }
    }
}

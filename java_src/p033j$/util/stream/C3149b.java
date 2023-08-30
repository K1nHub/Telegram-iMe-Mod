package p033j$.util.stream;

import java.util.List;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2956c;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2971r;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3149b implements InterfaceC2978y, InterfaceC2971r, Consumer, InterfaceC2956c {

    /* renamed from: a */
    public final /* synthetic */ int f977a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f978b;

    public /* synthetic */ C3149b(InterfaceC2992s interfaceC2992s) {
        this.f978b = interfaceC2992s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f977a) {
            case 3:
                ((InterfaceC3219m3) this.f978b).accept((InterfaceC3219m3) obj);
                return;
            default:
                ((List) this.f978b).add(obj);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f977a) {
            case 3:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    @Override // p033j$.util.function.InterfaceC2971r
    public Object apply(long j) {
        int i = C3040H1.f847k;
        return AbstractC3284x2.m329d(j, (InterfaceC2966m) this.f978b);
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public Object get() {
        switch (this.f977a) {
            case 0:
                return (InterfaceC2992s) this.f978b;
            default:
                return ((AbstractC3155c) this.f978b).m455D0();
        }
    }

    public /* synthetic */ C3149b(AbstractC3155c abstractC3155c) {
        this.f978b = abstractC3155c;
    }
}

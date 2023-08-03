package p033j$.util.stream;

import java.util.List;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817c;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2832r;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3010b implements InterfaceC2839y, InterfaceC2832r, Consumer, InterfaceC2817c {

    /* renamed from: a */
    public final /* synthetic */ int f967a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f968b;

    public /* synthetic */ C3010b(InterfaceC2853s interfaceC2853s) {
        this.f968b = interfaceC2853s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f967a) {
            case 3:
                ((InterfaceC3080m3) this.f968b).accept((InterfaceC3080m3) obj);
                return;
            default:
                ((List) this.f968b).add(obj);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f967a) {
            case 3:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    @Override // p033j$.util.function.InterfaceC2832r
    public Object apply(long j) {
        int i = C2901H1.f837k;
        return AbstractC3145x2.m329d(j, (InterfaceC2827m) this.f968b);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        switch (this.f967a) {
            case 0:
                return (InterfaceC2853s) this.f968b;
            default:
                return ((AbstractC3016c) this.f968b).m455D0();
        }
    }

    public /* synthetic */ C3010b(AbstractC3016c abstractC3016c) {
        this.f968b = abstractC3016c;
    }
}

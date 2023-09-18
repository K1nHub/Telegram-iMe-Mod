package p033j$.util.stream;

import java.util.List;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2872c;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2887r;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3065b implements InterfaceC2894y, InterfaceC2887r, Consumer, InterfaceC2872c {

    /* renamed from: a */
    public final /* synthetic */ int f968a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f969b;

    public /* synthetic */ C3065b(InterfaceC2908s interfaceC2908s) {
        this.f969b = interfaceC2908s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f968a) {
            case 3:
                ((InterfaceC3135m3) this.f969b).accept((InterfaceC3135m3) obj);
                return;
            default:
                ((List) this.f969b).add(obj);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f968a) {
            case 3:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    @Override // p033j$.util.function.InterfaceC2887r
    public Object apply(long j) {
        int i = C2956H1.f838k;
        return AbstractC3200x2.m329d(j, (InterfaceC2882m) this.f969b);
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public Object get() {
        switch (this.f968a) {
            case 0:
                return (InterfaceC2908s) this.f969b;
            default:
                return ((AbstractC3071c) this.f969b).m455D0();
        }
    }

    public /* synthetic */ C3065b(AbstractC3071c abstractC3071c) {
        this.f969b = abstractC3071c;
    }
}

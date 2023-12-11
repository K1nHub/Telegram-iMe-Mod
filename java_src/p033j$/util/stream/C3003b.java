package p033j$.util.stream;

import java.util.List;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2814c;
import p033j$.util.function.InterfaceC2828q;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3003b implements InterfaceC2835x, InterfaceC2828q, Consumer, InterfaceC2814c {

    /* renamed from: a */
    public final /* synthetic */ int f1017a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1018b;

    public /* synthetic */ C3003b(Spliterator spliterator) {
        this.f1018b = spliterator;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1017a) {
            case 3:
                ((InterfaceC3073m3) this.f1018b).accept((InterfaceC3073m3) obj);
                return;
            default:
                ((List) this.f1018b).add(obj);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1017a) {
            case 3:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    @Override // p033j$.util.function.InterfaceC2828q
    public Object apply(long j) {
        int i = C2894H1.f887k;
        return AbstractC3138x2.m375d(j, (IntFunction) this.f1018b);
    }

    @Override // p033j$.util.function.InterfaceC2835x
    public Object get() {
        switch (this.f1017a) {
            case 0:
                return (Spliterator) this.f1018b;
            default:
                return ((AbstractC3009c) this.f1018b).m501C0();
        }
    }

    public /* synthetic */ C3003b(AbstractC3009c abstractC3009c) {
        this.f1018b = abstractC3009c;
    }
}

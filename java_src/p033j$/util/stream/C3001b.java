package p033j$.util.stream;

import java.util.List;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2812c;
import p033j$.util.function.InterfaceC2826q;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3001b implements InterfaceC2833x, InterfaceC2826q, Consumer, InterfaceC2812c {

    /* renamed from: a */
    public final /* synthetic */ int f1017a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1018b;

    public /* synthetic */ C3001b(Spliterator spliterator) {
        this.f1018b = spliterator;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1017a) {
            case 3:
                ((InterfaceC3071m3) this.f1018b).accept((InterfaceC3071m3) obj);
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

    @Override // p033j$.util.function.InterfaceC2826q
    public Object apply(long j) {
        int i = C2892H1.f887k;
        return AbstractC3136x2.m378d(j, (IntFunction) this.f1018b);
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public Object get() {
        switch (this.f1017a) {
            case 0:
                return (Spliterator) this.f1018b;
            default:
                return ((AbstractC3007c) this.f1018b).m504C0();
        }
    }

    public /* synthetic */ C3001b(AbstractC3007c abstractC3007c) {
        this.f1018b = abstractC3007c;
    }
}

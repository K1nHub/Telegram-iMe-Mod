package p033j$.util.stream;

import java.util.List;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2813c;
import p033j$.util.function.InterfaceC2827q;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3002b implements InterfaceC2834x, InterfaceC2827q, Consumer, InterfaceC2813c {

    /* renamed from: a */
    public final /* synthetic */ int f1017a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1018b;

    public /* synthetic */ C3002b(Spliterator spliterator) {
        this.f1018b = spliterator;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1017a) {
            case 3:
                ((InterfaceC3072m3) this.f1018b).accept((InterfaceC3072m3) obj);
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

    @Override // p033j$.util.function.InterfaceC2827q
    public Object apply(long j) {
        int i = C2893H1.f887k;
        return AbstractC3137x2.m374d(j, (IntFunction) this.f1018b);
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        switch (this.f1017a) {
            case 0:
                return (Spliterator) this.f1018b;
            default:
                return ((AbstractC3008c) this.f1018b).m500C0();
        }
    }

    public /* synthetic */ C3002b(AbstractC3008c abstractC3008c) {
        this.f1018b = abstractC3008c;
    }
}

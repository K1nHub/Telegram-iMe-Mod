package p034j$.util.stream;

import java.util.List;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589c;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2604r;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2782b implements InterfaceC2611y, InterfaceC2604r, Consumer, InterfaceC2589c {

    /* renamed from: a */
    public final /* synthetic */ int f879a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f880b;

    public /* synthetic */ C2782b(InterfaceC2625s interfaceC2625s) {
        this.f880b = interfaceC2625s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f879a) {
            case 3:
                ((InterfaceC2852m3) this.f880b).accept((InterfaceC2852m3) obj);
                return;
            default:
                ((List) this.f880b).add(obj);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f879a) {
            case 3:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.function.InterfaceC2604r
    public Object apply(long j) {
        int i = C2673H1.f749k;
        return AbstractC2917x2.m325d(j, (InterfaceC2599m) this.f880b);
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        switch (this.f879a) {
            case 0:
                return (InterfaceC2625s) this.f880b;
            default:
                return ((AbstractC2788c) this.f880b).m451D0();
        }
    }

    public /* synthetic */ C2782b(InterfaceC2599m interfaceC2599m) {
        this.f880b = interfaceC2599m;
    }

    public /* synthetic */ C2782b(AbstractC2788c abstractC2788c) {
        this.f880b = abstractC2788c;
    }
}

package p034j$.util.stream;

import java.util.List;
import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2652c;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2667r;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2845b implements InterfaceC2674y, InterfaceC2667r, Consumer, InterfaceC2652c {

    /* renamed from: a */
    public final /* synthetic */ int f879a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f880b;

    public /* synthetic */ C2845b(InterfaceC2688s interfaceC2688s) {
        this.f880b = interfaceC2688s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f879a) {
            case 3:
                ((InterfaceC2915m3) this.f880b).accept((InterfaceC2915m3) obj);
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

    @Override // p034j$.util.function.InterfaceC2667r
    public Object apply(long j) {
        int i = C2736H1.f749k;
        return AbstractC2980x2.m306d(j, (InterfaceC2662m) this.f880b);
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public Object get() {
        switch (this.f879a) {
            case 0:
                return (InterfaceC2688s) this.f880b;
            default:
                return ((AbstractC2851c) this.f880b).m432D0();
        }
    }

    public /* synthetic */ C2845b(InterfaceC2662m interfaceC2662m) {
        this.f880b = interfaceC2662m;
    }

    public /* synthetic */ C2845b(AbstractC2851c abstractC2851c) {
        this.f880b = abstractC2851c;
    }
}

package p034j$.util.stream;

import java.util.List;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2575c;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2590r;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2768b implements InterfaceC2597y, InterfaceC2590r, Consumer, InterfaceC2575c {

    /* renamed from: a */
    public final /* synthetic */ int f878a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f879b;

    public /* synthetic */ C2768b(InterfaceC2611s interfaceC2611s) {
        this.f879b = interfaceC2611s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f878a) {
            case 3:
                ((InterfaceC2838m3) this.f879b).accept((InterfaceC2838m3) obj);
                return;
            default:
                ((List) this.f879b).add(obj);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f878a) {
            case 3:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.function.InterfaceC2590r
    public Object apply(long j) {
        int i = C2659H1.f748k;
        return AbstractC2903x2.m326d(j, (InterfaceC2585m) this.f879b);
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public Object get() {
        switch (this.f878a) {
            case 0:
                return (InterfaceC2611s) this.f879b;
            default:
                return ((AbstractC2774c) this.f879b).m452D0();
        }
    }

    public /* synthetic */ C2768b(InterfaceC2585m interfaceC2585m) {
        this.f879b = interfaceC2585m;
    }

    public /* synthetic */ C2768b(AbstractC2774c abstractC2774c) {
        this.f879b = abstractC2774c;
    }
}

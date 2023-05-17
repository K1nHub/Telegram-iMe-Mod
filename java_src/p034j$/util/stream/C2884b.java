package p034j$.util.stream;

import java.util.List;
import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2691c;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2706r;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2884b implements InterfaceC2713y, InterfaceC2706r, Consumer, InterfaceC2691c {

    /* renamed from: a */
    public final /* synthetic */ int f882a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f883b;

    public /* synthetic */ C2884b(InterfaceC2727s interfaceC2727s) {
        this.f883b = interfaceC2727s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f882a) {
            case 3:
                ((InterfaceC2954m3) this.f883b).accept((InterfaceC2954m3) obj);
                return;
            default:
                ((List) this.f883b).add(obj);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f882a) {
            case 3:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.function.InterfaceC2706r
    public Object apply(long j) {
        int i = C2775H1.f752k;
        return AbstractC3019x2.m311d(j, (InterfaceC2701m) this.f883b);
    }

    @Override // p034j$.util.function.InterfaceC2713y
    public Object get() {
        switch (this.f882a) {
            case 0:
                return (InterfaceC2727s) this.f883b;
            default:
                return ((AbstractC2890c) this.f883b).m437D0();
        }
    }

    public /* synthetic */ C2884b(InterfaceC2701m interfaceC2701m) {
        this.f883b = interfaceC2701m;
    }

    public /* synthetic */ C2884b(AbstractC2890c abstractC2890c) {
        this.f883b = abstractC2890c;
    }
}

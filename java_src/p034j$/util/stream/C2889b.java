package p034j$.util.stream;

import java.util.List;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2696c;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2711r;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2889b implements InterfaceC2718y, InterfaceC2711r, Consumer, InterfaceC2696c {

    /* renamed from: a */
    public final /* synthetic */ int f882a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f883b;

    public /* synthetic */ C2889b(InterfaceC2732s interfaceC2732s) {
        this.f883b = interfaceC2732s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f882a) {
            case 3:
                ((InterfaceC2959m3) this.f883b).accept((InterfaceC2959m3) obj);
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

    @Override // p034j$.util.function.InterfaceC2711r
    public Object apply(long j) {
        int i = C2780H1.f752k;
        return AbstractC3024x2.m311d(j, (InterfaceC2706m) this.f883b);
    }

    @Override // p034j$.util.function.InterfaceC2718y
    public Object get() {
        switch (this.f882a) {
            case 0:
                return (InterfaceC2732s) this.f883b;
            default:
                return ((AbstractC2895c) this.f883b).m437D0();
        }
    }

    public /* synthetic */ C2889b(InterfaceC2706m interfaceC2706m) {
        this.f883b = interfaceC2706m;
    }

    public /* synthetic */ C2889b(AbstractC2895c abstractC2895c) {
        this.f883b = abstractC2895c;
    }
}

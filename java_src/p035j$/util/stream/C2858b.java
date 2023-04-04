package p035j$.util.stream;

import java.util.List;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2665c;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2680r;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2858b implements InterfaceC2687y, InterfaceC2680r, Consumer, InterfaceC2665c {

    /* renamed from: a */
    public final /* synthetic */ int f884a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f885b;

    public /* synthetic */ C2858b(InterfaceC2701s interfaceC2701s) {
        this.f885b = interfaceC2701s;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f884a) {
            case 3:
                ((InterfaceC2928m3) this.f885b).accept((InterfaceC2928m3) obj);
                return;
            default:
                ((List) this.f885b).add(obj);
                return;
        }
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f884a) {
            case 3:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p035j$.util.function.InterfaceC2680r
    public Object apply(long j) {
        int i = C2749H1.f754k;
        return AbstractC2993x2.m320d(j, (InterfaceC2675m) this.f885b);
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public Object get() {
        switch (this.f884a) {
            case 0:
                return (InterfaceC2701s) this.f885b;
            default:
                return ((AbstractC2864c) this.f885b).m446D0();
        }
    }

    public /* synthetic */ C2858b(InterfaceC2675m interfaceC2675m) {
        this.f885b = interfaceC2675m;
    }

    public /* synthetic */ C2858b(AbstractC2864c abstractC2864c) {
        this.f885b = abstractC2864c;
    }
}

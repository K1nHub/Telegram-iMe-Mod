package p034j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3063I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1146a;

    private /* synthetic */ C3063I0(Collector collector) {
        this.f1146a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3063I0 m211d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3065J0 ? ((AbstractC3065J0) collector).f1148a : new C3063I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m214a() {
        return C3118q.m107a(this.f1146a.accumulator());
    }

    /* renamed from: b */
    public Set m213b() {
        return this.f1146a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2695b m212c() {
        return C3126u.m98a(this.f1146a.combiner());
    }

    /* renamed from: e */
    public Function m210e() {
        return C3068L.m189a(this.f1146a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2718y m209f() {
        return C3135y0.m89a(this.f1146a.supplier());
    }
}

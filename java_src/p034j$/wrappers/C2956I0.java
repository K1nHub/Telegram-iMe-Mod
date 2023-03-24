package p034j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2956I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1143a;

    private /* synthetic */ C2956I0(Collector collector) {
        this.f1143a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C2956I0 m225d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC2958J0 ? ((AbstractC2958J0) collector).f1145a : new C2956I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m228a() {
        return C3011q.m121a(this.f1143a.accumulator());
    }

    /* renamed from: b */
    public Set m227b() {
        return this.f1143a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2588b m226c() {
        return C3019u.m112a(this.f1143a.combiner());
    }

    /* renamed from: e */
    public Function m224e() {
        return C2961L.m203a(this.f1143a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2611y m223f() {
        return C3028y0.m103a(this.f1143a.supplier());
    }
}

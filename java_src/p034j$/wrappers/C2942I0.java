package p034j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2942I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1142a;

    private /* synthetic */ C2942I0(Collector collector) {
        this.f1142a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C2942I0 m226d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC2944J0 ? ((AbstractC2944J0) collector).f1144a : new C2942I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m229a() {
        return C2997q.m122a(this.f1142a.accumulator());
    }

    /* renamed from: b */
    public Set m228b() {
        return this.f1142a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2574b m227c() {
        return C3005u.m113a(this.f1142a.combiner());
    }

    /* renamed from: e */
    public Function m225e() {
        return C2947L.m204a(this.f1142a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2597y m224f() {
        return C3014y0.m104a(this.f1142a.supplier());
    }
}

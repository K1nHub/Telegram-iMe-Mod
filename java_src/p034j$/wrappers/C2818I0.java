package p034j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2818I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1137a;

    private /* synthetic */ C2818I0(Collector collector) {
        this.f1137a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C2818I0 m226d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC2820J0 ? ((AbstractC2820J0) collector).f1139a : new C2818I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m229a() {
        return C2873q.m122a(this.f1137a.accumulator());
    }

    /* renamed from: b */
    public Set m228b() {
        return this.f1137a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2450b m227c() {
        return C2881u.m113a(this.f1137a.combiner());
    }

    /* renamed from: e */
    public Function m225e() {
        return C2823L.m204a(this.f1137a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2473y m224f() {
        return C2890y0.m104a(this.f1137a.supplier());
    }
}

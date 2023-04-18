package p034j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3019I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1143a;

    private /* synthetic */ C3019I0(Collector collector) {
        this.f1143a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3019I0 m206d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3021J0 ? ((AbstractC3021J0) collector).f1145a : new C3019I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m209a() {
        return C3074q.m102a(this.f1143a.accumulator());
    }

    /* renamed from: b */
    public Set m208b() {
        return this.f1143a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2651b m207c() {
        return C3082u.m93a(this.f1143a.combiner());
    }

    /* renamed from: e */
    public Function m205e() {
        return C3024L.m184a(this.f1143a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2674y m204f() {
        return C3091y0.m84a(this.f1143a.supplier());
    }
}

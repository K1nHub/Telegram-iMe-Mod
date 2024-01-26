package p033j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3169F0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1273a;

    private /* synthetic */ C3169F0(Collector collector) {
        this.f1273a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3169F0 m285d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3171G0 ? ((AbstractC3171G0) collector).f1275a : new C3169F0(collector);
    }

    /* renamed from: a */
    public BiConsumer m288a() {
        return C3227q.m178a(this.f1273a.accumulator());
    }

    /* renamed from: b */
    public Set m287b() {
        return this.f1273a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2811b m286c() {
        return C3233t.m172a(this.f1273a.combiner());
    }

    /* renamed from: e */
    public Function m284e() {
        return C$r8$wrapper$java$util$function$Function$VWRP.convert(this.f1273a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2833x m283f() {
        return C3238v0.m167a(this.f1273a.supplier());
    }
}
